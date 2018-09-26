using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using kodex.Application.Interfaces;
using kodex.Application.Models;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace kodex.Pages
{
    public class PostsPageModel : PageModel
    {
        private IPostsRepository _postsRepository;
        private PostOptions options;

        public string Message { get; set; }
        public List<Post> Posts { get; set; }

        public PostsPageModel(IPostsRepository postsRepository)
        {
            _postsRepository = postsRepository;
        }

        public async Task OnGetAsync()
        {
            options = new PostOptions()
            {
                StartDate = null
            };

            Message = "All the posts";
            Posts = await _postsRepository.GetByOptions(options);
        }
    }
}
