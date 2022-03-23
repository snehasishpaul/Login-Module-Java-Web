<%-- 
    Document   : index
    Created on : 13-Mar-2022, 2:23:57 pm
    Author     : snehasish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Index</title>
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
            crossorigin="anonymous"
            />
        <link rel="stylesheet" href="styles.css" />
    </head>
    <body>

        <%
            response.addHeader("Cache-Control", "no-cache, no-store, must-relavidate");
            //HTTP 1.1 : secure pages cannot be back-buttoned after logout

            if (session.getAttribute("username") == null) {
                response.sendRedirect("login.jsp");
            }   //checking if logged-in
        %>

        <h1 class="mt-5 text-center text-white"> ${username}, Welcome to RankTech Home Page</h1>
        <h3 class="mt-5 mx-5 text-white text-center">
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic
            voluptatum fugit consectetur eos, officiis alias minima et
            consequatur tempore est voluptate facilis aut, ratione inventore
            maxime illum ipsam reiciendis similique! Aspernatur fugit suscipit
            animi minus id quibusdam autem reprehenderit voluptates, adipisci
            culpa vel rerum laudantium quasi commodi placeat laborum magnam,
            voluptate modi repellendus voluptatem? Minus ullam ab aspernatur
            quis, voluptates ratione, necessitatibus atque qui, libero
            laudantium commodi architecto! Enim voluptatem necessitatibus
            dolorum minima sint culpa at adipisci repellat, animi, saepe sequi?
            Sapiente fugit animi rerum provident quod impedit quos quas deleniti
            eum debitis sit dolor blanditiis reiciendis ullam nesciunt, possimus
            minus vel, similique reprehenderit delectus enim sint! Dolor culpa
            ratione similique, et rem minima sit alias, in consequatur,
            laudantium quibusdam eaque explicabo nihil quaerat voluptates
            deserunt! Consequatur obcaecati cumque rem? Cupiditate et accusamus
            sint atque odio ratione dolorum voluptates minus at officia quisquam
            alias quod, facere culpa voluptas in similique reiciendis expedita
            sunt iure! Odio, officiis at. Soluta, et rerum! Aperiam rerum
            repellendus consequuntur nemo. Eum ut veniam necessitatibus!
            Corporis, sit quam rem velit odit earum, inventore veniam, dolores
            debitis tenetur in? Inventore perspiciatis debitis dolore, velit, in
            id ex aut eum ab molestiae nemo totam animi? Vero, iusto quia.
        </h3>
        <form action="Logout" method="get">
            <button class="btn btn-md btn-danger" type="submit">Logout</button>
        </form>

        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"
        ></script>
    </body>
</html>
