using System;
using System.Collections.Generic;
using System.Text;

namespace kodex.Application.Interfaces
{
    public interface ISqlDataSourceConfig
    {
        string SqlServerConnectionString { get; }
    }
}
