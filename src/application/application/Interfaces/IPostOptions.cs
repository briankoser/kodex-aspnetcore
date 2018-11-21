using System;
using System.Collections.Generic;
using System.Text;

namespace kodex.Application.Interfaces
{
    public interface IPostOptions
    {
        string Author { get; set; }
        DateTime? StartDate { get; set; }
    }
}
