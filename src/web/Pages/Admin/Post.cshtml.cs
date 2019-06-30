using kodex.Application.Interfaces;
using kodex.Application.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Hosting;
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
        private IHostingEnvironment _env;

        public IEnumerable<SelectListItem> Authors { get; set; }
        public Post Post { get; set; }



        public AdminPostModel(UserManager<User> userManager, IPostsRepository postsRepository, IHostingEnvironment env)
        {
            _userManager = userManager;
            _postsRepository = postsRepository;
            _env = env;
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

            Post.BodyProcessed = await ProcessBody(Post.Body);

            var authorIds = String.Join(',', Authors.Where(a => a.Selected).Select(a => a.Value));
            Post.Authors = new Authors() { AuthorIDs = authorIds };

            if (Post.ID.HasValue)
            {
                if (Post.IsPublic && Post.DatePublished == null)
                {
                    Post.DatePublished = DateTimeOffset.Now;
                }

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

        private async Task<string> ProcessBody(string body)
        {
            string processedBody = await InsertCustomHorizontalRule(body);
            return processedBody;
        }

        private async Task<string> InsertCustomHorizontalRule(string body)
        {
            string hrHtmlPath = System.IO.Path.Combine(_env.ContentRootPath, @"TagHelpers\Templates\HorizontalRuleTemplate.html");
            string hr = await System.IO.File.ReadAllTextAsync(hrHtmlPath);
            body = body.Replace("<hr class=\"hr-placeholder\">", hr);
            return body;
        }
    }
}