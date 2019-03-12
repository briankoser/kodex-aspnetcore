using kodex.Application.Interfaces;
using kodex.Application.Models;
using kodex.Infrastructure.Data.Repositories;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace kodex.Infrastructure.Data.DBAccess
{
    public class IdentityRepository : SqlRepository, IIdentityRepository
    {
        public IdentityRepository(ISqlDataSourceConfig config, ILogger<PostsRepository> logger)
            : base(config.SqlServerConnectionString, logger)
        {
        }



        // Users

        public async Task<bool> CreateUser(User user)
        {
            if (user == null)
            {
                throw new ArgumentNullException(nameof(user));
            }

            string storedProcedure = "dbo.sp_InsertUser";

            int rows = await ExecuteStoredProcedureAsync(storedProcedure, 
                new { email = user.Email, passwordHash = user.PasswordHash, userName = user.UserName });

            return rows > 0;
        }

        public Task<User> GetUserByEmail(string email)
        {
            if (String.IsNullOrEmpty(email))
            {
                throw new ArgumentNullException(nameof(email));
            }

            string query = "SELECT * FROM dbo.users WHERE Email = @Email";
            return QueryFirstOrDefaultAsync<User>(query, new { Email = email });
        }

        public Task<User> GetUserByID(string id)
        {
            if (String.IsNullOrEmpty(id))
            {
                throw new ArgumentNullException(nameof(id));
            }

            string query = "SELECT * FROM dbo.users WHERE Id = @ID";
            return QueryFirstOrDefaultAsync<User>(query, new { ID = id });
        }

        public Task<User> GetUserByUserName(string normalizedUserName)
        {
            if (String.IsNullOrEmpty(normalizedUserName))
            {
                throw new ArgumentNullException(nameof(normalizedUserName));
            }

            string query = "SELECT * FROM dbo.users WHERE NormalizedUserName = @normalizedUserName";
            return QueryFirstOrDefaultAsync<User>(query, new { normalizedUserName });
        }

        public Task<IEnumerable<User>> GetUsers()
        {
            throw new System.NotImplementedException();
        }

        //public Task UpdateEmail(User user)
        //{
        //    if (String.IsNullOrEmpty(user.Id))
        //    {
        //        throw new ArgumentNullException("user.Id");
        //    }

        //    if (String.IsNullOrEmpty(user.Email))
        //    {
        //        throw new ArgumentNullException("user.Email");
        //    }

        //    string storedProcedure = "dbo.sp_UpdateUserEmail";
        //    return ExecuteStoredProcedureAsync(storedProcedure, new { id = user.Id, email = user.Email });
        //}

        //public Task UpdateNormalizedEmail(User user)
        //{
        //    if (String.IsNullOrEmpty(user.Email))
        //    {
        //        throw new ArgumentNullException("user.Email");
        //    }

        //    string storedProcedure = "dbo.sp_UpdateUserNormalizedEmail";
        //    return ExecuteStoredProcedureAsync(storedProcedure, new { email = user.Email });
        //}

        //public Task UpdateNormalizedUserName(User user)
        //{
        //    if (String.IsNullOrEmpty(user.Email))
        //    {
        //        throw new ArgumentNullException("user.Email");
        //    }

        //    if (String.IsNullOrEmpty(user.NormalizedUserName))
        //    {
        //        throw new ArgumentNullException("user.NormalizedUserName");
        //    }

        //    string storedProcedure = "dbo.sp_UpdateUserNormalizedUserName";
        //    return ExecuteStoredProcedureAsync(storedProcedure, new { email = user.Email, normalizedUserName = user.NormalizedUserName });
        //}



        // Roles

        public Task<bool> AddUserToRole(User user, Role role)
        {
            throw new System.NotImplementedException();
        }

        public Task<Role> GetRoleByID(string id)
        {
            throw new System.NotImplementedException();
        }

        public Task<IEnumerable<Role>> GetUserRoles(User user)
        {
            if (String.IsNullOrEmpty(user?.Email))
            {
                throw new ArgumentNullException("user.Email");
            }

            string query = 
                @"SELECT AspNetRoles.* 
                  FROM dbo.AspNetUsers
                  JOIN dbo.AspNetUserRoles
                  ON AspNetUsers.Id = AspNetUserRoles.UserId
                  JOIN AspNetRoles
                  ON AspNetUserRoles.RoleId = AspNetRoles.Id
                  WHERE AspNetUsers.Id = @UserId";
            return QueryAsync<Role>(query, new { UserId = user.Id });
        }
    }
}
