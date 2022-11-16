using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.IO;
using System.Text;

namespace taskproject
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected override void LoadViewState(object savedState)
        {
            base.LoadViewState(savedState);
            createDrops();
        }
        protected void Add_Num(object sender, EventArgs e)
        {
            ViewState["Drops"] = (ViewState["Drops"] == null ? 1 : ((int)ViewState["Drops"] + 1));
            createDrops();
        }
        public void createDrops()
        {
            Panel1.Controls.Clear();
            if (ViewState["Drops"] != null)
            {
                var sl = 0;
                string e = tbBooks.Text.ToString();
                int w = int.Parse(e);
                for (int j = 0; j < w; j++)
                {
                    DropDownList obj = new DropDownList();
                    for (int i = 0; i <= 10; i++)
                    {
                        ListItem lt = new ListItem();
                        lt.Text =  i.ToString();
                        lt.Value =  i.ToString();
                        obj.Items.Add(lt);
                        Panel1.Controls.Add(obj);

                        //var st = 0;
                        //var str = st + obj.Text.ToString();
                    }

                    sl = sl + int.Parse(obj.SelectedValue);
                    
                }
                Label1.Text = sl.ToString();

            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            createDrops();
         
          //   int sum = 0;
           //  DropDownList DropDownList1;
            // Label1.Text = DropDownList1.SelectedValue.ToString(); 
            //foreach (Control c in Panel1.Controls)
            //{
            //    if (c is DropDownList)
            //        Response.Write(((DropDownList)c).Text + "<br/>");
            //}
        }
    }
}