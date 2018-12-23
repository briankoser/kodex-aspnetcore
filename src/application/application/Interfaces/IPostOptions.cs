using System;
using System.Collections.Generic;
using System.Text;

namespace kodex.Application.Interfaces
{
    public interface IPostOptions
    {
        string Author { get; set; }
        string Category { get; set; }
        int? Year { get; set; }
        int? Month { get; set; }
        int? Day { get; set; }
        DateTime? StartDate { get; set; }
    }
}
