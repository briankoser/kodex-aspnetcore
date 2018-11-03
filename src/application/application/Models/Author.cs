using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace kodex.Application.Models
{
    public class Author
    {
        public string AuthorIDs { get; set; }
        public string ShortName { get; set; }
        public string LongName { get; set; }

        public List<int> IDs
        {
            get
            {
                return new List<string>(AuthorIDs.Split(',')).Select(x => Int32.Parse(x)).ToList();
            }
        }
    }
}
