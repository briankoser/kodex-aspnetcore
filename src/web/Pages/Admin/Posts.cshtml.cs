using kodex.Application.Interfaces;
using kodex.Application.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System.Collections.Generic;
using System.Threading.Tasks;

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
            Posts = await _postsRepository.GetAllAsync();
        }

        public async Task<IActionResult> OnPostDelete(int id)
        {
            await _postsRepository.DeletePostAsync(new Post() { ID = id });
            return RedirectToPage("/admin/posts");
        }
    }
}
