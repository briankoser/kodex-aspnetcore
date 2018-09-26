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
        Task<List<Post>> GetByOptions(IPostOptions options);
    }
}
