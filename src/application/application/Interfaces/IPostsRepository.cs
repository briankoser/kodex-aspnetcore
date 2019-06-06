using kodex.Application.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace kodex.Application.Interfaces
{
    public interface IPostsRepository
    {
        Task<Post> GetByID(int id);
        Task<Post> GetByUrl(int year, int month, int day, int datePublishedID);
        Task<List<Post>> GetAll();
        Task<List<Post>> GetByOptions(IPostOptions options);
        Task<bool> InsertPost(Post post);
        Task<bool> UpdatePost(Post post);
    }
}
