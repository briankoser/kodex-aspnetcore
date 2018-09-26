using kodex.Application.Interfaces;
using System;
using System.Collections.Generic;
using System.Text;

namespace kodex.Application.Models
{
    public class PostOptions : IPostOptions
    {
        public DateTime? StartDate { get; set; }
    }
}
