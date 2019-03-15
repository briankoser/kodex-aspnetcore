using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using kodex.Application.Interfaces;
using kodex.Application.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Web.Pages
{
    [Authorize]
    public class NewModel : PageModel
    {
        private IPostsRepository _postsRepository;

        public NewModel(IPostsRepository postsRepository)
        {
            _postsRepository = postsRepository;
        }

        public void OnGet()
        {
            var post = new Post()
            {
                PostType = new PostType()
                {
                    PostTypeID = 1
                },
                Title = "test",
                Slug = "tracer-bullet-test",
                Body = "test body",
                BodyRaw = null,
                Description = "test description",
                DatePublished = new DateTimeOffset(),
                Excerpt = "test excerpt",
                ImageUrl = null,
                IsPublic = false,
                Author = new Author()
                {
                    AuthorIDs = "2"
                }
            };
            
            _postsRepository.InsertPost(post);
        }
    }
}