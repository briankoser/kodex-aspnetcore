using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace kodex.Application.Models
{
    public class Authors
    {
        public string AuthorIDs { get; set; }
        public string ShortNames { get; set; }
        public string LongNames { get; set; }

        public List<int> IDs
        {
            get
            {
                return new List<string>(AuthorIDs.Split(',')).Select(x => Int32.Parse(x)).ToList();
            }
        }
    }
}
