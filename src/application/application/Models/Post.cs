using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace kodex.Application.Models
{
    public class Post
    {
        private const string DateFormat = "{0:yyyy-MM-dd}";

        public int ID { get; set; }
        public PostType PostType { get; set; }
        public Author Author { get; set; }
        public string Title { get; set; }

        [Display(Name = "URL")]
        public string Slug { get; set; }
        public string Url { get; set; }
        public string Body { get; set; }
        public string BodyText { get; set; }
        public string BodyProcessed { get; set; }
        public string Description { get; set; }

        [Display(Name = "Publish Date")]
        [DisplayFormat(DataFormatString = DateFormat)]
        public DateTimeOffset? DatePublished { get; set; }
        
        public int? DatePublishedID { get; set; }

        [DisplayFormat(DataFormatString = DateFormat)]
        public DateTimeOffset? DateLastUpdated { get; set; }
        public string DateLastUpdatedMessage
        {
            get
            {
                return DateLastUpdated == null ? "" : $"(Last updated {String.Format(DateFormat, DateLastUpdated)})";
            }
        }

        public string Excerpt { get; set; }

        [Display(Name = "Header Image URL")]
        public string ImageUrl { get; set; }

        [Display(Name = "Publish?")]
        public bool IsPublic { get; set; }

        public IList<Tag> Tags { get; set; }
    }
}
