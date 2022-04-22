<html>
<head>
    <title>Laravel 9 Generate PDF Example - ItSolutionStuff.com</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
    <h1 style="text-align: center">Liste des Administrateurs</h1>
  
    <table class="table  table-striped">

        <tr>
            <th>ID</th>  
            <th>NOM</th>
            <th>Prenom</th>
            <th>CIN</th>
            <th>Tel</th>
            <th>Email</th>
            <th>Profil</th>

          </tr>
       
             
            @foreach($employes as $emp)
               
                <tr>
       <td>{{$emp->id}}</td>
       <td>{{$emp->nom}}</td>
       <td>{{$emp->prenom}}</td>
       <td>{{$emp->cin}}</td>
       <td>{{$emp->tel}}</td>
       <td>{{$emp->email}}</td>
       <td>{{$emp->profil}}</td>
       
       

             </tr>
       @endforeach 
       </table> 
  
</body>
</html>
