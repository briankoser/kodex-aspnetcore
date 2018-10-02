using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;

namespace kodex.Application.Models
{
    public class Post
    {
        public int ID { get; set; }
        public PostType PostType { get; set; }
        public string Title { get; set; }
        public string Slug { get; set; }
        public string PostUrl { get; set; }
        public string Body { get; set; }
        public string BodyRaw { get; set; }
        public string Description { get; set; }

        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}")]
        public DateTimeOffset? DatePublished { get; set; }

        public int? DatePublishedID { get; set; }

        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}")]
        public DateTimeOffset? DateLastUpdated { get; set; }

        public string Excerpt { get; set; }
        public string ImageUrl { get; set; }
        public bool IsPublic { get; set; }

        public IList<Author> Authors { get; set; }
        public IList<Tag> Tags { get; set; }

        public string AuthorsString => String.Join(", ", Authors.Select(author => author.FirstName));
    }
}
