using System;
using System.Collections.Generic;
using System.Linq;
using System.Globalization;
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

        public string Title { get; set; }
        public List<Post> Posts { get; set; }

        public PostsPageModel(IPostsRepository postsRepository)
        {
            _postsRepository = postsRepository;
        }

        public async Task OnGetAsync(string author, string category, int? year, int? month, int? day)
        {
            string categoryString = String.IsNullOrEmpty(category) ? "all" : category;
            
            options = new PostOptions()
            {
                Author = author,
                Category = categoryString,
                Year = year,
                Month = month,
                Day = day,
                StartDate = null
            };

            Title = $"{ToTitleCase(categoryString)} by {ToTitleCase(author)} ({year}-{month}-{day})";
            Posts = await _postsRepository.GetByOptions(options);

            ViewData["Title"] = Title;
        }

        private string ToTitleCase(string s)
        {
            return new CultureInfo("en-US", false).TextInfo.ToTitleCase(s);
        }
    }
}
