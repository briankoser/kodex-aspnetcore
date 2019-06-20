using kodex.Application.Interfaces;
using kodex.Application.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace kodex.Pages
{
    [Authorize]
    [BindProperties]
    public class AdminPostModel : PageModel
    {
        private readonly UserManager<User> _userManager;
        private IPostsRepository _postsRepository;

        public IEnumerable<SelectListItem> Authors { get; set; }
        public Post Post { get; set; }



        public AdminPostModel(UserManager<User> userManager, IPostsRepository postsRepository)
        {
            _userManager = userManager;
            _postsRepository = postsRepository;
        }

        public async Task OnGetAsync(int? id)
        {
            var authors = await _postsRepository.GetAuthorsAsync();

            if (id.HasValue)
            {
                Post = await _postsRepository.GetByIDAsync(id.Value);
                Authors = authors
                    .Select(a => new SelectListItem(a.ShortName, a.ID.ToString(), Post.Authors.IDs.Contains(a.ID)));
                ViewData["Title"] = $"Update \"{Post.Title}\"";
            }
            else
            {
                var user = await _userManager.GetUserAsync(User);
                Authors = authors
                    .Select(a => new SelectListItem(a.ShortName, a.ID.ToString(), a.ShortName == user.DisplayName));
                ViewData["Title"] = "New";
            }

        }

        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
            {
                ViewData["Title"] = "Error";
                return Page();
            }

            // todo: process body, store in BodyProcessed
            string bodyProcessed = Post.Body;
            Post.BodyProcessed = bodyProcessed;

            var authorIds = String.Join(',', Authors.Where(a => a.Selected).Select(a => a.Value));
            Post.Authors = new Authors() { AuthorIDs = authorIds };

            if (Post.ID.HasValue)
            {
                await _postsRepository.UpdatePostAsync(Post);
            }
            else
            {
                Post.PostType = new PostType()
                {
                    PostTypeID = 1
                };

                if (Post.IsPublic)
                {
                    Post.DatePublished = DateTimeOffset.Now;
                }

                await _postsRepository.InsertPostAsync(Post);
            }

            return RedirectToPage("/admin/posts");
        }
    }
}