@extends('layouts.app')
@section('formations')
<!-- <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="/style.css">

    <title>Document</title>
</head> -->
<body>
<style>
    .container{
    text-align: center;
    max-width: 100%;
    }

    .row{
    position: relative;
    width: 100%;
    display: flex;
   justify-content: space-between;
    }

    .row .col-md-2{
    position: relative;
    width: 48%;
    /*display: flex;*/
    justify-content: center;
    align-items: center;
    padding: 30px;
    }

    .col .imbox{
    position: relative;
    width: 100%;
    height: 300px;
    }

    .col .imbox img{
    position: relative;
    left: 0;
    top: 0;
    width: 100%;
    height: 300px;
    object-fit: cover;
    }

</style>
    <div class="titre">
        <h2 class="titre-texte"><span>N</span>os Formations</h2>
   <p style="font-size: 20px;">Simple Description ou notif</p> 

   </div>

   

   <div class="container">
       @if(!Auth::user())
    <div style="max-width: 40%;   margin: auto; margin-bottom: 30px;    " class="alert alert-info" role="alert">
    Pour s'inscrire à une formation Veuillez s'authentifier
    </div>
    @endif

   <div class="row">
       @foreach($formations as $formation)
   <div class="col-md-2">
       <div class="imbox" >
        <img  src="{{asset('./assets/'.$formation['image'])}}" style="width: 30%;">
       </div>
       <h3 style="display: inline-block; margin-right: 20px;">{{$formation->nom_formation}}</h3>   
       <a href="{{route('user_formation',$formation)}}"><button class="btn btn-dark" type="submit">Voir Plus</button></a>

   </div>
  
        @endforeach
  </div>


</div>


</section>
    
</body>
@endsection
