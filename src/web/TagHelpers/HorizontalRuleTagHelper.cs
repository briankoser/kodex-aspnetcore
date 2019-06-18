using Microsoft.AspNetCore.Mvc.TagHelpers;
using Microsoft.AspNetCore.Razor.TagHelpers;
using System.Text.Encodings.Web;

namespace Web.TagHelpers
{
    [HtmlTargetElement("kodex-hr")]
    public class HorizontalRuleTagHelper : TagHelper
    {
        public override void Process(TagHelperContext context, TagHelperOutput output)
        {
            output.TagName = "div";
            output.AddClass("hr-container", HtmlEncoder.Default);

            var content =
                $@"<svg xmlns=""http://www.w3.org/2000/svg"" version=""1.1"" viewBox=""0 0 360 40"" class=""hr-image"">
                       <circle cx=""20"" cy=""20"" r=""20"" style=""fill:#000000"" />
                       <circle cx=""100""  cy=""20"" r=""20"" style=""fill:#000000"" />
                       <circle cx=""180"" cy=""20"" r=""20"" style=""fill:#000000"" />
                       <circle cx=""260"" cy=""20"" r=""20"" style=""fill:#000000"" />
                       <circle cx=""340"" cy=""20"" r=""20"" style=""fill:#000000"" />
                   </svg>
                   <hr class=""visuallyhidden"">";
            output.Content.SetHtmlContent(content);
        }
    }
}
