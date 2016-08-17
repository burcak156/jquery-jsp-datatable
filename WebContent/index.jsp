<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.programmingfree.salesreport.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>GridView for Java - jQuery Data Table</title>
<link href="css/demo_page.css" rel="stylesheet" type="text/css" />
<link href="css/demo_table.css" rel="stylesheet" type="text/css" />       
<link href="css/demo_table_jui.css" rel="stylesheet" type="text/css" />

<link href="css/jquery-ui-1.8.24.custom.css" rel="stylesheet" type="text/css" media="all" />
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/jquery.dataTables.js" type="text/javascript"></script>
 <script type="text/javascript">
        $(document).ready(function () {
            $("#companies").dataTable({
                "sPaginationType": "full_numbers",
                "bJQueryUI": true               
            });
        });
 </script>
</head>
<body id="dt_example">
<div id="container">
<h1>Gridview for Java using jQuery DataTable plugin</h1>
<div id="demo_jui">
<table id="companies" class="display">
		            <thead>
		                <tr>
		                    <th><u>Country</u></th>
		                    <th><u>Revenue</u></th>
		                    <th><u>Sales_Manager</u></th>
		                    <th><u>Year</u></th>
		                </tr>
		            </thead>
		            <tbody>
		          		<% for(SalesReport c: FetchDataFromDb.GetSalesData()){ %>
						  <tr>
						    <td><%=c.getCountry()%></td>
						    <td><%=c.getRevenue()%></td>
						    <td><%=c.getSalesmanager()%></td>
						    <td><%=c.getYear()%></td>
						  </tr>
						<% } %>
		            </tbody>
		        </table>
		        </div>
 </div>
</body>
</html>