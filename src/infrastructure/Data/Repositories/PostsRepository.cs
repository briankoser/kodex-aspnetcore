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
        //private readonly IConfiguration _configuration;

        public PostsRepository(ISqlDataSourceConfig config, ILogger<PostsRepository> logger)
            : base(config.SqlServerConnectionString, logger)
        {
        }

        //public IDbConnection Connection
        //{
        //    get
        //    {
        //        // todo: store in secrets.json, etc
        //        return new SqlConnection("Server=70.32.29.130;Database=kodexdb;User ID=koserus_kodex;Password=Rd\\_yGRXgke*Ys+mua2s|d1Lg_P|Fm0e;MultipleActiveResultSets=true"); //_configuration.GetConnectionString("KodexDB"));
        //    }
        //}

        //public async Task<Post> GetByID(int id)
        //{
        //    //todo: abstract data access library over dapper
        //    using (IDbConnection conn = Connection)
        //    {
        //        string query = "SELECT * FROM dbo.Posts WHERE ID = @ID";
        //        conn.Open();
        //        var result = await conn.QueryFirstOrDefaultAsync<Post>(query, new { ID = id });
        //        return result;
        //    }
        //}

        public Task<Post> GetByID(int id)
        {
            string query = "SELECT * FROM dbo.Posts WHERE ID = @ID";
            return QueryFirstOrDefaultAsync<Post>(query, new { ID = id });
        }

        //public async Task<List<Post>> GetByOptions(IPostOptions options)
        //{
        //    using (IDbConnection conn = Connection)
        //    {
        //        string query = @"SELECT * 
        //                         FROM dbo.Posts 
        //                         WHERE (datepublished >= @StartDate OR @StartDate IS NULL);";
        //        conn.Open();
        //        var result = (await conn.QueryAsync<Post, PostType, Author, Post>(
        //            query,
        //            (post, postType, author) => { post.PostType = postType; post.Author = author; return post; },
        //            param: new { options.StartDate },
        //            splitOn: "PostTypeID,AuthorIDs"));

        //        return result.ToList();
        //    }
        //}

        public async Task<List<Post>> GetByOptions(IPostOptions options)
        {
            string query = @"SELECT * 
                                FROM dbo.Posts 
                               WHERE (datepublished >= @StartDate OR @StartDate IS NULL);";
            return (await QueryAsync<Post, PostType, Author, Post>(
                query,
                (post, postType, author) => { post.PostType = postType; post.Author = author; return post; },
                param: new { options.StartDate },
                splitOn: "PostTypeID,AuthorIDs")).ToList();
        }
    }
}
