@extends('layouts.app')

@section('coursEtudiant')
<div class="container">
    <h1>Mes Formations </h1>    
<div class="row "> 
   
    @foreach($formationInscrit as $fr)
<a href="{{ route('CoursDeFormation',$fr->formation)}}" class="btn btn-warning" style="margin-right: 2vw">Cours de {{$fr->formation}}</a><br>
@endforeach 

<div class="container">
<table>

<tr>
    <th>Formation</th>
    <th>Horaire</th>
    <th>Salle</th>
    <th>Formateur</th>
    </tr>

@foreach($formationInscrit[0]->sessions as $fr)  
    <tr>
      <td>{{$fr->formation}}</td>
      <td>{{$fr->temps_debut}}-->{{$fr->temps_fin}}</td>
      <td>{{$fr->salle}}</td>
      <td>{{$fr->formateur}}</td>
     
    </tr> 
    @endforeach
  </table>


</div>
</div>
</div>
@endsection