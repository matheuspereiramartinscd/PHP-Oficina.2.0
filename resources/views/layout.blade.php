<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta http-equiv="X-UA-Compatible" content="ie=edge">
      <title>Laravel 8|7|6 CRUD App Example</title>
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
      <style>
        .home{
            float:left;
        }

        .lista{
            display:inline;
            list-style-type: none;
        }

        .navbar{
            width:100%;
            background-color:grey;
            display:table;
            vertical-align:center;
        }

        .logo{
            color:white;
            text-shadow: 0px 11px 10px rgba(81,67,21,0.8);

        }

        .paginas{
            float:right;
            color:white;
            padding-right:15px;
        }

       </style> 
   </head>
   <body>
        <div class="navbar">
            <ul class="lista">
                <li class="logo lista">Oficina 2.0</li>
                <li class="paginas lista"><button  onclick="window.location='{{ url("orcamentos/create") }}'" class="btn btn-danger btn-sm"" type="submit">Pagina de cadastro</button></li>
                <li class="paginas lista"><button onclick="window.location='{{ url("/") }}'" class="btn btn-danger btn-sm"" type="submit">Pagina de pesquisa</button></li>
            </ul>
        </div>

 
      <div class="container">
        
         @yield('content')
      </div>
      <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" type="text/js"></script>
   </body>
</html>