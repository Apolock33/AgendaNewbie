using AgendaNewbie.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace AgendaNewbie.Pages
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class CreateAcess : ContentPage
    {
        bool loading;

        public CreateAcess()
        {
            InitializeComponent();
        }

        public void LoaderView()
        {
            if (!loading)
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

        private async void BTNCriarAcesso_Clicked(object sender, EventArgs e)
        {
            loading = true;
            LoaderView();

            if (TXTCriarSenha.Text != TXTConfirmarSenha.Text)
            {

                loading = false;
                LoaderView();

                await DisplayAlert("Falha!", "As Senhas não correspondem", "Ok");
            }

            var login = new ServicesUsers();
            bool duplicado = await login.VerifyRegister(TXTCriarEmail.Text);

            if (!duplicado)
            {
                loading = false;
                LoaderView();

                await DisplayAlert("Falha!", "Esse login já existe! Por favor tente outro email", "Ok");
                return;
            }

            try
            {
                var access = new ServicesUsers();
                bool createAcess = await access.RegisterUser(TXTCriarEmail.Text, TXTCriarSenha.Text);

                if (createAcess)
                {
                    loading = false;
                    LoaderView();

                    TXTCriarEmail.Text = string.Empty;
                    TXTCriarSenha.Text = string.Empty;
                    TXTConfirmarSenha.Text = string.Empty;

                    Navigation.PushAsync(new Contacts());
                    return;
                }
                else
                {
                    loading = false;
                    LoaderView();

                    await DisplayAlert("Falha!", "Não foi possível criar o usuário", "Ok");
                }
            }
            catch
            {
                await DisplayAlert("Falha!", "Não foi possível criar o usuário", "Ok");
            }
        }

        private void BTNCancelar_Clicked(object sender, EventArgs e)
        {
            TXTCriarEmail.Text = string.Empty;
            TXTCriarSenha.Text = string.Empty;
            TXTConfirmarSenha.Text = string.Empty;
            Navigation.PopAsync();
        }
    }
}