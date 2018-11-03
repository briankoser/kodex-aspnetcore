using System;
using System.Data;

namespace kodex.Application.Interfaces
{
    public interface ITransactionScope : IDisposable
    {
        IDbConnection Connection { get; }

        IDbTransaction Transaction { get; }

        void Rollback();
    }
}