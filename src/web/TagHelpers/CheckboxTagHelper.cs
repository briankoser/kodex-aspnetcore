using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Razor.TagHelpers;
using Microsoft.AspNetCore.Mvc.TagHelpers;
using System.Text.Encodings.Web;

namespace Web.TagHelpers
{
    [HtmlTargetElement("input-checkbox", Attributes = "id, label")]
    public class CheckboxTagHelper : TagHelper
    {
        /// <summary>
        /// The ID and name of the input element.
        /// </summary>
        public string ID { get; set; }

        /// <summary>
        /// The text of the label element.
        /// </summary>
        public string Label { get; set; }

        public override void Process(TagHelperContext context, TagHelperOutput output)
        {
            output.TagName = "div";
            output.AddClass("c-check-field", HtmlEncoder.Default);

            var content = 
                $@"<input type='checkbox' name='{ID}' id='{ID}' class='c-check-field__input' />
                   <label for='{ID}' class='c-check-field__decor' aria-hidden='true' role='presentation'></label>
                   <label for='{ID}' class='c-check-field__label'>{Label}</label>";
            output.Content.SetHtmlContent(content);
        }
    }
}
