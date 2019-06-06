using kodex.Application.Interfaces;
using kodex.Application.Models;
using kodex.Infrastructure.Data.Repositories;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace kodex.Infrastructure.Data.DBAccess
{
    public class PostsRepository : SqlRepository, IPostsRepository
    {
        public PostsRepository(ISqlDataSourceConfig config, ILogger<PostsRepository> logger)
            : base(config.SqlServerConnectionString, logger)
        {
        }

        public Task<Post> GetByID(int id)
        {
            string query = "SELECT * FROM dbo.Posts WHERE ID = @ID";
            return QueryFirstOrDefaultAsync<Post>(query, new { ID = id });
        }

        public async Task<Post> GetByUrl(int year, int month, int day, int datePublishedID)
        {
            string query = @"SELECT * 
                               FROM dbo.Posts 
                              WHERE year(datepublished) = @Year
                                AND month(datepublished) = @Month
                                AND day(datepublished) = @Day
                                AND datepublishedid = @DatePublishedID
                                AND ispublic = 1;";
            return (await QueryAsync<Post, PostType, Author, Post>(
                query,
                (post, postType, author) => { post.PostType = postType; post.Author = author; return post; },
                parameters: new { Year = year, Month = month, Day = day, DatePublishedID = datePublishedID },
                splitOn: "PostTypeID,AuthorIDs")).FirstOrDefault();
        }

        public async Task<List<Post>> GetAll()
        {
            string query = @"SELECT * 
                               FROM dbo.Posts 
                              ORDER BY datepublished DESC, title;";
            return (await QueryAsync<Post, PostType, Author, Post>(
                query,
                (post, postType, author) => { post.PostType = postType; post.Author = author; return post; },
                splitOn: "PostTypeID,AuthorIDs")).ToList();
        }

        public async Task<List<Post>> GetByOptions(IPostOptions options)
        {
            string query = @"SELECT * 
                               FROM dbo.Posts 
                              WHERE (datepublished >= @StartDate OR @StartDate IS NULL)
                                AND (posttypeurl = @Category OR @Category = 'all')
                                AND (YEAR(datepublished) = @Year OR @Year IS NULL)
                                AND (MONTH(datepublished) = @Month OR @Month IS NULL)
                                AND (DAY(datepublished) = @Day OR @Day IS NULL)
                                AND (lower(shortname) LIKE '%' + @Author + '%' OR @Author = 'all')
                                AND ispublic = 1
                              ORDER BY datepublished DESC;";
            return (await QueryAsync<Post, PostType, Author, Post>(
                query,
                (post, postType, author) => { post.PostType = postType; post.Author = author; return post; },
                parameters: new { options.StartDate, options.Category, options.Year, options.Month, options.Day, options.Author, },
                splitOn: "PostTypeID,AuthorIDs")).ToList();
        }

        public async Task<bool> InsertPost(Post post)
        {
            if (post == null)
            {
                throw new ArgumentNullException(nameof(post));
            }

            string storedProcedure = "dbo.sp_InsertPost";
            var parameters = new
                {
                    postTypeID = post.PostType.PostTypeID,
                    title = post.Title,
                    slug = post.Slug,
                    body = post.Body,
                    bodyText = post.BodyText,
                    bodyProcessed = post.BodyProcessed,
                    description = post.Description,
                    datePublished = post.DatePublished,
                    excerpt = post.Excerpt,
                    imageUrl = post.ImageUrl,
                    isPublic = post.IsPublic,
                    authors = post.Author.AuthorIDs
                };

            int rows = await ExecuteStoredProcedureAsync(storedProcedure, parameters);

            return rows > 0;
        }

        public async Task<bool> UpdatePost(Post post)
        {
            if (post == null)
            {
                throw new ArgumentNullException(nameof(post));
            }

            string storedProcedure = "dbo.sp_UpdatePost";
            var parameters = new
            {
                id = post.ID,
                title = post.Title,
                slug = post.Slug,
                body = post.Body,
                bodyText = post.BodyText,
                bodyProcessed = post.BodyProcessed,
                description = post.Description,
                datePublished = post.DatePublished,
                excerpt = post.Excerpt,
                imageUrl = post.ImageUrl,
                isPublic = post.IsPublic,
                authors = post.Author.AuthorIDs
            };

            int rows = await ExecuteStoredProcedureAsync(storedProcedure, parameters);

            return rows > 0;
        }
    }
}
