<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Advance_CountTable.aspx.cs" Inherits="feedbackform.Advance_CountTable" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>ADVANCE COUNTTABLE</title>
     <meta charset="utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
<script type="text/javascript" src="quicksearch.js"></script>
    <style>
        th{
            background-color:powderblue;
            height:40px;
        }
    </style>
</head>
<body>
   
    <form id="form1" runat="server">
        <br />  
          <h3 style="text-align:center;font-weight:bold">COUNT TABLE</h3>
         <div style="padding-left:110px;">
               <table>
                
                   <tr>
                       <td>
                           <asp:Label ID="Label1" runat="server" Text="ULB:" Font-Bold="true"></asp:Label>
                       </td>
             
                       <td>
                           <asp:TextBox ID="TxtSearch" onkeyup="myFunction()" runat="server" ></asp:TextBox>
                       </td>
                <td> 
                    
                </td>
                   </tr>

               </table>

           </div>
           <br />
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="table-responsive">

            <asp:GridView ID="Advance_Grdcounttable" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-bordered table-hover" 
              AllowPaging="true" OnPageIndexChanging="Advance_Grdcounttable_PageIndexChanging" pagesize="50"  >
                    <Columns>
                                      <asp:TemplateField HeaderText = "Sr.No" ItemStyle-Width="100">
        <ItemTemplate>
            <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
        </ItemTemplate>
    </asp:TemplateField>
                        <asp:TemplateField HeaderText="ULBNAME">
                            <ItemTemplate>
                                <asp:Label ID="lblULB" runat="server" Text='<%#Bind("appName") %>' ></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                           <asp:TemplateField HeaderText="TOTAL COUNT">
                            <ItemTemplate>
                                <asp:Label ID="lblTotalcount" runat="server" Text='<%#Bind("total_count") %>' ></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                          <asp:TemplateField HeaderText="UPDATED COUNT">
                            <ItemTemplate>
                                <asp:Label ID="lblupdatedcount" runat="server" Text='<%#Bind("updated_count") %>' ></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="DATAENTRY COUNT">
                            <ItemTemplate>
                                <asp:Label ID="lblFullName" runat="server" Text='<%#Bind("_count") %>' ></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                               <asp:TemplateField HeaderText="DATAENTRY TodaysCOUNT">
                            <ItemTemplate>
                                <asp:Label ID="lbltodayscount" runat="server" Text='<%#Bind("Todays_count") %>' style='color:green;font-weight:bolder'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="DATE">
                            <ItemTemplate>
                               <asp:Label ID="lbldate" runat="server" Text='<%#Bind("_date","{0:dd/MM/yyyy}") %>' ></asp:Label>
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
    </form>
</body>
</html>
