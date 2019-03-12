using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using kodex.Application.Interfaces;
using Microsoft.AspNetCore.Identity.UI.Services;

namespace kodex.Infrastructure.Services
{
    public class EmailSender : IEmailSender
    {
        public Task SendEmailAsync(string email, string subject, string htmlMessage)
        {
            // todo: send emails; SendGrid? https://go.microsoft.com/fwlink/?LinkID=532713
            return Task.CompletedTask;
        }
    }
}
