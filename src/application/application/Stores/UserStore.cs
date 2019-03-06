using kodex.Application.Interfaces;
using kodex.Application.Models;
using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace kodex.Application.Stores
{
    public class UserStore : IUserStore<User>, IUserPasswordStore<User>, IUserEmailStore<User>, IUserRoleStore<User>
    {
        private IIdentityRepository _identityRepository;

        public UserStore(IIdentityRepository identityRepository)
        {
            _identityRepository = identityRepository;
        }

        // IUserStore

        public async Task<IdentityResult> CreateAsync(User user, CancellationToken cancellationToken)
        {
            var success = await _identityRepository.CreateUser(user);
            return success ? IdentityResult.Success : IdentityResult.Failed();
        }

        public Task<IdentityResult> DeleteAsync(User user, CancellationToken cancellationToken)
        {
            throw new NotImplementedException();
        }

        public void Dispose()
        {

        }

        public Task<User> FindByIdAsync(string userId, CancellationToken cancellationToken)
        {
            return _identityRepository.GetUserByID(userId);
        }

        public Task<User> FindByNameAsync(string normalizedUserName, CancellationToken cancellationToken)
        {
            return _identityRepository.GetUserByUserName(normalizedUserName);
        }

        public Task<string> GetNormalizedUserNameAsync(User user, CancellationToken cancellationToken)
        {
            // todo: good enough, or is only an id provided?
            return Task.FromResult(user.UserName.ToUpper());
        }

        public async Task<string> GetUserIdAsync(User user, CancellationToken cancellationToken)
        {
            if (!String.IsNullOrEmpty(user.Id))
            {
                return user.Id;
            }

            return (await _identityRepository.GetUserByEmail(user.Email)).Id;
        }

        public Task<string> GetUserNameAsync(User user, CancellationToken cancellationToken)
        {
            return Task.FromResult(user.UserName);
        }

        public Task SetNormalizedUserNameAsync(User user, string normalizedName, CancellationToken cancellationToken)
        {
            //var newUser = new User() { Email = user.Email, NormalizedUserName = normalizedName };
            //return _identityRepository.UpdateNormalizedUserName(newUser);
            user.NormalizedUserName = normalizedName;
            return Task.CompletedTask;
        }

        public Task SetUserNameAsync(User user, string userName, CancellationToken cancellationToken)
        {
            throw new NotImplementedException();
        }

        public Task<IdentityResult> UpdateAsync(User user, CancellationToken cancellationToken)
        {
            throw new NotImplementedException();
        }



        // IUserPasswordStore

        public async Task<string> GetPasswordHashAsync(User user, CancellationToken cancellationToken)
        {
            return (await _identityRepository.GetUserByID(user.Id)).PasswordHash;
        }

        public async Task<bool> HasPasswordAsync(User user, CancellationToken cancellationToken)
        {
            return !String.IsNullOrEmpty((await _identityRepository.GetUserByID(user.Id)).PasswordHash);
        }

        public Task SetPasswordHashAsync(User user, string passwordHash, CancellationToken cancellationToken)
        {
            user.PasswordHash = passwordHash;
            return Task.CompletedTask;
        }



        // IUserEmailStore

        public Task<User> FindByEmailAsync(string normalizedEmail, CancellationToken cancellationToken)
        {
            return _identityRepository.GetUserByEmail(normalizedEmail);
        }

        public Task<string> GetEmailAsync(User user, CancellationToken cancellationToken)
        {
            return Task.FromResult(user.Email);
        }

        public Task<bool> GetEmailConfirmedAsync(User user, CancellationToken cancellationToken)
        {
            // always false because we are not confirming emails
            return Task.FromResult(user.EmailConfirmed);
        }

        public Task<string> GetNormalizedEmailAsync(User user, CancellationToken cancellationToken)
        {
            // todo: good enough, or is only an id provided?
            return Task.FromResult(user.Email.ToUpper());
        }

        public Task SetEmailAsync(User user, string email, CancellationToken cancellationToken)
        {
            //var newUser = new User() { Id = user.Id, Email = email };
            //return _identityRepository.UpdateEmail(user);
            user.Email = email;
            return Task.CompletedTask;
        }

        public Task SetEmailConfirmedAsync(User user, bool confirmed, CancellationToken cancellationToken)
        {
            throw new NotImplementedException();
        }

        public Task SetNormalizedEmailAsync(User user, string normalizedEmail, CancellationToken cancellationToken)
        {
            // email is normalized in db
            //var newUser = new User() { Email = user.Email };
            //return _identityRepository.UpdateNormalizedEmail(user);
            user.NormalizedEmail = normalizedEmail;
            return Task.CompletedTask;
        }



        // IUserRoleStore

        public Task AddToRoleAsync(User user, string roleName, CancellationToken cancellationToken)
        {
            throw new NotImplementedException();
        }

        public async Task<IList<string>> GetRolesAsync(User user, CancellationToken cancellationToken)
        {
            var roles = await _identityRepository.GetUserRoles(user);
            return roles.Select(x => x.Name).ToList();
        }

        public Task<IList<User>> GetUsersInRoleAsync(string roleName, CancellationToken cancellationToken)
        {
            throw new NotImplementedException();
        }

        public Task<bool> IsInRoleAsync(User user, string roleName, CancellationToken cancellationToken)
        {
            throw new NotImplementedException();
        }

        public Task RemoveFromRoleAsync(User user, string roleName, CancellationToken cancellationToken)
        {
            throw new NotImplementedException();
        }
    }
}
