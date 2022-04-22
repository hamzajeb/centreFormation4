<html>
<head>
    <title>Laravel 9 Generate PDF Example - ItSolutionStuff.com</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
    <h1 style="text-align: center">Liste des Formations</h1>
    <table class="table  table-striped" style="font-size: 13px">

        <tr>
            <th>ID</th>  
            <th>NOM</th>
            <th>DESCRIPTION</th>
            <th>durée</th>
            <th>prix</th>
          </tr>
       
             
            @foreach($formations as $frmt)
               
                <tr>
       <td>{{$frmt->id}}</td>
       <td>{{$frmt->nom_formation}}</td>
       <td>{{$frmt->description}}</td>
       <td>{{$frmt->durée}}</td>
       <td>{{$frmt->prix}} DH</td>
    </tr>
    @endforeach 
    </table>
  
</body>
</html>
