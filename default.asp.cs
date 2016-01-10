using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows;
using System.Text.RegularExpressions;


public partial class _Default : System.Web.UI.Page
{

    static string path = "Data Source=LAPTOP-R05GHRHE\\NSQLEXPRESS;Initial Catalog=details;Integrated Security=True";
    SqlConnection con = new SqlConnection(path);

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
            con.Open();
            string query = "Insert into employee(id,name,description,email,dob,phone) values ('" + tid.Text.ToString().Trim() + "','" + tname.Text.ToString().Trim() + "','" + tjob.Text.ToString().Trim() + "','" + temail.Text.ToString().Trim() + "','" + tdob.Text.ToString().Trim() + "','" + tphno.Text.ToString().Trim() + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
    }

   
}
