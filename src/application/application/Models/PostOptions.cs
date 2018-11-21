using kodex.Application.Interfaces;
using System;
using System.Collections.Generic;
using System.Text;

namespace kodex.Application.Models
{
    public class PostOptions : IPostOptions
    {
        public string Author { get; set; }
        public DateTime? StartDate { get; set; }
    }
}
