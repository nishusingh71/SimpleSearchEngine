<%@page import ="java.util.ArrayList"%>
<%@page import ="com.Project.SearchResult"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<h1>Simple search Engine </h1>
<form action="Search">
<input type ="text" name="keyword">
<button type ="submit">Search</button>
</form>
<table border=2 class="resultTable">
<tr>
<th>Title</th>
<th>Link</th>
</tr>
<%
ArrayList<SearchResult> results=(ArrayList<SearchResult>)request.getAttribute("results");
for(SearchResult result:results){
%>
<tr>
<td><%out.println(result.getTitle());%></td>
<td><a href="<%out.println(result.getLink());%>"><%out.println(result.getLink());%></a></td>
</tr>
<%
}
%>
</table>
</body>
</html>
