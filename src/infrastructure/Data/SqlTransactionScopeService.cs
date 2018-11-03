using kodex.Application.Interfaces;
using Microsoft.Extensions.Logging;
using System;
using System.Data.SqlClient;
using System.Threading.Tasks;

namespace kodex.Infrastructure.Data
{
    // todo: get SqlTransactionScope.cs file

    public class SqlTransactionScopeService : ISqlTransactionScopeService
    {
        private readonly ISqlDataSourceConfig _configuration;

        private readonly ILogger<SqlTransactionScopeService> _logger;

        public SqlTransactionScopeService(ISqlDataSourceConfig configuration, ILogger<SqlTransactionScopeService> logger)
        {
            _configuration = configuration;
            _logger = logger;
        }

        public async Task<ITransactionScope> CreateTransactionScopeAsync()
        {
            SqlConnection connection;
            try
            {
                connection = new SqlConnection(_configuration.SqlServerConnectionString);
                try
                {
                    await connection.OpenAsync();
                }
                catch (Exception e)
                {
                    _logger.LogError(e, "Error opening SQL connection.");
                    throw;
                }
            }
            catch (Exception e)
            {
                _logger.LogError(e, "Could not create SQL connection.");
                throw;
            }
            return new SqlTransactionScope(connection);
        }
    }
}