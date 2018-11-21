using kodex.Application.Interfaces;
using kodex.Application.Models;
using kodex.Infrastructure.Data.Repositories;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
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

        public async Task<List<Post>> GetByOptions(IPostOptions options)
        {
            string query = @"SELECT * 
                               FROM dbo.Posts 
                              WHERE (lower(shortname) LIKE '%' + @Author + '%' OR @Author = 'all')
                                AND (datepublished >= @StartDate OR @StartDate IS NULL)
                                AND ispublic = 1
                              ORDER BY datepublished DESC;";
            return (await QueryAsync<Post, PostType, Author, Post>(
                query,
                (post, postType, author) => { post.PostType = postType; post.Author = author; return post; },
                parameters: new { options.Author, options.StartDate },
                splitOn: "PostTypeID,AuthorIDs")).ToList();
        }
    }
}
