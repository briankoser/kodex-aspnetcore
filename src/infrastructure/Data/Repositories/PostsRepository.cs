using Dapper;
using kodex.Application.Interfaces;
using kodex.Application.Models;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace kodex.Infrastructure.Data.DBAccess
{
    public class PostsRepository : IPostsRepository
    {
        private readonly IConfiguration _configuration;

        public PostsRepository(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        public IDbConnection Connection
        {
            get
            {
                return new SqlConnection("Server=70.32.29.130;Database=kodexdb;User ID=koserus_kodex;Password=Rd\\_yGRXgke*Ys+mua2s|d1Lg_P|Fm0e;MultipleActiveResultSets=true"); //_configuration.GetConnectionString("KodexDB"));
            }
        }

        public async Task<Post> GetByID(int id)
        {
            using (IDbConnection conn = Connection)
            {
                string query = "SELECT * FROM dbo.Posts WHERE ID = @ID";
                conn.Open();
                var result = await conn.QueryFirstOrDefaultAsync<Post>(query, new { ID = id });
                return result;
            }
        }

        public async Task<List<Post>> GetByOptions(IPostOptions options)
        {
            using (IDbConnection conn = Connection)
            {
                string query = @"SELECT * 
                                 FROM dbo.Posts 
                                 WHERE (datepublished >= @StartDate OR @StartDate IS NULL)";
                conn.Open();
                var result = await conn.QueryAsync<Post>(query, new { options.StartDate });
                return result.ToList();
            }
        }
    }
}
