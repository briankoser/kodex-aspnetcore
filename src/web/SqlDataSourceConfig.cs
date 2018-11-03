using kodex.Application.Interfaces;
using Microsoft.Extensions.Configuration;

namespace Web
{
    internal class SqlDataSourceConfig : ISqlDataSourceConfig
    {
        private readonly IConfiguration _configuration;

        public SqlDataSourceConfig(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        public string SqlServerConnectionString => _configuration["ConnectionStrings:KodexDBConnectionString"];
    }
}