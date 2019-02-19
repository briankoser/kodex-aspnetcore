using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace kodex.Application.Models
{
    public class Role // Based on Microsoft.AspNetCore.Identity.IdentityRole. Cannot actually inherit because this is a Core project instead of Core MVC.
    {
        public string Id { get; set; }
        public string Name { get; set; }
        public string NormalizedName { get; set; }
        public string ConcurrencyStamp { get; set; }
    }
}
