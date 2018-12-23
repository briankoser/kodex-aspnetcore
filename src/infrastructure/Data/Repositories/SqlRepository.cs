using Dapper;
using kodex.Application.Interfaces;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Threading.Tasks;

namespace kodex.Infrastructure.Data.Repositories
{
    public abstract class SqlRepository
    {
        /// <summary>
        ///     The connection string to use for this repository.
        /// </summary>
        private readonly string _connectionString;

        /// <summary>
        ///     Construct a Sql repository connecting with the given connection string and using the provided logger for
        ///     error logging.
        /// </summary>
        protected SqlRepository(string connectionString, ILogger logger)
        {
            _connectionString = connectionString;
            Logger = logger;
        }

        /// <summary>
        ///     A convenience logger.
        /// </summary>
        protected ILogger Logger { get; }

        /// <summary>
        ///     Execute a database query returning no results while handling database connection setup and disposal, as well
        ///     as logging connection and query exceptions.
        /// </summary>
        /// <typeparam name="T">The CLR type that the query returns.</typeparam>
        /// <param name="queryLambda">Function taking a SQL connection and returning an awaitable that returns a T.</param>
        /// <returns>An awaitable task that returns T.</returns>
        protected async Task<T> WithConnection<T>(Func<SqlConnection, Task<T>> queryLambda)
        {
            try
            {
                using (var connection = new SqlConnection(_connectionString))
                {
                    try
                    {
                        return await queryLambda(connection);
                    }
                    catch (Exception e)
                    {
                        Logger.LogError(e, "Error executing SQL query.");
                        throw;
                    }
                }
            }
            catch (Exception e)
            {
                Logger.LogError(e, "Could not connect to SQL datasource.");
                throw;
            }
        }

        /// <summary>
        ///     Execute a database query returning no results while handling database connection setup and disposal, as well
        ///     as logging connection and query exceptions.
        /// </summary>
        /// <param name="dbAction">Function taking a SQL connection and returning an awaitable.</param>
        /// <returns>An awaitable task.</returns>
        protected async Task WithConnection(Func<SqlConnection, Task> dbAction)
        {
            try
            {
                using (var connection = new SqlConnection(_connectionString))
                {
                    try
                    {
                        await dbAction(connection);
                    }
                    catch (Exception e)
                    {
                        Logger.LogError(e, "Error executing SQL query.");
                        throw;
                    }
                }
            }
            catch (Exception e)
            {
                Logger.LogError(e, "Could not connect to SQL datasource.");
                throw;
            }
        }

        /// <summary>
        ///     Wrap the async Dapper call with default connection setup, disposal, and exception handling.
        /// </summary>
        /// <typeparam name="T">The DTO type to return.</typeparam>
        /// <param name="sql">The query to execute.</param>
        /// <param name="parameters">The parameters to supply to the query, if any.</param>
        /// <returns>The database results.</returns>
        protected Task<IEnumerable<T>> QueryAsync<T>(string sql, object parameters = null) =>
            WithConnection(conn => conn.QueryAsync<T>(sql, parameters));

        protected Task<IEnumerable<T1>> QueryAsync<T2, T3, T4, T1>(string sql, Func<T2, T3, T4, T1> map, object parameters = null, IDbTransaction transaction = null, string splitOn = "Id") =>
            WithConnection(conn => conn.QueryAsync<T2, T3, T4, T1>(sql, map, parameters, transaction: transaction, splitOn: splitOn));

        /// <summary>
        ///     Wrap the async Dapper call with default connection setup, disposal, and exception handling.
        /// </summary>
        /// <typeparam name="T">The DTO type to return.</typeparam>
        /// <param name="sql">The query to execute.</param>
        /// <param name="parameters">The parameters to supply to the query, if any.</param>
        /// <returns>The database result.</returns>
        protected Task<T> QuerySingleAsync<T>(string sql, object parameters = null) =>
            WithConnection(conn => conn.QuerySingleAsync<T>(sql, parameters));

