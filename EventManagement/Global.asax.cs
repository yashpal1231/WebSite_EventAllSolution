using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace EventManagement
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
        protected void Application_BeginRequest(object sender, EventArgs e)
        {
        //    if (Request.Url.Authority.StartsWith("www"))
        //        return;

        //    var url = string.Format("{0}://www.{1}{2}",
        //                Request.Url.Scheme,
        //                Request.Url.Authority,
        //                Request.Url.PathAndQuery);

        //    Response.RedirectPermanent(url, true);
        }
    }
}