using System;
using System.Collections.Generic;
using System.Text;

namespace AgendaNewbie.Models
{
    public class ContactsEntity
    {
        public string Name { get; set; }
        public string Phone1 { get; set; }
        public string Phone2 { get; set; }
        public string Email { get; set; }
        public string Cep { get; set; }
        public string Address { get; set; }
        public int Number { get; set; }
        public string ExtraInfo { get; set; }
        public string Neighborhood { get; set; }
        public string City { get; set; }
        public string Uf { get; set; }
    }
}
