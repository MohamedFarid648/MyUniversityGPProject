<%-- 
    Document   : EditProfile
    Created on : Mar 14, 2016, 6:58:47 AM
    Author     : mohamed
--%>

<%@page import="models.MyPerson"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <% if (session.getAttribute("UserObject") != null) {
        MyPerson p = (MyPerson) session.getAttribute("UserObject");
%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <!--start rightcontent -->
      <div id="rightcontentRigs">
         <div id="top_pageRig">
           <h1>Edit Profile</h1>
           <hr/>
         
         
         </div>
         
         <div id="downRig">
             <form method="POST" action="EditMyProfile">
            

             <table style="width:100%px; height:500px; border:1px;">
<tbody id="tdst"><tr>
        <td style="text-align:center">Code<font color="red">*</font></td>
	<td>
            <%=p.getMyUniversityCodeString()%>	</td><td align="left"><div id="txtHint"></div></td>
</tr><tr>
        <td style="text-align:center">Your Faculty Code<font color="red">*</font></td>
	<td>
            <%=p.getCode() %>	</td><td align="left"><div id="txtHint"></div></td>
</tr>

<tr>
	<td> First Name: <font color="red">*</font></td>
	<td>
	<input name="FName" type="text" value="<%=p.getFName() %>"></td><td><div id="StudentNameMsg"></div></td>
</tr>
<tr>
	<td> Middle Name: <font color="red">*</font></td>
	<td>
	<input name="MName" type="text" value="<%=p.getMName() %>"></td><td><div id="StudentNameMsg"></div></td>
</tr>
<tr>
	<td> Last Name: <font color="red">*</font></td>
	<td>
	<input name="LName" type="text" value="<%=p.getLName() %>"></td><td><div id="StudentNameMsg"></div></td>
</tr>





<tr>
	<td>University Name: <font color="red">*</font></td>
        <td><%=MyPerson.ReturnUniversityName(p.getCode())%></td>
	
</tr>

<tr>
	<td>Faculty Name: <font color="red">*</font></td>
	<td><%=MyPerson.ReturnFaculityName(p.getCode())%></td>
	
</tr>
<tr>
	<td> Level: <font color="red"></font></td>
	<td>
	<%=MyPerson.ReturnLevelName(p.getCode())%></td><td><div id="StudentNameMsg"></div></td>
</tr>
<tr>
	<td> Department: <font color="red"></font></td>
	<td>
	<%=MyPerson.ReturnDepartmentName(p.getCode())%>
        
        
        </td>
        <td><div id="StudentNameMsg"></div></td>
</tr>
<tr>
	<td>Registration Date: <font color="red">*</font></td>
	<td><%=p.getDate() %></td>
	
</tr>
<tr>
	<td>Password</td>
	<td><input name="Password" type="password"  value="<%=p.getPass() %>" id="Password" onkeyup="strength(this.value)+ match(this.value,Password2.value)"></td>
</tr>

<tr>
	<td>Confirm Password</td>
	<td><input name="ConfirmPassword" type="password" value="<%=p.getPass() %>"  onkeyup="match(this.value,Password.value)" id="Password2" ></td><td><div id="match"> </div></td>
</tr>
<tr>
	<td >Email Address <font color="red"></font></td>
	<td><input name="Mail" type="text" value="<%=p.getUserEmail() %>" onblur="showUser(this.value)">
	</td>
	
</tr>
<tr>
	<td >Address <font color="red"></font></td>
	<td><input name="Address" type="text" value="<%=p.getAddress()%>" onblur="showUser(this.value)">
	</td>
	
</tr>
<tr>
	<td >Birth Date: <font color="red"></font></td>
	<td><input name="BDate" type="text" value="<%=p.getBirthDate()%>" onblur="showUser(this.value)">
	</td>
	
</tr>
<tr>
	<td>Gender <font color="red">*</font></td>
	<td><%=p.getGender() %></td>
</tr>
<!--<tr>
	<td>DOB <font color="red">*</font></td>
	<td>
            <table class="UserTable" style="margin-left: 130px;"><tbody><tr>
        	<td>Day</td>
            <td><select name="MyDay">
            <option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10" selected="">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option>            	</select>
            </td>
            
            <td>Month</td><td><select name="MyMonth">
            <option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8" selected="">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option>            	</select>
            </td>
            <td>Year</td><td><select name="MyYear">
            <option value="1940">1940</option><option value="1941">1941</option><option value="1942">1942</option><option value="1943">1943</option><option value="1944">1944</option><option value="1945">1945</option><option value="1946">1946</option><option value="1947">1947</option><option value="1948">1948</option><option value="1949">1949</option><option value="1950">1950</option><option value="1951">1951</option><option value="1952">1952</option><option value="1953">1953</option><option value="1954">1954</option><option value="1955">1955</option><option value="1956">1956</option><option value="1957">1957</option><option value="1958">1958</option><option value="1959">1959</option><option value="1960">1960</option><option value="1961">1961</option><option value="1962">1962</option><option value="1963">1963</option><option value="1964">1964</option><option value="1965">1965</option><option value="1966">1966</option><option value="1967">1967</option><option value="1968">1968</option><option value="1969">1969</option><option value="1970">1970</option><option value="1971">1971</option><option value="1972">1972</option><option value="1973">1973</option><option value="1974">1974</option><option value="1975">1975</option><option value="1976">1976</option><option value="1977">1977</option><option value="1978">1978</option><option value="1979">1979</option><option value="1980">1980</option><option value="1981">1981</option><option value="1982">1982</option><option value="1983">1983</option><option value="1984">1984</option><option value="1985">1985</option><option value="1986">1986</option><option value="1987">1987</option><option value="1988">1988</option><option value="1989">1989</option><option value="1990">1990</option><option value="1991">1991</option><option value="1992">1992</option><option value="1993">1993</option><option value="1994" selected="">1994</option><option value="1995">1995</option><option value="1996">1996</option><option value="1997">1997</option><option value="1998">1998</option><option value="1999">1999</option><option value="2000">2000</option><option value="2001">2001</option><option value="2002">2002</option><option value="2003">2003</option><option value="2004">2004</option><option value="2005">2005</option><option value="2006">2006</option><option value="2007">2007</option><option value="2008">2008</option><option value="2009">2009</option><option value="2010">2010</option><option value="2011">2011</option><option value="2012">2012</option><option value="2013">2013</option>            	</select>
            </td>
            
        </tr></tbody></table>
    </td>
</tr>
-->



	
	

    <tr>
        <td></td>

<td >
    <input name="" type="submit" value="submit">

</td>
</tr>

</tbody>

</table>  
                   </form>
 
         </div>
      
  

      </div>  
    </body>
    <% } else {
        response.sendRedirect(response.encodeURL("InvalidRequest.jsp"));

    }%>
</html>
