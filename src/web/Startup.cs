using kodex.Application.Interfaces;
using kodex.Application.Models;
using kodex.Application.Stores;
using kodex.Infrastructure.Data.DBAccess;
using kodex.Infrastructure.Services;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.UI.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using System;
using Web;

namespace kodex
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddTransient<IEmailSender, EmailSender>();
            services.AddTransient<IIdentityRepository, IdentityRepository>();
            services.AddTransient<IPostsRepository, PostsRepository>();
            services.AddTransient<IRoleStore<Role>, RoleStore>();
            services.AddTransient<ISqlDataSourceConfig, SqlDataSourceConfig>();
            services.AddTransient<IUserStore<User>, UserStore>();

            services.AddMvc()
                .SetCompatibilityVersion(CompatibilityVersion.Version_2_1)
                .AddRazorPagesOptions(options =>
                {
                    options.Conventions.AddPageRoute("/Admin/Post", "/new");
                    options.Conventions.AddPageRoute("/Posts", "/{author}/{category}");
                    options.Conventions.AddPageRoute("/Posts", "/{author}/{category}/{year:int}");
                    options.Conventions.AddPageRoute("/Posts", "/{author}/{category}/{year:int}/{month:int}");
                    options.Conventions.AddPageRoute("/Posts", "/{author}/{category}/{year:int}/{month:int}/{day:int}");
                    options.Conventions.AddPageRoute("/Posts", "/{author}/{year:int}");
                    options.Conventions.AddPageRoute("/Posts", "/{author}/{year:int}/{month:int}");
                    options.Conventions.AddPageRoute("/Posts", "/{author}/{year:int}/{month:int}/{day:int}");
                });

            services.AddIdentity<User, Role>();
            services.ConfigureApplicationCookie(options =>
            {
                options.LoginPath = "/login";
                options.ExpireTimeSpan = TimeSpan.FromDays(7);
            });
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IHostingEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseExceptionHandler("/Error");
                app.UseHsts();
            }

            app.UseHttpsRedirection();
            app.UseStaticFiles();
            app.UseAuthentication();
            app.UseMvc();
        }
    }
}
