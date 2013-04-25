using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace NLP
{
    public partial class index : System.Web.UI.Page
    {
        ArrayList listGrammers;
        DataSet1TableAdapters.GrammersTableAdapter MyGrammersTableAdapter;
        protected void Page_Load(object sender, EventArgs e)
        {
            listGrammers = new ArrayList();
            MyGrammersTableAdapter = new DataSet1TableAdapters.GrammersTableAdapter();
            DataSet1.GrammersDataTable MyGrammersDataTable = MyGrammersTableAdapter.GetData();
            foreach ( DataSet1.GrammersRow dr in MyGrammersDataTable.Rows)
            {
                listGrammers.Add(dr.Grammer);
            }
            Label1.Text = "";
            foreach (String AL in listGrammers)
            {
                Label1.Text = Label1.Text + AL+" - ";
            }

        }
    }
}