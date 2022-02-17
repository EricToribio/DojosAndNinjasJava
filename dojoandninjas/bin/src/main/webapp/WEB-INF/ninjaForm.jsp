<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <%@ page isErrorPage="true" %>
                <!DOCTYPE html>
                <html>

                <head>
                    <meta charset="UTF-8">
                    <title>Add New Book</title>
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
                    <div class="container mx-auto p-5">
                        <h2 class="text-center mb-4 ">Add A Ninja</h2>
                        <div class="card mx-auto p-5 bg-secondary text-dark">
                            <form:form action="/new/ninja" method="POST" modelAttribute="ninja">
                                <div class="mb-3">
                                    <form:label path="firstName" for="formInput" class="form-label">First Name
                                    </form:label>
                                    <form:errors path="firstName" class="text-danger" />
                                    <form:input type="text" class="form-control" id="formInput" path="firstName"
                                        placeholder="" />
                                </div>
                                <div class="mb-3">
                                    <form:label path="lastName" for="formControlTextarea" class="form-label">
                                        Last Name:</form:label>
                                    <form:errors path="lastName" class="text-danger" />
                                    <form:input class="form-control" id="formControlTextarea" path="lastName" />
                                </div>
                                <div class="mb-3">
                                    <form:label path="age" for="formInput" class="form-label">Age:
                                    </form:label>
                                    <form:errors path="age" class="text-danger" />
                                    <form:input type="number" class="form-control" id="formInput" path="age" />
                                </div>
                                <div class="mb-3">
                                    <form:label path="dojo" for="formInput" class="form-label">Location
                                    </form:label>
                                    <form:errors path="dojo" class="text-danger" />
                                    <form:select class="form-control" id="formInput" path="dojo">
                                        <c:forEach var="oneDojo" items="${dojos
                                        }">
                                            <form:option value="${oneDojo.id}" path="dojo">
                                                <c:out value="${oneDojo.dojoName}" />
                                            </form:option>

                                        </c:forEach>
                                    </form:select>
                                </div>
                                <div class="d-flex justify-content-end">
                                    <input type="submit" value="Submit" class="btn btn-primary fw-bold">
                                </div>
                            </form:form>
                        </div>
                    </div>
                </body>

                </html>