<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GoogleHit.aspx.cs" Inherits="feedbackform.GoogleHit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>GoogleHit</title>
     <meta charset="utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>

    <style>
        th{
            background-color:powderblue;
            height:40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <h3 style="text-align:center;font-weight:bold">Google Hit Details</h3>
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="table-responsive">

            <asp:GridView ID="Grdgooglehit" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-bordered table-hover" 
              AllowPaging="true" OnPageIndexChanging="Grdgooglehit_PageIndexChanging">
                    <Columns>
                                       <asp:TemplateField HeaderText = "Sr.No" ItemStyle-Width="100">
        <ItemTemplate>
            <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
        </ItemTemplate>
    </asp:TemplateField>
                        <asp:TemplateField HeaderText="ID">
                            <ItemTemplate>
                                <asp:Label ID="lblID" runat="server" Text='<%#Bind("Id") %>' ></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="API">
                            <ItemTemplate>
                                <asp:Label ID="lblAPI" runat="server" Text='<%#Bind("API") %>' ></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                           <asp:TemplateField HeaderText="EMAILID">
                            <ItemTemplate>
                                <asp:Label ID="lblEmail" runat="server" Text='<%#Bind("EmailId") %>' ></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="HIT">
                            <ItemTemplate>
                                <asp:Label ID="lblHIT" runat="server" Text='<%#Bind("hit") %>' ></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="DATE">
                            <ItemTemplate>
                               <asp:Label ID="lbldate" runat="server" Text='<%#Bind("Date","{0:dd/MM/yyyy}") %>' ></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
        </div>
                            <a type="btngooglehit" class="btn btn-outline-secondary" href="Index.html" style="font-weight:bold;float:right">
BACK
          </a>
      </div>
    </div>
  </div>

    </div>


    </form>
</body>
</html>
