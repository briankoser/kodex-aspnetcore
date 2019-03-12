using kodex.Application.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace kodex.Application.Interfaces
{
    public interface IIdentityRepository
    {
        Task<bool> CreateUser(User user);
        Task<User> GetUserByEmail(string email);
        Task<User> GetUserByID(string id);
        Task<User> GetUserByUserName(string normalizedUserName);
        Task<IEnumerable<User>> GetUsers();
        //Task UpdateEmail(User user);
        //Task UpdateNormalizedEmail(User user);
        //Task UpdateNormalizedUserName(User user);

        Task<bool> AddUserToRole(User user, Role role);
        Task<Role> GetRoleByID(string id);
        Task<IEnumerable<Role>> GetUserRoles(User user);
    }
}
