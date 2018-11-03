using kodex.Application.Interfaces;
using System;
using System.Collections.Generic;
using System.Data;
using System.Text;

namespace kodex.Infrastructure.Data
{
    public class TransactionScope : ITransactionScope
    {
        private bool _transactionFailed;

        protected TransactionScope(IDbConnection connection)
        {
            Connection = connection;
            Transaction = Connection.BeginTransaction();
        }

        public void Dispose()
        {
            if (_transactionFailed)
            {
                Transaction.Rollback();
            }
            else
            {
                Transaction.Commit();
            }

            Connection?.Dispose();
            Transaction?.Dispose();
        }

        public IDbConnection Connection { get; }

        public IDbTransaction Transaction { get; }

        public void Rollback()
        {
            _transactionFailed = true;
        }
    }
}