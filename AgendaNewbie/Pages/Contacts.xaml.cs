using AgendaNewbie.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace AgendaNewbie.Pages
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Contacts : TabbedPage
    {
        public Contacts()
        {
            InitializeComponent();

            BindingContext = this;

            LoadList();
        }

        public async void BTNSalvar_Clicked(object sender, EventArgs e)
        {
            try
            {
                var save = new ServicesDb();
                bool register = await save.AddContact(
                    TXTNome.Text,
                    TXTTel1.Text,
                    TXTTel2.Text,
                    TXTEmail.Text,
                    TXTCep.Text,
                    TXTLogradouro.Text,
                    int.Parse(TXTNumero.Text),
                    TXTComplemento.Text,
                    TXTBairro.Text,
                    TXTCidade.Text,
                    TXTUF.Text
                    );

                LoadList();

                if (register)
                {
                    LimparCampos();
                    await DisplayAlert("Sucesso!", "Contato salvo com sucesso!", "Ok");
                }
                else
                {
                    await DisplayAlert("Erro!", "Ocorreu um erro ao tentar salvar o contato!", "Ok");
                }
            }
            catch
            {
                await DisplayAlert("Erro!", "Ocorreu um erro ao tentar localizar o CEP", "Ok");
            }
        }

        public void LimparCampos()
        {
            TXTNome.Text = string.Empty;
            TXTTel1.Text = string.Empty;
            TXTTel2.Text = string.Empty;
            TXTEmail.Text = string.Empty;
            TXTCep.Text = string.Empty;
            TXTLogradouro.Text = string.Empty;
            TXTNumero.Text = string.Empty;
            TXTComplemento.Text = string.Empty;
            TXTBairro.Text = string.Empty;
            TXTCidade.Text = string.Empty;
            TXTUF.Text = string.Empty;
        }

        public void BTNLimpar_Clicked(object sender, EventArgs e)
        {
            LimparCampos();
        }

        public async void TXTCep_Unfocused(object sender, FocusEventArgs e)
        {
            try
            {
                var client = new HttpClient();
                var cep = TXTCep.Text;
                var json = await client.GetStringAsync($"https://viacep.com.br/ws/{cep}/json");
                var dados = JsonConvert.DeserializeObject<Endereco>(json);

                TXTLogradouro.Text = dados.logradouro;
                TXTBairro.Text = dados.bairro;
                TXTCidade.Text = dados.localidade;
                TXTUF.Text = dados.uf;

                TXTNumero.Focus();
            }
            catch
            {
                await DisplayAlert("Erro!", "Ocorreu um erro ao tentar localizar o CEP", "Ok");
            }
        }

        public async void LoadList()
        {
            var list = new ServicesDb();
            var getList = list.ListContacts();

            CVLista.ItemsSource = await getList;
        }

        public async void SVApagar_Invoked(object sender, EventArgs e)
        {
            var get = (sender as SwipeItem)?.BindingContext as Models.ContactsEntity;
            var item = get.Email;
            try
            {
                bool confirmation = await DisplayAlert("Aviso!", $"Deseja deletar {get.Name}?", "Sim", "Não");

                if (confirmation)
                {
                    var services = new ServicesDb();
                    var delete = await services.DeleteContact(item);

                    if (delete)
                    {
                        DisplayAlert("Sucesso!", "Contato deletado com sucesso!", "Ok");
                        LoadList();
                        return;
                    }
                    else
                    {
                        DisplayAlert("Erro!", "Houve um erro ao deletar o contato!", "Ok");
                        return;
                    }
                }
                else
                {
                    return;
                }
            }
            catch
            {

                DisplayAlert("Erro!", "Houve um erro ao deletar o contato!", "Ok");
            }
        }

        private async void SBBuscar_TextChanged(object sender, TextChangedEventArgs e)
        {
            try
            {
                var service = new ServicesDb();
                var search = await service.ListFilterContacts(SBBuscar.Text);
                CVLista.ItemsSource = search;
            }
            catch
            {
                DisplayAlert("Erro!", "Houve um erro ao capturar lista de contatos!", "Ok");
            }
        }

        private async void CVLista_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var aba = Children[1];
            CurrentPage = aba;

            var services = new ServicesDb();

            var selected = (ContactsEntity)e.CurrentSelection.FirstOrDefault();

            var getContact = await services.GetContact(selected.Email);

            if(getContact != null)
            {
                LBLNome.Text = getContact.Name;
                LBLTel1.Text = getContact.Phone1;
                LBLTel2.Text = getContact.Phone2;
                LBLEmail.Text = getContact.Email;
                LBLCep.Text = getContact.Cep;
                LBLEndereco.Text = getContact.Address;
                LBLNumero.Text = getContact.Number.ToString();
                LBLComplemento.Text = getContact.ExtraInfo;
                LBLBairro.Text = getContact.Neighborhood;
                LBLcidade.Text = getContact.City;
                LBLUF.Text = getContact.Uf;
            }
            else
            {
                DisplayAlert("Erro!", "Houve um erro ao localizar contato!", "Ok");
            }
        }
    }
}