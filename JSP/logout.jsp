<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">
            function confirmLogout() {
                var confirmAction = confirm("Are you sure you want to logout?");

                if (confirmAction) {
                    window.location.href = "LogoutServlet";
                } else {
                    return false;
                }
            }
        </script>
    </head>
    <body>
        <button onclick="confirmLogout()"></button>
    </body>
</html>
