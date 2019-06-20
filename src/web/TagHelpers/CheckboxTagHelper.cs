using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Razor.TagHelpers;
using Microsoft.AspNetCore.Mvc.TagHelpers;
using System.Text.Encodings.Web;
using Microsoft.AspNetCore.Mvc.ViewFeatures;

namespace Web.TagHelpers
{
    [HtmlTargetElement("input-checkbox", Attributes = "label, asp-for", TagStructure = TagStructure.WithoutEndTag)]
    public class CheckboxTagHelper : TagHelper
    {
        public string Label { get; set; }

        [HtmlAttributeName("asp-for")]
        public ModelExpression For { get; set; }

        public override void Process(TagHelperContext context, TagHelperOutput output)
        {
            output.TagName = "div";
            output.AddClass("c-check-field", HtmlEncoder.Default);

            var content = 
                $@"<input type='checkbox' name='{For.Name}' id='{For.Name}' class='c-check-field__input' value='true' />
                   <input type='hidden' name='{For.Name}' value='false' />
                   <label for='{For.Name}' class='c-check-field__decor' aria-hidden='true' role='presentation'></label>
                   <label for='{For.Name}' class='c-check-field__label'>{Label}</label>";

            output.Content.SetHtmlContent(content);
            output.TagMode = TagMode.StartTagAndEndTag;
        }
    }
}
