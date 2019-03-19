﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
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
    [BindProperties]
    public class NewPostModel : PageModel
    {
        //PostTypeID = 1

        public string Title { get; set; }

        [Display(Name = "URL")]
        public string Slug { get; set; }

        public string Body { get; set; }

        public string Description { get; set; }

        [Display(Name = "Publish Date")]
        public DateTime DatePublished { get; set; }

        public string Excerpt { get; set; }

        [Display(Name = "Header Image URL")]
        public string ImageUrl { get; set; }

        [Display(Name = "Publish?")]
        public bool IsPublic { get; set; }

        //AuthorIDs = "2"

        
        
        private IPostsRepository _postsRepository;

        public NewPostModel(IPostsRepository postsRepository)
        {
            _postsRepository = postsRepository;
        }

        public void OnPost()
        {
            var post = new Post()
            {
                PostType = new PostType()
                {
                    PostTypeID = 1
                },
                Title = Title,
                Slug = Slug,
                Body = Body,
                BodyRaw = null,
                Description = Description,
                DatePublished = DatePublished,
                Excerpt = Excerpt,
                ImageUrl = ImageUrl,
                IsPublic = IsPublic,
                Author = new Author()
                {
                    AuthorIDs = "2"
                }
            };

            _postsRepository.InsertPost(post);
        }
    }
}