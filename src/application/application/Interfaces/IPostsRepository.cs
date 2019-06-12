using kodex.Application.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace kodex.Application.Interfaces
{
    public interface IPostsRepository
    {
        Task<List<Author>> GetAuthorsAsync();
        Task<Post> GetByIDAsync(int id);
        Task<Post> GetByUrlAsync(int year, int month, int day, int datePublishedID);
        Task<List<Post>> GetAllAsync();
        Task<List<Post>> GetByOptionsAsync(IPostOptions options);
        Task<bool> DeletePostAsync(Post post);
        Task<bool> InsertPostAsync(Post post);
        Task<bool> UpdatePostAsync(Post post);
    }
}
