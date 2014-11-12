<%@tag description="Head template" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ attribute name="title" required="true" description="The title of the page" %>

<!doctype html>
<html id="ng-app" ng-app="open" class="no-js" lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>${title}</title>
    <base href="<%= request.getContextPath() %>">

    <!-- Main CSS -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/static/css/dest/main.min.css"/>

    <!-- Third Party JS -->
    <script type="application/javascript" src="<%= request.getContextPath()%>/static/js/dest/vendor.min.js"></script>

    <!-- Application Scripts -->
    <script type="application/javascript" src="${ctxPath}/static/js/src/app.js"></script>
    <script type="application/javascript" src="${ctxPath}/static/js/src/common.js"></script>

    <script>
        window.ctxPath = "<%= request.getContextPath() %>";
        window.apiPath = window.ctxPath + "/api/3";
        $(document).foundation();
    </script>

    <!-- Page specific css and pre-load js can be added below by the consumer -->
    <jsp:doBody/>
</head>