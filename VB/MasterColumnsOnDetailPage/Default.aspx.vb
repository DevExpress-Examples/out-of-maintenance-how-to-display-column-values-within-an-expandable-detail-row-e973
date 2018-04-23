Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Collections
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls

Namespace MasterColumnsOnDetailPage
	Partial Public Class _Default
		Inherits System.Web.UI.Page
		Protected Sub Page_Init(ByVal sender As Object, ByVal e As EventArgs)
			ASPxGridView1.DataSource = GetData()
		End Sub

		Private Function GetData() As DataTable
			Dim table As New DataTable()
			table.Columns.Add("ID", GetType(Integer))
			table.Columns.Add("Category")
			table.Columns.Add("Description")
			table.Rows.Add(1, "Beverages", "Soft drinks, coffees, teas, beers, and ales")
			table.Rows.Add(2, "Condiments", "Sweet and savory sauces, relishes, spreads, and seasonings")
			table.Rows.Add(3, "Confections", "Desserts, candies, and sweet breads")
			Return table
		End Function

		Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
			ASPxGridView1.DataBind()
		End Sub
	End Class
End Namespace