        /// <summary>
        ///     Wrap the async Dapper call with default connection setup, disposal, and exception handling.
        /// </summary>
        /// <typeparam name="T">The DTO type to return.</typeparam>
        /// <param name="sql">The query to execute.</param>
        /// <param name="parameters">The parameters to supply to the query, if any.</param>
        /// <returns>The database result or null.</returns>
        protected Task<T> QuerySingleOrDefaultAsync<T>(string sql, object parameters = null) =>
            WithConnection(conn => conn.QuerySingleOrDefaultAsync<T>(sql, parameters));

        /// <summary>
        ///     Wrap the async Dapper call with default connection setup, disposal, and exception handling.
        /// </summary>
        /// <typeparam name="T">The DTO type to return.</typeparam>
        /// <param name="sql">The query to execute.</param>
        /// <param name="parameters">The parameters to supply to the query, if any.</param>
        /// <returns>The first database result.</returns>
        protected Task<T> QueryFirstAsync<T>(string sql, object parameters) =>
            WithConnection(conn => conn.QueryFirstAsync<T>(sql, parameters));

        /// <summary>
        ///     Wrap the async Dapper call with default connection setup, disposal, and exception handling.
        /// </summary>
        /// <typeparam name="T">The DTO type to return.</typeparam>
        /// <param name="sql">The query to execute.</param>
        /// <param name="parameters">The parameters to supply to the query, if any.</param>
        /// <param name="scope">The transaction scope.</param>
        /// <returns>The first database result.</returns>
        protected Task<T> QueryFirstAsync<T>(string sql, object parameters, ITransactionScope scope)
            => scope.Connection.QueryFirstAsync<T>(sql, parameters, scope.Transaction);

        /// <summary>
        ///     Wrap the async Dapper call with default connection setup, disposal, and exception handling.
        /// </summary>
        /// <typeparam name="T">The DTO type to return.</typeparam>
        /// <param name="sql">The sql to execute.</param>
        /// <param name="parameters">The parameters to supply to the query, if any.</param>
        /// <returns>The database result or null.</returns>
        protected Task<T> QueryFirstOrDefaultAsync<T>(string sql, object parameters) =>
            WithConnection(conn => conn.QueryFirstOrDefaultAsync<T>(sql, parameters));

        /// <summary>
        ///     Wrap the async Dapper call with default connection setup, disposal, and exception handling.
        /// </summary>
        /// <typeparam name="T">The DTO type to return.</typeparam>
        /// <param name="sql">The sql to execute.</param>
        /// <param name="parameters">The parameters to supply to the query, if any.</param>
        /// <param name="scope">The transaction scope.</param>
        /// <returns>The database result or null.</returns>
        protected Task<T> QueryFirstOrDefaultAsync<T>(string sql, object parameters, ITransactionScope scope) =>
            scope.Connection.QueryFirstOrDefaultAsync<T>(sql, parameters, scope.Transaction);

        /// <summary>
        ///     Wrap the async Dapper call with default connection setup, disposal, and exception handling.
        /// </summary>
        /// <param name="sql">The command to execute.</param>
        /// <param name="parameters">The parameters to supply to the command, if any.</param>
        /// <returns>The number of rows affected.</returns>
        protected Task<int> ExecuteAsync(string sql, object parameters) =>
            WithConnection(conn => conn.ExecuteAsync(sql, parameters));

        /// <summary>
        ///     Wrap the async Dapper call with default connection setup, disposal, and exception handling.
        /// </summary>
        /// <param name="sql">The command to execute.</param>
        /// <param name="parameters">The parameters to supply to the command, if any.</param>
        /// <param name="scope">The transaction scope.</param>
        /// <returns>The number of rows affected.</returns>
        protected Task<int> ExecuteAsync(string sql, object parameters, ITransactionScope scope) =>
            scope.Connection.ExecuteAsync(sql, parameters, scope.Transaction);
    }
}