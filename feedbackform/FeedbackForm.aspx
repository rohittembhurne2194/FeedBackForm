<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FeedbackForm.aspx.cs" Inherits="feedbackform.FeedbackForm" %>

<!DOCTYPE html>
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
/*background-color: #388e3c;*/
background:#54abe9;

}
.box-show{
    box-shadow: 2px 3px 2px rgb(0 0 0 / 10%), 3px -3px 1px 0px rgb(0 0 0 / 8%);
    background: #fff;
    border-radius: 8px;
    padding: 7px;
}
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

        padding-left: 2%;
    border: 10px solid;
/*  border-image: linear-gradient( rgb(52 42 219) 0%, rgb(76 200 213), rgb(86 62 217) 0%, rgb(73 189 223) )1;*/
    border-image:linear-gradient( rgb(52 42 219) 0%, rgb(103 132 211), rgb(86 62 217) 0%, rgb(182 136 229) )1;
}

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
	/*background-color: #3ab59e;*/
    background:#54abe9;
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
    border-radius: 8px;

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
    padding: 10px 0px 0px 0px;
    color: #442709;
}
.rating {
    float:left;
    margin-top: 3%;
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
	.m_outer{
   			 display: flex;
        flex-direction: row;
		}
		.m_inner{
			width:100%;
		}

        .radio_ques_yes{
            padding:8px;
            font-weight:500;

        }
        .radio_ques_no{
            padding:8px;
            font-weight:500;
        }
</style>
<link href="http://www.cssscript.com/wp-includes/css/sticky.css" rel="stylesheet" type="text/css">	

</head>
    <h3 style="padding-bottom: 10px;text-align:center;font-weight:800" class="text-danger invalid_pg"></h3>
<body>

    <div  id="body_id">
      <%--  <h3 style="padding-bottom: 10px" class="top_head"> FEEDBACK FORM</h3>--%>
        <div class="container">
     <%--<p style="padding: 10px;"  class="text-danger invalid_pg" > </p>--%>
	<header class="page-header" >
		<div class="container-fluid" style="padding-left:0px;" >
            <div class="m_outer">
                 <div class="m_inner" style="width:60%;margin:auto;margin-right:25px;padding-left: 2%;"> <h4 class="no-margin-bottom top_head" style="color:#54abe9;font-weight: bold;padding:7px;border:1px solid  #0000003d;border-radius:25px;text-align:center"> FEEDBACK FORM</h4></div>
                 <div class="m_inner" style="width:40%">
                         <div class="form-group" style="margin-bottom:10px" id="top_scroll">
                             <label style="margin:0px;font-size:12px" id="lang_label">Select Language</label>
                          <select class="form-control" id="sel1" style="margin:0px;">
                            <option value="1">English</option>
                            <option value="2">मराठी</option>
                            <option value="3">हिंदी</option>
                          </select>
                        </div>
                 </div>
             </div>
          
      </div>
</header>
<form name="myForm" method="post" runat="server">
	

<div class="form-group box-show">
<p style="color: black" id="que_one"> 1.Does the toilet remain open for the whole day?</p>
  <asp:RadioButton ID="rdbtn1" GroupName="radio" runat="server" /><label class="radio_ques_yes">Yes</label>
    <asp:RadioButton ID="rdbtn2" GroupName="radio" runat="server" /><label class="radio_ques_no">No</label>
</div>
<div class="form-group box-show">
<p style="color: black" id="que_two"> 2.Is the toilet cleaned regularly?</p>
  <asp:RadioButton ID="rdbtn3" GroupName="radio1" runat="server" /><label class="radio_ques_yes">Yes</label>
    <asp:RadioButton ID="rdbtn4" GroupName="radio1" runat="server" /><label class="radio_ques_no">No</label>
</div>
<div class="form-group box-show">
<p style="color: black" id="que_three"> 3.Is there sufficient water available in the toilet?</p>
 <asp:RadioButton ID="rdbtn5" GroupName="radio2" runat="server" /><label class="radio_ques_yes">Yes</label>
    <asp:RadioButton ID="rdbtn6" GroupName="radio2" runat="server" /><label class="radio_ques_no">No</label>
</div>
<div class="form-group box-show" style="height:100px;">
<p style="color: black" id="que_four">4.Please provide your valuable rating for the toilet:</p>

   <%-- <asp:DropDownList ID="ddlstar" runat="server">
        <asp:ListItem>Select Star</asp:ListItem>
        <asp:ListItem>7 star</asp:ListItem>
        <asp:ListItem>6 star</asp:ListItem>
        <asp:ListItem>5 star</asp:ListItem>
        <asp:ListItem>4 star</asp:ListItem>
        <asp:ListItem>3 star</asp:ListItem>
        <asp:ListItem>2 star</asp:ListItem>
        <asp:ListItem>1 star</asp:ListItem>
    </asp:DropDownList>--%>
   
         
<div  Class="rating" >
       <asp:RadioButton ID="Rdbstar7" runat="server" value="7" /><label value="88" for="star7" checkid="Rdbstar7" title="7 स्टार">7 stars</label>
       <asp:RadioButton ID="Rdbstar6" runat="server" value="6" /><label for="star6" checkid="Rdbstar6" title="6 स्टार">6 stars</label>
   <asp:RadioButton ID="Rdbstar5" runat="server" value="5" /><label for="star5" checkid="Rdbstar5" title="5 स्टार">5 stars</label>
    <asp:RadioButton ID="Rdbstar4" runat="server" value="4"  /><label for="star4" checkid="Rdbstar4" title="4 स्टार">4 stars</label>
    <asp:RadioButton ID="Rdbstar3" runat="server" value="3" /><label for="star3" checkid="Rdbstar3" title="3 स्टार">3 stars</label>
    <asp:RadioButton ID="Rdbstar2" runat="server" value="2" /><label for="star2" checkid="Rdbstar2" title="2 स्टार">2 stars</label>
    <asp:RadioButton ID="Rdbstar1" runat="server" value="1"  /><label for="star1" checkid="Rdbstar1" title="1 स्टार">1 stars</label>
 <%--  <input type="radio" id="star5" name="rating" value="5" /><label for="star5" title="5 स्टार">5 stars</label>
    <input type="radio" id="star4" name="rating" value="4" /><label for="star4" title="4 स्टार">4 stars</label>
    <input type="radio" id="star3" name="rating" value="3" /><label for="star3" title="3 स्टार">3 stars</label>
    <input type="radio" id="star2" name="rating" value="2" /><label for="star2" title="2 स्टार">2 stars</label>
    <input type="radio" id="star1" name="rating" value="1" /><label for="star1" title="1 स्टार">1 star</label>--%>
</div>
     <asp:Label ID="countstar"  style="float:left;padding: 10px 0px 0px 15px;margin-top: 3%;" runat="server" >0/7</asp:Label>  
</div><%--<br /><br />--%>
     <div class="form-group box-show">
<p style="color: black" id="que_five">5.All toilet seats and urinals clean and usable at all times?</p>
 <asp:RadioButton ID="RadioButton1" GroupName="radio3" runat="server" /><label class="radio_ques_yes">Yes</label>
    <asp:RadioButton ID="RadioButton2" GroupName="radio3" runat="server" /><label class="radio_ques_no">No</label>
</div>
    <div class="form-group box-show">
<p style="color: black" id="que_six"> 6. Wash basin(s)/hand wash facility clean and usable at all times?</p>
 <asp:RadioButton ID="RadioButton3" GroupName="radio4" runat="server" /><label class="radio_ques_yes">Yes</label>
    <asp:RadioButton ID="RadioButton4" GroupName="radio4" runat="server" /><label class="radio_ques_no">No</label>
</div>
    <div class="form-group box-show">
<p style="color: black" id="que_seven"> 7. Adequate ventilation facility ?</p>
 <asp:RadioButton ID="RadioButton5" GroupName="radio5" runat="server" /><label class="radio_ques_yes">Yes</label>
    <asp:RadioButton ID="RadioButton6" GroupName="radio5" runat="server" /><label class="radio_ques_no">No</label>
</div>
    <div class="form-group box-show">
<p style="color: black" id="que_eight"> 8. Functional bolting arrangements on all doors of all toilet seats ?</p>
 <asp:RadioButton ID="RadioButton7" GroupName="radio6" runat="server" /><label class="radio_ques_yes">Yes</label>
    <asp:RadioButton ID="RadioButton8" GroupName="radio6" runat="server" /><label class="radio_ques_no">No</label>
</div>
    <div class="form-group box-show">
<p style="color: black" id="que_nine"> 9. Toilet floor is dry and clean at all times?</p>
 <asp:RadioButton ID="RadioButton9" GroupName="radio7" runat="server" /><label class="radio_ques_yes">Yes</label>
    <asp:RadioButton ID="RadioButton10" GroupName="radio7" runat="server" /><label class="radio_ques_no">No</label>
</div>
    <div class="form-group box-show">
<p style="color: black" id="que_ten"> 10. Available soap / operational soap dispenser?</p>
 <asp:RadioButton ID="RadioButton11" GroupName="radio8" runat="server" /><label class="radio_ques_yes">Yes</label>
    <asp:RadioButton ID="RadioButton12" GroupName="radio8" runat="server" /><label class="radio_ques_no">No</label>
</div>
    <div class="form-group box-show">
<p style="color: black" id="que_eleven"> 11. Ladies toilets have vending machine/ mechanism for sanitary napkins?</p>
 <asp:RadioButton ID="RadioButton13" GroupName="radio9" runat="server" /><label class="radio_ques_yes">Yes</label>
    <asp:RadioButton ID="RadioButton14" GroupName="radio9" runat="server" /><label class="radio_ques_no">No</label>

</div>
    <div class="form-group box-show" style="height:415px;">
         <%-- Hidden fields start--%>
    <asp:HiddenField ID="hdnsid"  runat="server" />
            <asp:HiddenField ID="hdnulb" runat="server" />  
         <asp:HiddenField ID="hdnLangId" runat="server" />  
         <asp:HiddenField ID="hdnAppId" runat="server" />  
         <%-- Hidden fields End--%>
	<label for="fullname" id="user_name" > Full Name:</label>
            
            <asp:TextBox ID="txtfullname" runat="server" placeholder="Your Full Name...." name="FullName" required></asp:TextBox>   
              
   
    <div class="form-group">
        	<label for="MobNo" id="user_number" >Mobile No:</label> <p id="err_phone" class="text-danger"></p>
        <asp:TextBox ID="txtmobile" runat="server" placeholder="Your Mobile No...." name="MobileNo" MaxLength="10"></asp:TextBox>
    </div>
    <div class="form-group" style="float: left">
	<label for="complaint" id="user_feedback" >Feedback </label>
        <asp:TextBox ID="txtfeedback" runat="server" placeholder="Post your feedback here......" style="height: 150px;width:375px" TextMode="MultiLine" ></asp:TextBox>
 </div> </div>

       <asp:Button ID="btnsubmit" runat="server" class="btn" Text="submit" style="height: 40px;width: 80px;" OnClick="btnsubmit_Click" />
   
</form>
  
</div>
    </div>

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
        "appid" in qryparam ? $('#hdnAppId').val(qryparam.appid) : $('#hdnAppId').val(0);
        "np" in qryparam ? $('#hdnulb').val(qryparam.np) : $('#hdnulb').val('');
        "sid" in qryparam ? $('#hdnsid').val(qryparam.sid) : $('#hdnsid').val('');

       // alert(qryparam.np);
        //alert($('#hdnulb').val());
        //alert($('#hdnsid').val());
      // alert($('#hdnAppId').val());
 


        if ($('#hdnulb').val() == '') {
            //alert('Incorrect URL');
            $(".invalid_pg").html("Incorrect URL");
            $("#body_id").hide();
            $("body").css("background","white");
            return false;

        }

        if ($('#hdnAppId').val() == '') {
            //alert('Incorrect URL');
            $(".invalid_pg").html("Incorrect URL");
            $("#body_id").hide();
            $("body").css("background", "white");
            return false;

        }
        if ($('#hdnsid').val() == '') {
            //alert('Incorrect URL');
            $(".invalid_pg").html("Incorrect URL");
            $("#body_id").hide();
            $("body").css("background", "white");
            return false;

        }


 //if(myarray[1] == undefined){

 //    alert('S_Id is not given in URL');

 //}


    });


    $('#btnsubmit').click(function () {
        if ($('#hdnulb').val() == '' || $('#hdnsid').val() == '' || $('#hdnAppId').val() == '') {
            // alert('Incorrect URL');
            $(".invalid_pg").html("Incorrect URL");
            return false;

        }

    });

