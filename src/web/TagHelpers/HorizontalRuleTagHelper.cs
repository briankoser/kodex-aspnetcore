using Microsoft.AspNetCore.Razor.TagHelpers;
using System.IO;

namespace Web.TagHelpers
{
    [HtmlTargetElement("kodex-hr")]
    public class HorizontalRuleTagHelper : TagHelper
    {
        public override async void Process(TagHelperContext context, TagHelperOutput output)
        {
            string content = await File.ReadAllTextAsync("TagHelpers/Templates/HorizontalRuleTemplate.html");
            output.Content.SetHtmlContent(content);
        }
    }
}
