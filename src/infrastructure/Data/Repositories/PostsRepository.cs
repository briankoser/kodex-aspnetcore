using Dapper;
using kodex.Application.Interfaces;
using kodex.Application.Models;
using Microsoft.Extensions.Configuration;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
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
                // todo: store in secrets.json, etc
                return new SqlConnection("Server=70.32.29.130;Database=kodexdb;User ID=koserus_kodex;Password=Rd\\_yGRXgke*Ys+mua2s|d1Lg_P|Fm0e;MultipleActiveResultSets=true"); //_configuration.GetConnectionString("KodexDB"));
            }
        }

        public async Task<Post> GetByID(int id)
        {
            //todo: abstract data access library over dapper
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
                                 WHERE (datepublished >= @StartDate OR @StartDate IS NULL);";
                conn.Open();
                var result = await conn.QueryAsync<Post, PostType, Post>(
                    query,
                    (post, postType) => { post.PostType = postType; post.Authors = new List<Author>(); post.Authors.Add(new Author() { ID = 1, FirstName = "Toby", FullName = "Toby Flenderson" }); return post; },
                    param: new { options.StartDate },
                    splitOn: "PostTypeID");


                return result.ToList();

                //var results = cnn.QueryMultiple("select * from Courses where Category = 1 Order by CreationDate; select A.*, B.CourseId from Locations A Inner Join CourseLocations B on A.LocationId = B.LocationId Inner Join Course C On B.CourseId = B.CourseId And C.Category = 1");

                //var courses = results.Read<Course>();
                //var locations = results.Read<Location>(); //(Location will have that extra CourseId on it for the next part)
                //foreach (var course in courses)
                //{
                //    course.Locations = locations.Where(a => a.CourseId == course.CourseId).ToList();
                //}

                // $"/{post.PostType.Code}/{post.DatePublished.Value.Year}/{post.DatePublished.Value.Mon☻th}/{post.DatePublished.Value.Day}/{post.DatePublishedID}/{post.Slug}";
            }
        }
    }
}
