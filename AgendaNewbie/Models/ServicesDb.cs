using Firebase.Database;
using Firebase.Database.Query;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AgendaNewbie.Models
{
    public class ServicesDb
    {
        public static string AccessKey = "FqEWP18B8YZBnhw6toxVDHif5UAfhIMvidiFKnHw";

        FirebaseClient Client = new FirebaseClient("https://agenda-newbie-fddcb-default-rtdb.firebaseio.com/", new FirebaseOptions { AuthTokenAsyncFactory = () => Task.FromResult(AccessKey) });

        public async Task<bool> AddContact(string name, string phone1, string phone2, string email, string cep, string adress, int number, string extraInfo, string neighborhood, string city, string uf)
        {
            try
            {
                await Client.Child("Contacts")
                    .PostAsync(new ContactsEntity()
                    {
                        Name = name,
                        Phone1 = phone1,
                        Phone2 = phone2,
                        Email = email,
                        Cep = cep,
                        Address = adress,
                        Number = number,
                        ExtraInfo = extraInfo,
                        Neighborhood = neighborhood,
                        City = city,
                        Uf = uf
                    });
                return true;
            }
            catch
            {
                return false;
            }
        }

        public async Task<List<ContactsEntity>> ListContacts()
        {
            var list = (await Client.Child("Contacts")
                .OnceAsync<ContactsEntity>())
                .Select(f => new ContactsEntity()
                {
                    Name = f.Object.Name,
                    Email = f.Object.Email
                }).ToList();

            return list;
        }

        public async Task<bool> DeleteContact(string email)
        {
            try
            {
                var getByEmail = (await Client.Child("Contacts")
                    .OnceAsync<ContactsEntity>())
                    .Where(a => a.Object.Email == email)
                    .FirstOrDefault();

                await Client.Child("Contacts").Child(getByEmail.Key).DeleteAsync();

                return true;
            }
            catch
            {
                return false;
            }
        }

        public async Task<List<ContactsEntity>> ListFilterContacts(string text)
        {
            var list = (await Client.Child("Contacts")
                .OnceAsync<ContactsEntity>())
                .Where(c => c.Object.Name.ToLower().Contains(text.ToLower()))
                .Select(f => new ContactsEntity()
                {
                    Name = f.Object.Name,
                    Email = f.Object.Email
                }).ToList();

            return list;
        }

        public async Task<ContactsEntity> GetContact(string email)
        {
            var getRegister = (await Client.Child("Contacts")
                .OnceAsync<ContactsEntity>())
                .Where(c => c.Object.Email == email)
                .FirstOrDefault();

            if(getRegister != null)
            {
                return getRegister.Object;
            }

            return null;
        }
    }
}
