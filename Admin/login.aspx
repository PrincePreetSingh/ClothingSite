<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Admin_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<title>Her Designs</title>
		<link rel="stylesheet" type="text/css" href="StyleSheet.css" />
		<link rel="stylesheet" href="../css/style.css" type="text/css" />
		
		<link rel="stylesheet" href="../menu/menu.css" type="text/css"/>	  
        <style type="text/css">
            .style1
            {
                height: 19px;
            }
        </style>
	  
    </head>
	<body>
	    <form id="form1" runat="server">
	<div >
		<div  class="header">
			<div>
				<a href="index.aspx" id="logo"><img src="../images/logo.gif" alt="logo"/></a>
	           
				</div> 
      
            	
			</div>
			<div style="background-color:#e70187; height:35px">
	
			
			</div>
			<div style="width:1000px; height:400px;margin:auto;">
			<div style="float:left; background-color:white; width:400px; height:100%">
			
			<img src="../images/login.jpg" width="250px" height="250px" />
			
			</div>
			<div  style="float:left; background-color:White; width:600px; height:100%">
			
			<table cellpadding="0" cellspacing="0" width="400px" align="center">
			<tr><td>&nbsp;</td></tr>
			<tr><td valign="middle">  
			
			<table cellpadding="0" cellspacing="0" width="400px" align="left" 
                    class="tableborder">
			<tr><td colspan="2" class="toptdback">Login</td></tr>
			<tr><td  colspan="2">&nbsp;</td></tr>
			<tr><td width="50%" class="lefttext">UserName</td><td align="left">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td></tr>
			<tr><td  colspan="2" class="style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" Display="None" ErrorMessage="Enter UserName"></asp:RequiredFieldValidator>
                </td></tr>
			<tr><td width="50%" class="lefttext">Password</td><td align="left">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td></tr>
			<tr><td  colspan="2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" Display="None" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
                </td></tr>
			<tr><td  colspan="2">&nbsp;</td></tr>
			<tr><td width="50%" class="lefttext">&nbsp;</td><td align="left">
                <asp:Button ID="Button1" runat="server" Text="Login" Width="60px" 
                    onclick="Button1_Click" />
                </td></tr>
			<tr><td width="50%" class="lefttext">&nbsp;</td><td>&nbsp;</td></tr>
			<tr><td width="50%" class="lefttext" colspan="2">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td></tr>
			</table>
			
			
			</td></tr>
			</table>
			
              
			
			
			
			
			</div>
			
			</div>
		<div class="footer">
			<p>© 2014 Herdesigns. All Rights Reserved.</p>
		</div>
		</div>
	    </form>
	</body>
</html>

