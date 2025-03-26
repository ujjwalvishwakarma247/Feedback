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
        <div class="container d-flex flex-column py-4 justify-content-center align-items-center" >
              <h1 style="color:white;">Give me your feedback </h1>

            <form action="<%=application.getContextPath()%>/first" method="Post" class="mt=3 text-white">
              <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">Email address</label>
                <input placeholder="enter here" name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                <div id="emailHelp" class="form-text text-white">We'll never share your email with anyone else.</div>
              </div>
              <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">phone number</label>
                <input name="phone" placeholder="enter here" type="text" class="form-control" id="exampleInputPassword1">
              </div>
              <div class="mb-3">
                  <label for="exampleInputPassword1" class="form-label"> your feed back message </label>
                   <textarea name="feedback-message" rows="10" placeholder=" enter here" cols="" class="form-control"></textarea>
               </div>

              <div class="container text-center">
              <button type="submit" class="btn btn-primary">Submit</button>
              <button type="reset" class="btn btn-light ">reset</button>
              </div>
            </form>
             </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <%@include file="script.jsp"%>
  </body>
</html>