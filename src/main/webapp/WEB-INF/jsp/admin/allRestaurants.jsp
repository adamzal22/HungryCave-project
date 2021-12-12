<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<strong>ALL RESTAURANTS</strong><br>
<p style="text-align: right;"><a href="/logout">Wyloguj</a></p>
<hr>
<p style="text-align: right;"><a href="/admin/allPosts"><strong>ALL POSTS</strong></a><br></p>
<p style="text-align: right;"><a href="/admin/all"><strong>ALL USERS</strong></a><br></p>

<hr>
<c:forEach items="${restaurants}" var="r">
    <strong><c:out value="${r.name}   OCENA: ${r.rating}"/></strong><br>

    <a href="deleteRestaurant?toRemoveId=${r.id}">
        Usuń
    </a>
    <hr>
</c:forEach>