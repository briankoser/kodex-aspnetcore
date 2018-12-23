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
        public string Slug { get; set; }
        public string Url { get; set; }
        public string Body { get; set; }
        public string BodyRaw { get; set; }
        public string Description { get; set; }

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
        public string ImageUrl { get; set; }
        public bool IsPublic { get; set; }

        public IList<Tag> Tags { get; set; }
    }
}
