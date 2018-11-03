using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace kodex.Application.Interfaces
{
    public interface ISqlTransactionScopeService
    {
        Task<ITransactionScope> CreateTransactionScopeAsync();
    }
}
