using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(PTC_Systems.Startup))]
namespace PTC_Systems
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
