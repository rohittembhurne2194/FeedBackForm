<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlayStoreLink.aspx.cs" Inherits="feedbackform.PlayStoreLink" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  

<title>
FeedbackFORM
</title>
<style >
body{
background-color: #fff;

}
*{box-sizing: border-box;}
h3{

font-size:20px;
color:white;
font-weight:bold;
text-align: center;
}
.container{
	border-radius: 5px;
	background-color: #f2f2f2;
	width: 450px;
    float: center;
    padding-bottom: 40px;

}
.btn:hover{
	background-color:#20c997;
	color: white;

}
.btn-default{
	
	color: white;
	padding: 12px 20px;
	border:none;
	border-radius: 4px;
	cursor: pointer;
	
}
.btn{

    color: white;
	background-color: #3ab59e; 
    /*margin: 0 auto;*/
  display:block;
}



input[type=text],select,textarea{
	width: 100%;
	padding: 12px;
	border:1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	margin-top: 6px;
	margin-bottom: 16px;
	resize: vertical;
}
.page-header {
    background: #fff;
    box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.1);
    z-index: 8;

}
.container-fluid {
    margin-right: auto;
    margin-left: auto;

}
.no-margin-bottom {
    margin-bottom: 0 !important;
    color: #000;
}
header.page-header {
    padding: 20px 0;
    color: #442709;
}
.rating {
    float:left;
}

/* :not(:checked) is a filter, so that browsers that don’t support :checked don’t 
   follow these rules. Every browser that supports :checked also supports :not(), so
   it doesn’t make the test unnecessarily selective */
.rating:not(:checked) > input {
    position:absolute;
    top:-9999px;
    clip:rect(0,0,0,0);
}

.rating:not(:checked) > label {
    float:right;
    width:1em;
    padding:0 .1em;
    overflow:hidden;
    white-space:nowrap;
    cursor:pointer;
    font-size:200%;
    line-height:1.2;
    color:#ddd;
    text-shadow:1px 1px #bbb, 2px 2px #666, .1em .1em .2em rgba(0,0,0,.5);
}

.rating:not(:checked) > label:before {
    content: '★ ';
}

.rating > input:checked ~ label {
    color: gold;
    text-shadow:1px 1px #c60, 2px 2px #940  #c60 , .1em .1em .2em rgba(0,0,0,.5);
}

.rating:not(:checked) > label:hover,
.rating:not(:checked) > label:hover ~ label {
    color:#f70;
    text-shadow:1px 1px goldenrod, 2px 2px #B57340, .1em .1em .2em rgba(0,0,0,.5);
}

.rating > input:checked + label:hover,
.rating > input:checked + label:hover ~ label,
.rating > input:checked ~ label:hover,
.rating > input:checked ~ label:hover ~ label,
.rating > label:hover ~ input:checked ~ label {
    color: #ea0;
    text-shadow:1px 1px goldenrod, 2px 2px #B57340, .1em .1em .2em rgba(0,0,0,.5);
}

.rating > label:active {
    position:relative;
    top:2px;
    left:2px;
}

</style>
<link href="http://www.cssscript.com/wp-includes/css/sticky.css" rel="stylesheet" type="text/css">

</head>
<body>
    <div>
    <h3 style="padding-bottom: 10px;text-align:center;font-weight:800" id="incor"></h3>

    </div>   
        <p style="padding: 10px;text-align:center;font-weight:800;font-size:18px"  class="text-danger invalid_pg" > </p>
    <form method="post" runat="server" name="Form1" id="linkform">
    <%--<asp:TextBox ID="txtCustomerId" runat="server"></asp:TextBox>--%>
        <asp:HiddenField ID="Hdnlink" runat="server" />
        <asp:HiddenField ID="HdnappId" runat="server" />
                <asp:HiddenField ID="HdnpId" runat="server" />

        <asp:HiddenField ID="hdnulb" runat="server" />
        <asp:HiddenField ID="hdnsid" runat="server" />
        <asp:HiddenField ID="hdnAppId_url" runat="server" />

        </form>
</body>
</html>
<script type="text/javascript">
    $(document).ready(function () {
        var query, parms, position, key, val, lat, log;

        query = location.search.substring(1);
        parms = query.split('&');

        var qryparam = {};
        parms.forEach(function (value, key) {
            // console.log(value+"--"+key);
            var val = value.split('=');
            qryparam[val[0]] = val[1];
            // debugger;
        })
        "appid" in qryparam ? $('#hdnAppId_url').val(qryparam.appid) : $('#hdnAppId_url').val(0);
        "np" in qryparam ? $('#hdnulb').val(qryparam.np) : $('#hdnulb').val('');
        "sid" in qryparam ? $('#hdnsid').val(qryparam.sid) : $('#hdnsid').val('');
        // alert(qryparam.np);
        //alert($('#hdnulb').val());
       // alert($('#hdnsid').val());
       // alert($('#hdnAppId_url').val());

        if ($('#hdnulb').val() == '') {
            //alert('Incorrect URL');
            $(".invalid_pg").html("Incorrect URL");
            return false;

        }

        if ($('#hdnsid').val() == '') {
            //alert('Incorrect URL');
            $(".invalid_pg").html("Incorrect URL");
            return false;

        }


        if ($('#hdnAppId_url').val() != HdnappId.value)
        {
           // alert('Incorrect URL');
            $("#incor").html("Incorrect URL");
           
        }
        else
        {
            var link = Hdnlink.value
            if (Hdnlink.value == "/FeedbackForm?") {
                link += query;
            }
            window.location.href = link; //Will take you to Google.
           // alert("yes");
        }

        //alert($('#hdnsid').val());
        //alert($('#hdnulb').val());



    });


    //$('#btnsubmit').click(function () {
    //    if ($('#hdnulb').val() == '' || $('#hdnsid').val() == '' || $('#hdnAppId').val() == '') {
    //        // alert('Incorrect URL');
    //        $(".invalid_pg").html("Incorrect URL");
    //        return false;

    //    }

    //});

</script>
