<%@page import="com.db.util.DBConnection"%>
<%@ page import="java.sql.*" %>
<style>
.table-container {
    width: 100%;
    overflow-x: auto;
    max-height: 300px; 
}

table {
    width: 100%;
    border-collapse: collapse;
}

th, td {
    padding: 8px 12px;
    text-align: left;
}

th {
    position: sticky;
    top: 0;
    z-index: 2;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

th:first-child {
    left: 0;
    z-index: 1;
}

th, td {
    white-space: nowrap; 
}
</style>
<%
String search = request.getParameter("query");

String query , query1 ;
if(search != null && !search.isEmpty()) {
    search = search.replace("'", "''");
    query = "select e.EmpId, e.name, username, password from permenant_employee e left outer join user_logins u ON e.EmpId=u.EmpID WHERE e.EmpId LIKE '%" + search + "%' OR e.name LIKE '%" + search + "%'";
    query1 = "select e.EmpId, e.name, username, password from temporary_employee e left outer join user_logins u ON e.EmpId=u.EmpID WHERE e.EmpId LIKE '%" + search + "%' OR e.name LIKE '%" + search + "%'";

} else {
    query = "select e.EmpId, e.name, username, password from permenant_employee e left outer join user_logins u ON e.EmpId=u.EmpID";
    query1 = "select e.EmpId, e.name, username, password from temporary_employee e left outer join user_logins u ON e.EmpId=u.EmpID";

}

Connection connect = null;
Statement statement = null;
ResultSet resultSet = null;
ResultSet resultSet1 = null;
int i = 1;
int count = 1;
try {
    
DBConnection DBcon =DBConnection.getInstance();
	
	connect = DBcon.createconnection();
    statement = connect.createStatement();
    resultSet = statement.executeQuery(query);
    

    
%>
        <div class="row">
            <div class="col-sm-12">
            <div class="table-container" >
          <table class="table table-striped" id="dataTable"  cellspacing="0" role="grid" aria-describedby="dataTable_info"  >
          <thead>
            <tr role="row" class="table-warning">
              <th class="sorting_asc"  style="width: 10.2px;">#</th>
              <th class="sorting" style="width: 74.2px;">Employee ID</th>
              <th class="sorting" style="width: 74.2px;">Name</th>
              <th class="sorting" style="width: 50.2px;">User Name</th>
              <th class="sorting" style="width: 58.2px;">Password</th>
              <th class="sorting" style="width: 57px;">Action</th></tr>
          </thead>
          <tbody>
<%			
		 
		while(resultSet.next()) {
			count = 0;
%>
                <tr role="row" class="odd">
                <td class="align-middle sorting_1"><%=i++ %></td>
                <td class=" align-middle"><%=resultSet.getString(1) %></td>
                <td class=" align-middle"><%=resultSet.getString(2) %></td>
                <%  if(resultSet.getString(3)!= null ) { %>
                <td class=" align-middle"><%=resultSet.getString(3) %></td>
                <td class=" align-middle"><%=resultSet.getString(4) %></td>
                <td>
                  <a href="DeleteUserServlet?Id=<%=resultSet.getString(1)%>" class="btn btn-danger btn-circle" onclick="return confirm('Do you Want to Delete ?')">
                    <span class="icon text-white" title="Delete">
                      <i class="fa-solid fa-trash"></i>
                    </span>
                  </a>
                </td>
                <% }
                else {%>
                <td colspan="3" class="align-middle text-center">
                  <a href="username.jsp?id=<%=resultSet.getString(1) %>" class="btn btn-info btn-circle" onclick="return confirm('Do you Want to Edit ?')">
                    <span class="icon text-white" title="Edit">
                      REGISTER
                    </span>
                  </a> </td><%} %>
                  
            </tr>
<%
        }
		
	%><%			
		resultSet1 = statement.executeQuery(query1);
		while(resultSet1.next()) {
			count = 0;
%>
                <tr role="row" class="odd">
                <td class="align-middle sorting_1"><%=i++ %></td>
                <td class=" align-middle"><%=resultSet1.getString(1) %></td>
                <td class=" align-middle"><%=resultSet1.getString(2) %></td>
                <%  if(resultSet1.getString(3)!= null ) { %>
                <td class=" align-middle"><%=resultSet1.getString(3) %></td>
                <td class=" align-middle"><%=resultSet1.getString(4) %></td>
                <td>
                  <a href="DeleteUserServlet?Id=<%=resultSet1.getString(1)%>" class="btn btn-danger btn-circle" onclick="return confirm('Do you Want to Delete ?')">
                    <span class="icon text-white" title="Delete">
                      <i class="fa-solid fa-trash"></i>
                    </span>
                  </a>
                </td>
                <% }
                else {%>
                <td colspan="3" class="align-middle text-center">
                  <a href="username.jsp?id=<%=resultSet1.getString(1) %>" class="btn btn-info btn-circle" onclick="return confirm('Do you Want to Edit ?')">
                    <span class="icon text-white" title="Edit">
                      REGISTER
                    </span>
                  </a> </td><%} %>
                  
            </tr>
<%
        }
		
	%>
			                
           </tbody>
        </table></div>
      </div></div>
<%	
	if(count == 1) {  %>
        	
    		<tr role="row" class="odd">
                <td colspan="5" ><h2 style="color: #433633; font-family: 'Poppins', sans-serif; text-align:center;">NO RESULTS FOUND !!!</h2> </td>
            </tr>
    <%  }
} catch(Exception e) {
    e.printStackTrace();
} finally {
    if(resultSet != null) try { resultSet.close(); } catch(SQLException ignore) {}
    if(resultSet1 != null) try { resultSet1.close(); } catch(SQLException ignore) {}
    if(statement != null) try { statement.close(); } catch(SQLException ignore) {}
    if(connect != null) try { connect.close(); } catch(SQLException ignore) {}
}
%>
