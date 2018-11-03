using System.Data.SqlClient;
namespace kodex.Infrastructure.Data
{
    public class SqlTransactionScope : TransactionScope
    {
        internal SqlTransactionScope(SqlConnection connection) : base(connection)
        {
        }
    }
}