﻿using kodex.Application.Interfaces;
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

        public async Task<List<Author>> GetAuthorsAsync()
        {
            string query = @"SELECT id, firstname AS shortname, fullname 
                               FROM dbo.Author;";
            return (await QueryAsync<Author>(query)).ToList();
        }

        public async Task<Post> GetByIDAsync(int id)
        {
            string query = "SELECT * FROM dbo.Posts WHERE ID = @ID";
            //return QueryFirstOrDefaultAsync<Post>(query, new { ID = id });
            return (await QueryAsync<Post, PostType, Authors, Post>(
                query,
                (post, postType, authors) => { post.PostType = postType; post.Authors = authors; return post; },
                parameters: new { id },
                splitOn: "PostTypeID,AuthorIDs")).FirstOrDefault();
        }

        public async Task<Post> GetByUrlAsync(int year, int month, int day, int datePublishedID)
        {
            string query = @"SELECT * 
                               FROM dbo.Posts 
                              WHERE year(datepublished) = @Year
                                AND month(datepublished) = @Month
                                AND day(datepublished) = @Day
                                AND datepublishedid = @DatePublishedID
                                AND ispublic = 1;";
            return (await QueryAsync<Post, PostType, Authors, Post>(
                query,
                (post, postType, authors) => { post.PostType = postType; post.Authors = authors; return post; },
                parameters: new { Year = year, Month = month, Day = day, DatePublishedID = datePublishedID },
                splitOn: "PostTypeID,AuthorIDs")).FirstOrDefault();
        }

        public async Task<List<Post>> GetAllAsync()
        {
            string query = @"SELECT * 
                               FROM dbo.Posts 
                              ORDER BY (CASE WHEN datepublished IS NULL THEN 0 ELSE 1 END), datepublished DESC, title;";
            return (await QueryAsync<Post, PostType, Authors, Post>(
                query,
                (post, postType, authors) => { post.PostType = postType; post.Authors = authors; return post; },
                splitOn: "PostTypeID,AuthorIDs")).ToList();
        }

        public async Task<List<Post>> GetByOptionsAsync(IPostOptions options)
        {
            string query = @"SELECT * 
                               FROM dbo.Posts 
                              WHERE (datepublished >= @StartDate OR @StartDate IS NULL)
                                AND (posttypeurl = @Category OR @Category = 'all')
                                AND (YEAR(datepublished) = @Year OR @Year IS NULL)
                                AND (MONTH(datepublished) = @Month OR @Month IS NULL)
                                AND (DAY(datepublished) = @Day OR @Day IS NULL)
                                AND (lower(shortnames) LIKE '%' + @Author + '%' OR @Author = 'all')
                                AND ispublic = 1
                              ORDER BY datepublished DESC;";
            return (await QueryAsync<Post, PostType, Authors, Post>(
                query,
                (post, postType, authors) => { post.PostType = postType; post.Authors = authors; return post; },
                parameters: new { options.StartDate, options.Category, options.Year, options.Month, options.Day, options.Author, },
                splitOn: "PostTypeID,AuthorIDs")).ToList();
        }

        public async Task<bool> DeletePostAsync(Post post)
        {
            if (post == null)
            {
                throw new ArgumentNullException(nameof(post));
            }

            string storedProcedure = "dbo.sp_DeletePost";
            var parameters = new
            {
                id = post.ID
            };

            int rows = await ExecuteStoredProcedureAsync(storedProcedure, parameters);

            return rows > 0;
        }

        public async Task<bool> InsertPostAsync(Post post)
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
                    authors = post.Authors.AuthorIDs
                };

            int rows = await ExecuteStoredProcedureAsync(storedProcedure, parameters);

            return rows > 0;
        }

        public async Task<bool> UpdatePostAsync(Post post)
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
                authors = post.Authors.AuthorIDs
            };

            int rows = await ExecuteStoredProcedureAsync(storedProcedure, parameters);

            return rows > 0;
        }
    }
}
