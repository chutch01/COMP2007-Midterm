using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using ASPMidtermSchool.Models;
namespace ASPMidtermSchool.CourseInfomations
{
    public partial class Edit : System.Web.UI.Page
    {
		protected ASPMidtermSchool.Models.DefaultConnection _db = new ASPMidtermSchool.Models.DefaultConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Update methd to update the selected CourseInfomation item
        // USAGE: <asp:FormView UpdateMethod="UpdateItem">
        public void UpdateItem(int  CourseID)
        {
            using (_db)
            {
                var item = _db.CourseInfomations.Find(CourseID);

                if (item == null)
                {
                    // The item wasn't found
                    ModelState.AddModelError("", String.Format("Item with id {0} was not found", CourseID));
                    return;
                }

                TryUpdateModel(item);

                if (ModelState.IsValid)
                {
                    // Save changes here
                    _db.SaveChanges();
                    Response.Redirect("../Default");
                }
            }
        }

        // This is the Select method to selects a single CourseInfomation item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public ASPMidtermSchool.Models.CourseInfomation GetItem([FriendlyUrlSegmentsAttribute(0)]int? CourseID)
        {
            if (CourseID == null)
            {
                return null;
            }

            using (_db)
            {
                return _db.CourseInfomations.Find(CourseID);
            }
        }

        protected void ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Cancel", StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect("../Default");
            }
        }
    }
}
