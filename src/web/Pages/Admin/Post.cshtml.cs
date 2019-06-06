using kodex.Application.Interfaces;
using kodex.Application.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System;

namespace kodex.Pages
{
    [Authorize]
    [BindProperties]
    public class AdminPostModel : PageModel
    {
        public Post Post { get; set; }

        private IPostsRepository _postsRepository;

        public AdminPostModel(IPostsRepository postsRepository)
        {
            _postsRepository = postsRepository;
        }

        public async void OnGetAsync(int? id)
        {
            if (id.HasValue)
            {
                Post = await _postsRepository.GetByID(id.Value);
            }
        }

        public void OnPost()
        {
            // todo: process body, store in BodyProcessed
            string bodyProcessed = Post.Body;
            Post.BodyProcessed = bodyProcessed;

            // todo: add author dropdown, default to current user
            Post.Author = new Author()
            {
                AuthorIDs = "2"
            };

            if (Post.IsPublic)
            {
                Post.DatePublished = DateTimeOffset.Now;
            }

            if (Post.ID == 0)
            {
                Post.PostType = new PostType()
                {
                    PostTypeID = 1
                };

                _postsRepository.InsertPost(Post);
            }
            else
            {
                _postsRepository.UpdatePost(Post);
            }
        }
    }
}