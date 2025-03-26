<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
        <%@include file ="links.jsp"%>
        <%@include file ="header.jsp"%>
  </head>
  <body>
        <div style="height:80vh" class="container d-flex flex-column py-4 justify-content-center align-items-center" >
             <a href="<%=application.getContextPath()%>/feedback.jsp">
                  <button class="btn btn-light">Give us feedback  </button>
             </a>
             <hr style="color:white">
             <a href="<%=application.getContextPath()%>/servlet1">
                  <button class="btn btn-light"> Servlet1 </button>
             </a>
             <hr style="color:white">
             <a href="<%=application.getContextPath()%>/servlet2">
                   <button class="btn btn-light"> Servlet2 </button>
             </a>

            </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <%@include file="script.jsp"%>
  </body>
</html>