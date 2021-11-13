using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Schlsapp.Startup))]
namespace Schlsapp
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