</script>

<script type="text/javascript">
    $(document).ready(function () {
        $('.rating label').click(function(){
            var id = $(this).attr('checkid');
            $('.rating input').prop("checked", '');
            $('.rating input#' + id).prop("checked", true);

            var print_val = $('.rating input#' + id).attr("value");
           // alert(print_val);

            $('#countstar').text(print_val+"/7");
        })
    });
</script>
<script type="text/javascript" language="javascript">
    $('#hdnLangId').val(1);
    $("#txtmobile").keypress(function (e) {
        //if the letter is not digit then display error and don't type anything
        if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57) && e.which != 44) {
            //display error message
            //$("#err_phone").html("केवल अंक | Digits Only").show().delay(1500).show().fadeOut('slow');
            $("#err_phone").html("Digits Only").show().delay(2500).show().fadeOut('slow');
            //alert('hii');
            return false;
        }
    });
    $('select').on('change', function () {
        $('#hdnLangId').val($('#sel1').val());
        //alert($('#sel1').val());
        $('html, body').animate({
            scrollTop: $("#top_scroll").offset().top
        });
        if (this.value == 1) {
            // alert("English");
            $(".top_head").text("FEEDBACK FORM");
            $("#lang_label").text("Select Language");
            $(".radio_ques_yes").text("Yes");
            $(".radio_ques_no").text("No");
            $("#que_one").text("1. Does the toilet remain open for the whole day?");
            $("#que_two").text("2. Is the toilet cleaned regularly?");
            $("#que_three").text("3. Is there sufficient water available in the toilet?");
            $("#que_four").text("4. Please provide your valuable rating for the toilet:");
            $("#que_five").text("5. All toilet seats and urinals clean and usable at all times:");
            $("#que_six").text("6. Wash basin(s)/hand wash facility clean and usable at all times:");
            $("#que_seven").text("7. Adequate ventilation facility:");
            $("#que_eight").text("8. Functional bolting arrangements on all doors of all toilet seats:");
            $("#que_nine").text("9. Toilet floor is dry and clean at all times:");
            $("#que_ten").text("10. Available soap / operational soap dispenser:");
            $("#que_eleven").text("11. Ladies toilets have vending machine/ mechanism for sanitary napkins:");
            $("#user_name").text("Full Name * :");
            $("#user_number").text("Mobile No : ");
            $("#user_feedback").text("Feedback :");
            $("#btnsubmit").attr("value", "Submit");

            $("#txtfullname").attr("placeholder", "Your Full Name....").val("").focus().blur();
            $("#txtmobile").attr("placeholder", "Your Mobile No....").val("").focus().blur();
            $("#txtfeedback").attr("placeholder", "Post your feedback here......").val("").focus().blur();
        }
        if (this.value == 2) {
           // alert("Marathi");
            $(".top_head").text("अभिप्राय फॉर्म");
            $("#lang_label").text("भाषा निवडा");
            $(".radio_ques_yes").text("होय");
            $(".radio_ques_no").text("नाही");
            $("#que_one").text("1. शौचालय वापरण्यासाठी पूर्ण वेळ उपलब्ध असते काय?");
            $("#que_two").text("2. शौचालयाची स्वच्छता वेळोवेळी होत असते काय?");
            $("#que_three").text("3. शौचालयामध्ये पाण्याची उपलब्धता नेहमी असते काय?");
            $("#que_four").text("4. सदर शौचालयास आपणाद्वारे मानांकन देण्यात यावे:");
            $("#user_name").text("पूर्ण नाव * :");
            $("#user_number").text("मोबाइल क्रमांक : ");
            $("#user_feedback").text("अभिप्राय :");
            $("#btnsubmit").attr("value", "सबमिट");


            $("#txtfullname").attr("placeholder", "तुमचे पुर्ण नाव....").val("").focus().blur();
            $("#txtmobile").attr("placeholder", "तुमचा मोबाईल क्रमांक ....").val("").focus().blur();
            $("#txtfeedback").attr("placeholder", "आपला अभिप्राय येथे पोस्ट करा ......").val("").focus().blur();
        }
      

        if (this.value == 3) {
            // alert("Hindi");
            $(".top_head").text("फीडबैक फॉर्म");
            $("#lang_label").text("भाषा चुने");
            $(".radio_ques_yes").text("हाँ");
            $(".radio_ques_no").text("नहीं");
            $("#que_one").text("1. क्या शौचालय पूरे दिन खुला रहता है?");
            $("#que_two").text("2. क्या समय-समय पर शौचालय की सफाई की जाती है?");
            $("#que_three").text("3. क्या शौचालय में हमेशा पानी उपलब्ध रहता है?");
            $("#que_four").text("4. कृपया शौचालय के लिए अपनी बहुमूल्य रेटिंग प्रदान करें:");
            $("#user_name").text("पूरा नाम * :");
            $("#user_number").text("मोबाइल नंबर : ");
            $("#user_feedback").text("फीडबैक :");
            $("#btnsubmit").attr("value", "सबमिट");


            $("#txtfullname").attr("placeholder", "आपका पूरा नाम....").val("").focus().blur();
            $("#txtmobile").attr("placeholder", "आपका मोबाइल नंबर....").val("").focus().blur();
            $("#txtfeedback").attr("placeholder", "अपना फीडबैक यहाँ पोस्ट करें......").val("").focus().blur();
        }
    });

</script>