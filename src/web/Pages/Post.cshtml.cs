using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using kodex.Application.Interfaces;
using kodex.Application.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Web.Pages
{
    public class PostModel : PageModel
    {
        private IPostsRepository _postsRepository;

        public Post Post { get; set; }

        public PostModel(IPostsRepository postsRepository)
        {
            _postsRepository = postsRepository;
        }

        public async Task OnGetAsync(int year, int month, int day, int datePublishedID)
        {
            Post = await _postsRepository.GetByUrl(year, month, day, datePublishedID);
        }
    }
}