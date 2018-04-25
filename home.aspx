<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="_Default" Title="Untitled Page" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
 
<asp:Content ID="Content2" ContentPlaceHolderID="Contentplaceholder2" Runat="Server">       <!-- div 2 sidebar -->	
			<div class="featured">
				
				<div class="gallery">
					<!--<a href="new arrival.aspx"><img src="images/aurora.jpg" alt=""/></a>-->
<!--####################################################### SLIDER STARTS ###########################################################################-->					
	<div id="sliderFrame">
        <div id="slider">
            <img src="slider/images/image-slider-1.jpg" alt="Get 45% off on wedding season" />
            <img src="slider/images/image-slider-2.jpg" alt="Custom wears also available now at HerDesigns"/>
            <img src="slider/images/image-slider-3.jpg" alt=""/>           
            <img src="slider/images/image-slider-4.jpg" alt=""/>   
        </div>
    </div>
<!--######################################################## SLIDER ENDS #############################################################################-->
					<%--<ul class="first">
						<li><a href="new arrival.aspx"><img src="images/summer-collection.jpg" alt=""/></a></li>
						<li><a href="new arrival.aspx"><img src="images/beach-bride.jpg" alt=""/></a></li>
						<li><a href="new arrival.aspx"><img src="images/party off-s.jpg" alt=""/></a></li>
					</ul>--%>
				<%--	<ul>
						<li><a href="new arrival.aspx"><img src="images/fashionable.jpg" alt=""/></a></li>
						<li><a href="accessories.aspx"><img src="images/accessories.jpg" alt=""/></a></li>
						<li><a href="beauty care.aspx"><img src="images/skin-perfect.jpg" alt=""/></a></li>
					</ul>--%>
				</div>
            </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentplaceholder3" Runat="Server">      <!-- div 3 Content -->
				<div class="first">
				
				<marquee behavior="alternate" width="950px" scrolldelay="200"><table cellpadding="0" cellspacing="0"  align="center">
				
				<tr>
				
				<% SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["cn"].ToString());
       SqlDataAdapter da = new SqlDataAdapter("select * from advertise", cn);

       DataSet ds = new DataSet();
       da.Fill(ds);
       if (ds.Tables[0].Rows.Count > 0)
       {

           for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
           {
				    		    		    		      %>
				<td>
				
				
				<img src="advimg/<%=ds.Tables[0].Rows[i][3].ToString() %>" width="150px" height="150px" />
				
				</td>
				<%}
       } %>
				</tr>
				
				</table>
				
				</marquee>
				
				</div>
				
				
				
				
				<br />
				<div class="first">
				
					<h3>About 'Her Designs'</h3>
					<p>A bag is essential for every outfit, every season!</p>
                    <p>You can never have too many bags, and with a wide selection to choose from, 
                       you won’t struggle to find the perfect addition to your SS13 bag collection! 
                       This season says hello to festivals, so make sure you have the essential bags 
                       to carry you through.</p> 
                    <p align="justify">We are India's most-loved online shopping club and a leader of Fashion & Lifestyle in e-retail space. Since the inception in 2010, we stand today with over 3.6 million member-base across 1200 locations pan-India, and we are also the first ones to achieve over a Million fan-base on social media in the online fashion and lifestyle segment worldwide. fashionandyou.com is a venture of the Smile Group, responsible for other e-commerce initiatives like BeStylish, dealsandyou.com, FreeCultr and Juvalia&You. herdesigns.com is a part of Brand Alliance, an international organization formed by major private sales companies in Brazil, Turkey, Mexico, Australia, the Middle East, the USA, India, Russia and Switzerland.</p>
				</div>
				<div>
					<h4>Address</h4>
					<p>Xerion Retail Pvt Ltd.</br>
					Plot no. 109,</br>
					Udyog Vihar, Phase 4,</br>
					Gurgaon 122015</br>
					Email:herdesign@gmail.com<br />
					+32-819-4560</p>
				</div>
				<div class="connect">
					<h2>Follow us</h2>
					<a href="http://facebook.com/freewebsitetemplates" id="facebook">Facebook</a>
					<a href="http://twitter.com/fwtemplates" id="twitter">Twitter</a>
					<!--<a href="#" id="comments">Comments</a>-->
					<a href="http://www.flickr.com/freewebsitetemplates/" id="flickr">Flickr</a>
				</div>
</asp:Content>

