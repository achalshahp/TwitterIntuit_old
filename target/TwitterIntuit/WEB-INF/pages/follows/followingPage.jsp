<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
  <title>Employee Twitter :: Following</title>
</head>
<body style="margin: 0px;background-color:lightblue">
  <jsp:include page="../_menu.jsp" />

   <div style="margin-left:0px;">
    <br/>
    <b>
    	<a href="${pageContext.request.contextPath}/tweet/new" style="text-decoration:none; color: black; margin-left: 30px;">Compose New Tweet</a>
    	&nbsp | &nbsp
    	<a href=${pageContext.request.contextPath}/tweets/all style="text-decoration:none; color: black;">Read Tweets</a>
    	&nbsp | &nbsp
    	<a href="${pageContext.request.contextPath}/following" style="text-decoration:highlight; color: red;">List Users I Follow</a>
    	&nbsp | &nbsp
    	<a href="${pageContext.request.contextPath}/followers" style="text-decoration:none; color: black;">List My Followers</a>
    	&nbsp | &nbsp
    	<a href="${pageContext.request.contextPath}/users" style="text-decoration:none; color: black;">Follow / Unfollow Users</a>
    	&nbsp | &nbsp
    	<a href="${pageContext.request.contextPath}/delete" style="text-decoration:none; color: black;">Delete Tweets</a>
 	</b>
 </div>
 	<div style="margin-left:30px">
 	<br/><br/>
 		<b>Here are your collegues that you are currently following :</b>
    	<c:forEach var="user" items="${listFollowing}" varStatus="status">
      		<p>${user.user_followed}</p>
    	</c:forEach>
    
    <br/><br/>
      	<h4>*To follow/unfollow collegues, please goto the follow/unfollow page.</h4>
    </div>
  </div>
</body>
</html>