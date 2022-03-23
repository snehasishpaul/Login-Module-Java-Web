<%-- 
    Document   : Registration
    Created on : 13-Mar-2022, 2:23:19 pm
    Author     : snehasish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Registration</title>
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
            <form action="RegisterCheck" method="post" class="form needs-validation" novalidate>
                <div>
                    <label class="form-label" for="email">Email:</label>
                    <input
                        class="form-control"
                        type="email"
                        name="email"
                        id="email"
                        placeholder="Enter your Email"
                        required
                        />
                    <div class="valid-feedback">Looks good!</div>
                </div>
                <div>
                    <label class="form-label" for="username">Username:</label>
                    <input
                        class="form-control"
                        type="text"
                        name="username"
                        id="username"
                        placeholder="Enter your Username"
                        required
                        />
                    <div class="valid-feedback">Looks good!</div>
                </div>
                <div>
                    <label class="form-label" for="password">Password:</label>
                    <input
                        class="form-control"
                        type="password"
                        name="password"
                        id="password"
                        placeholder="Enter your Password"
                        required
                        />
                    <div class="valid-feedback">Looks good!</div>
                </div>
                <div>
                    <label class="form-label" for="address">Address:</label>
                    <input
                        class="form-control"
                        type="text"
                        name="address"
                        id="address"
                        placeholder="Enter your Address"
                        required
                        />
                    <div class="valid-feedback">Looks good!</div>
                </div>
                <div>
                    <button class="btn btn-success">Register</button>
                </div>
            </form>
            <a href="login.jsp" class="btn btn-md btn-warning">Login</a>
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
