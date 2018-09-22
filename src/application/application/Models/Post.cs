using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations;

namespace kodex.Application.Models
{
    public class Post
    {
        public int ID { get; set; }
        public PostType PostType { get; set; }
        public string Title { get; set; }
        public string Slug { get; set; }
        public string Url { get; set; }
        public string Body { get; set; }
        public string BodyRaw { get; set; }
        public string Description { get; set; }
        public DateTime? DatePublished { get; set; }
        public int? DatePublishedID { get; set; }
        public DateTime? DateLastUpdated { get; set; }
        public string Excerpt { get; set; }
        public string ImageUrl { get; set; }
        public bool IsPublic { get; set; }
        public IList<Author> Authors { get; set; }
        public IList<Tag> Tags { get; set; }
    }
}
