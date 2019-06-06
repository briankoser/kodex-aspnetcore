using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using kodex.Application.Interfaces;
using kodex.Application.Models;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Authorization;

namespace kodex.Pages
{
    [Authorize]
    public class AdminPostsModel : PageModel
    {
        private IPostsRepository _postsRepository;

        public List<Post> Posts { get; set; }

        public AdminPostsModel(IPostsRepository postsRepository)
        {
            _postsRepository = postsRepository;
        }

        public async Task OnGetAsync()
        {
            Posts = await _postsRepository.GetAll();
        }
    }
}
