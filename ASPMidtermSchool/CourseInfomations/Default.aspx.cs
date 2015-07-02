using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using ASPMidtermSchool.Models;

namespace ASPMidtermSchool.CourseInfomations
{
    public partial class Default : System.Web.UI.Page
    {
		protected ASPMidtermSchool.Models.DefaultConnection _db = new ASPMidtermSchool.Models.DefaultConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Model binding method to get List of CourseInfomation entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<ASPMidtermSchool.Models.CourseInfomation> GetData()
        {
            return _db.CourseInfomations;
        }
    }
}

