using System.Web;
using System.Web.Optimization;

namespace TurArg
{
    public class BundleConfig
    {
        // Para obtener más información sobre las uniones, visite
        // https://go.microsoft.com/fwlink/?LinkId=301862

       public static void RegisterBundles(BundleCollection bundles)
            {
                bundles.Add(new Bundle("~/Script/Bundles").Include(
                "~/Bundles/inline.*",
                "~/Bundles/polyfills.*",
                "~/Bundles/scripts.*",
                "~/Bundles/runtime.*",
                "~/Bundles/vendor.*",
                "~/Bundles/zone.*",
                "~/Bundles/main.*"));
                bundles.Add(new ScriptBundle("~/Content/Styles").Include(
                    "~/bundles/styles.*"));
            
        }
    }
}
