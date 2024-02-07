using Firebase.Database;
using Firebase.Database.Query;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AgendaNewbie.Models
{
    public class ServicesUsers
    {
        public static string AccessKey = "FqEWP18B8YZBnhw6toxVDHif5UAfhIMvidiFKnHw";

        FirebaseClient Client = new FirebaseClient("https://agenda-newbie-fddcb-default-rtdb.firebaseio.com/", new FirebaseOptions { AuthTokenAsyncFactory = () => Task.FromResult(AccessKey) });

        public async Task<bool> RegisterUser(string username, string password)
        {
            try
            {
                await Client.Child("Users").PostAsync(new Users()
                {
                    User = username,
                    Password = password
                });

                return true;
            }
            catch
            {
                return false;
            }
        }

        public async Task<bool> LoginUser(string username, string password)
        {
            var consultar = (await Client.Child("Users").OnceAsync<Users>())
                .Where(u => u.Object.User == username)
                .Where(u => u.Object.Password == password)
                .FirstOrDefault();

            return consultar != null;
        }

        public async Task<bool> VerifyRegister(string username)
        {
            var consultar = (await Client.Child("Users").OnceAsync<Users>())
                .Where(u => u.Object.User == username)
                .FirstOrDefault();

            return consultar == null;
        }
    }
}
