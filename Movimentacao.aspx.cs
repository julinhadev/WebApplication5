using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication5
{
    public partial class Movimentacao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadMovimentacao();
            }
        }

        SqlConnection con = new SqlConnection("Data Source=localhost\\SQLEXPRESS;Initial Catalog=Porto;Integrated Security=True");
        
        protected void btnCadastrarMov_Click(object sender, EventArgs e)
        {
            con.Open();

            SqlCommand comn = new SqlCommand("insert into tbMovimentacao values('" + txtCodMov.Text + "', '" + ddTipoMov.SelectedValue + "', '" + txtDataIni.Text + "', '" + txtDataFim.Text + "')", con);
            comn.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Cadastro realizado com sucesso!')", true);
            LoadMovimentacao();

            con.Close();
        }

        protected void btnAlterarMov_Click(object sender, EventArgs e)
        {
            con.Open();

            SqlCommand comn = new SqlCommand("update tbMovimentacao set id_cliente = '" + txtCodMov.Text + "', tipo_movimentacao = '" + ddTipoMov.SelectedValue + "', dt_ht_ini = '" + txtDataIni.Text + "', dt_hr_fim = '" + txtDataFim.Text + "' where id_cliente = '" + txtCodMov.Text + "'", con);
            comn.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Cadastro alterado com sucesso!')", true);
            LoadMovimentacao();

            con.Close();
        }

        protected void btnDeletarMov_Click(object sender, EventArgs e)
        {
            con.Open();

            SqlCommand comn = new SqlCommand("delete tbMovimentacao where id_cliente = '" + int.Parse(txtCodMov.Text) + "'", con);
            comn.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Cadastro deletado com sucesso!')", true);
            LoadMovimentacao();

            con.Close();
        }

        protected void btnConsultarmov_Click(object sender, EventArgs e)
        {
            SqlCommand comn = new SqlCommand("select * from tbMovimentacao where id_cliente = '" + int.Parse(txtCodMov.Text) + "'", con);
            SqlDataAdapter d = new SqlDataAdapter(comn);
            DataTable dt = new DataTable();
            d.Fill(dt);
            consultaMov.DataSource = dt;
            consultaMov.DataBind();
        }

        void LoadMovimentacao()
        {
            SqlCommand comn = new SqlCommand("select * from tbMovimentacao", con);
            SqlDataAdapter d = new SqlDataAdapter(comn);
            DataTable dt = new DataTable();
            d.Fill(dt);
            consultaMov.DataSource = dt;
            consultaMov.DataBind();
        }

        protected void btnBuscaMov_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comn = new SqlCommand("select * from tbMovimentacao where id_cliente = '" + int.Parse(txtCodMov.Text) + "'", con);
            SqlDataReader r = comn.ExecuteReader();
            while (r.Read())
            {
                ddTipoMov.SelectedValue = r.GetValue(1).ToString();
                txtDataIni.Text = r.GetValue(2).ToString();
                txtDataFim.Text = r.GetValue(3).ToString();
            }
            con.Close();
        }
    }
}