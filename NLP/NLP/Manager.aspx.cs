using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NLP
{
    public partial class Tags : System.Web.UI.Page
    {
        DataSet1TableAdapters.TagsTableAdapter MyTagsTableAdapter;
        DataSet1TableAdapters.WordsTableAdapter MyWordsTableAdapter;
        DataSet1TableAdapters.GrammersTableAdapter MyGrammersTableAdapter;
        protected void Page_Load(object sender, EventArgs e)
        {
            MyTagsTableAdapter = new DataSet1TableAdapters.TagsTableAdapter();
            MyWordsTableAdapter = new DataSet1TableAdapters.WordsTableAdapter();
            MyGrammersTableAdapter = new DataSet1TableAdapters.GrammersTableAdapter();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MyTagsTableAdapter.InsertQuery(TextBox1.Text);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            MyWordsTableAdapter.InsertQuery(int.Parse(DropDownList1.SelectedValue) , TextBox2.Text);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            MyGrammersTableAdapter.InsertQuery(TextBox3.Text);
        }
    }
}