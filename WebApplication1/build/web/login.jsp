<%-- 
    Document   : Login
    Created on : 13-Mar-2022, 2:21:45 pm
    Author     : snehasish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Login</title>
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
            crossorigin="anonymous"
            />
        <link rel="stylesheet" href="styles.css" />
    </head>
    <body>
        <div class="container">
            <h1 class="mt-4 text-center text-white">
                RankTech Solutions Demo Page
            </h1>
            <div>
                <form action="LoginCheck" method="post" class="form needs-validation" novalidate>
                    <div>
                        <label class="form-label" for="username"
                               >Username:</label
                        >
                        <input
                            class="form-control"
                            type="text"
                            name="username"
                            id="username"
                            placeholder="Enter Username"
                            required
                            />
                        <div class="valid-feedback">Looks good!</div>
                    </div>
                    <div>
                        <label class="form-label" for="password"
                               >Password:</label
                        >
                        <input
                            class="form-control"
                            type="password"
                            name="password"
                            id="password"
                            placeholder="Enter Password"
                            required
                            />
                        <div class="valid-feedback">Looks good!</div>
                    </div>

                    <div>
                        <button type="submit" class="btn btn-success">Login</button>
                    </div>
                </form>
                <a href="registration.jsp" class="btn btn-md btn-warning">Register</a>
            </div>

        </div>

        <script>
            (function () {
                'use strict'

                // Fetch all the forms we want to apply custom Bootstrap validation styles to
                var forms = document.querySelectorAll('.needs-validation')

                // Loop over them and prevent submission
                Array.prototype.slice.call(forms)
                        .forEach(function (form) {
                            form.addEventListener('submit', function (event) {
                                if (!form.checkValidity()) {
                                    event.preventDefault()
                                    event.stopPropagation()
                                }

                                form.classList.add('was-validated')
                            }, false)
                        })
            })()
        </script>

        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"
        ></script>
    </body>
</html>
