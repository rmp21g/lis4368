<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="Customers file.">
		<meta name="author" content="Ryan M Parks">
		<link rel="icon" href="favicon.ico">

		<title>LIS4368 - JSP Forms</title>

		<%@ include file="/css/include_css.jsp" %>		

	</head>
	<body>

		<!-- display application path -->
		<% //= request.getContextPath()%>
		
		<!-- also, can find path like this...example: <a href="${pageContext.request.contextPath}${'/a5/index.jsp'}">A5</a> -->	
		
		<%@ include file="/global/nav_global.jsp" %>	

		<div class="container-fluid">
			<div class="starter-template">
				<div class="page-header">
					<%@ include file="/p2/global/header.jsp" %>
				</div>

				<h2>Customers</h2>

				<% //for debugging, test input (test servlet provided): action="testInput" %>					

				<form id="add_customer_form" method="post" class="form-horizontal" action="${pageContext.request.contextPath}/customerAdmin">										
					<% // goes to info/CustomerServlet.java %>
					<input type="hidden" name="action" value="add_customer">
					<input type="submit" value="Add">
				</form>
				
				<!-- Responsive table.  -->						
				<div class="table-responsive">
					<table id="myTable" class="table table-striped table-condensed" >
						<thead>
							<tr>
								<th class="text-center">Fname</th>
								<th class="text-center">Lname</th>
								<th class="text-center">Street</th>
								<th class="text-center">City</th>
								<th class="text-center">State</th>
								<th class="text-center">Zip</th>
								<th class="text-center">Phone</th>
								<th class="text-center">Email</th>
								<th class="text-center">Balance</th>
								<th class="text-center">Total Sales</th>
								<th class="text-center">Notes</th>
								<th class="text-center">&nbsp;</th>
								<th class="text-center">&nbsp;</th>
							</tr>
						</thead>
							
							<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
							<c:forEach var="user" items="${users}">
								<tr class="text-left">
									<td><c:out value="${user.fname}" /></td>
									<td><c:out value="${user.lname}" /></td>
									<td><c:out value="${user.street}" /></td>
									<td><c:out value="${user.city}" /></td>
									<td><c:out value="${user.state}" /></td>
									<td><c:out value="${user.zip}" /></td>
									<td><c:out value="${user.phone}" /></td>
									<td><c:out value="${user.email}" /></td>
									<td class="text-right"><c:out value="${user.balance}" /></td>
									<td class="text-right"><c:out value="${user.totalSales}" /></td>
									<td><c:out value="${user.notes}" /></td>

									<!-- Create form buttons and hidden input fields to pass data.  //-->
									<% //for debugging, test input (test servlet provided): action="testInput" %>					
									<td>
										<form
											id="edit_customer_form"
											class="form-horizontal"
											action="${pageContext.request.contextPath}/customerAdmin"
											method="post">
											<input type="hidden" name="modify_customer" value="${user.id}" />
										<button type="submit">Edit</button>
										</form>
									</td>

									<td>
										<form
											onsubmit="return confirm('Do you really want to delete record?');"
											id="delete_customer_form"
											class="form-horizontal"
											action="${pageContext.request.contextPath}/customerAdmin"
											method="post">
											<input type="hidden" name="delete_customer" value="${user.id}" />
										<button type="submit">Delete</button>
										</form>
									</td>									
									
								</tr>
							</c:forEach>
							
						</table>

					</div> <!-- end table-responsive -->

	<%@ include file="global/footer.jsp" %>

	</div> <!-- end starter-template -->
 </div> <!-- end container -->

 	<%@ include file="/js/include_js.jsp" %>		 

 <script type="text/javascript">
	 $(document).ready(function(){
		 $('#myTable').DataTable({
			 //https://datatables.net/reference/option/lengthMenu
			 //1st inner array page length values; 2nd inner array displayed options
			 //Note: -1 is used to disable pagination (i.e., display all rows)
			//Note: pageLength property automatically set to first value given in array
		 "lengthMenu": [ [10, 25, 50, -1], [10, 25, 50, "All"] ],
	 //permit sorting (i.e., no sorting on last two columns: delete and edit)
    "columns":
		[
		null,			
		null,
		null,
		null,
		null,			
		null,
		null,
		null,
		null,			
		null,
		null,
     { "orderable": false },
     { "orderable": false }			
    ]
		 });
});
	</script>
 
</body>
</html>
