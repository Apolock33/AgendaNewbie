using AgendaNewbie.Models;
using AgendaNewbie.Pages;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace AgendaNewbie
{
    public partial class MainPage : ContentPage
    {
        bool loading;

        public MainPage()
        {
            InitializeComponent();
        }

        public void LoaderView()
        {
            if(!loading)
            {
                BVTelaPreta.IsVisible = false;
                ACTRoda.IsVisible = false;
                ACTRoda.IsRunning = false;
                loading = false;
                return;
            }

            BVTelaPreta.IsVisible = true;
            ACTRoda.IsVisible = true;
            ACTRoda.IsRunning = true;
            loading = true;
            return;
        }

        private async void BTNLogar_Clicked(object sender, EventArgs e)
        {
            try
            {
                loading = true;
                LoaderView();

                var login = new ServicesUsers();
                bool verifyLogin = await login.LoginUser(TXTEmail.Text, TXTSenha.Text);

                if (verifyLogin)
                {
                    loading = false;
                    LoaderView();

                    TXTEmail.Text = string.Empty;
                    TXTSenha.Text = string.Empty;
                    Navigation.PushAsync(new Contacts());
                }
                else
                {
                    await DisplayAlert("Falha ao logar!", "Usuario e/ou senha não correspondem", "Ok");

                    loading = false;
                    LoaderView();
                }
            }
            catch
            {
                await DisplayAlert("Falha ao logar!", "Por favor tente novamente mais tarde!", "Ok");

                loading = false;
                LoaderView();
            }
        }

        private void BTNCriar_Clicked(object sender, EventArgs e)
        {
            Navigation.PushAsync(new CreateAcess());
        }

        private void BTNSobre_Clicked(object sender, EventArgs e)
        {
            Navigation.PushAsync(new About());
        }
    }
}
