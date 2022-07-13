using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(feedbackform.Startup))]
namespace feedbackform
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
