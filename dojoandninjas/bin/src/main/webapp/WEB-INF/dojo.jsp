<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert Title Here</title>
    <!-- for Bootstrap CSS -->
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <!-- YOUR own local CSS -->
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <!-- For any Bootstrap that uses JS or jQuery-->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <!-- YOUR own local JS -->
    <script type="text/javascript" src="/js/app.js"></script>
</head>
<body>
    <!-- Enter body here -->
    <div class="d-flex justify-content-around align-items-center">
        <div>
            <form:form action="/new/dojo" method="post" modelAttribute="dojo"
							class="card  p-2">
							<div class="form-group my-3 ">
								<form:label class="form-label pb-2" path="dojoName">Enter Dojo Name</form:label>
								<form:errors path="dojoName" />
								<form:input class="form-control " path="dojoName" />
							</div>
					
							<div class="col-3">
								<button class="btn btn-success">Submit</button>
							</div>
						</form:form>
					
        </div>
        <div>
            <div class=" mx-auto">
                <table class=" table table-border table-striped mx-auto">
                    <thead>
                        <tr>
                            <th>Location</th>
                            
                            <th>Actions</th>
                        </tr>
                    </thead>

                    <tbody>
                        <c:forEach var="dojo" items="${dojos}">
                            <tr class="">
                                <td>
                                    <c:out value="${dojo.dojoName }" />
                                </td>
                               
                                <td class="">
                                    <div class="d-flex gap-2" >
                                        <a href="/view/dojo/${dojo.id}">View Dojo</a>
                                        
                                    </div>
                                </td>

                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
        </div>
    </div>
   
</body>
</html>