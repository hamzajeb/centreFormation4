@extends('layouts.app')

@section('formation')
    

<div class="container">


        

        

        <h1 style="color: black; margin: 30px; display: block;" > {{$formation->nom_formation }} </h1>
        <img  src="{{asset('./assets/'.$formation['image'])}}" alt="" style="margin: 40px auto;  display: block;">    
        <div class="card card-default"  >
            <div class="card-header" style="background-color: rgb(180, 170, 161);" style="color: black;">DESCRIPTION DE LA FORMATION</div>
            <div class="card-body" style="background-color: rgb(222, 220, 219);" style="color: black;">
                {{$formation->description}}
            </div>
            <div class="card-body"><h6 style="display: inline-block; margin-right: 30px;">Durée de la Formation :</h6> <p style="display: inline-block;">{{$formation->durée}}</p></div>
            <div class="card-body"><h6 style="display: inline-block; margin-right: 30px;">Prix de la Formation :</h6> <p style="display: inline-block;">{{$formation->prix}}DH</p></div>

            
            @foreach($formation->session as $session)
            
            <div class="card-header" style="background-color: rgb(180, 170, 161);" style="margin-bottom: 30px;">DESCRIPTION SUR LE FORMATEUR</div>
            <img style=" margin-left: 30px;width: 15%; height: 15%; display: inline-flex;align-items: center;justify-content: center;border-radius: 50%;object-fit: cover;color: #fff;" alt="Oleksandr Kocherhin" class="instructor--instructor__image--va-P5 udlite-avatar udlite-avatar-image" width="64" height="64" src="https://img-b.udemycdn.com/user/200_H/16794470_308d_3.jpg" style="width: 6.4rem; height: 6.4rem;">           
            <div class="card-body"> <h6 style="display: inline-block; margin-right: 30px;">NOM & PRENOM :</h6> <p style="display: inline-block;">{{$session->formateurs->nom}} {{$session->formateurs->prenom}}</p>
            <div class="row" style="justify-content: space-between;">
                <div class="col-md-6"><p style="width: 100%; display: flex; justify-content: right; ">{{$session->formateurs->description}}</p>
                <h6>Horaire de la formation</h6>
                <p>{{$session->temps_debut}}-->{{$session->temps_fin}}</p>
                </div>
                @if(Auth::user())
                @if(Auth::user()->profil=='etudiant' )
                @php
                $i = 0;
                @endphp
                @foreach($sessionEtudiant as $session1)
                @if($session1->id==$session->id )                    
                    @php
                        $i = 1;
                    @endphp
                    @break
                @endif
                @endforeach
                    @if($i==0 )                    
                        <div class="col-md-6" >
                            
                                <a href="{{route('user_inscription',$session)}}"><button class="btn btn-light"  type="button" style="margin-left: 400px;margin-top: 100px; background-color: rgb(180, 170, 161); ">S'inscrire</button></a>
                        </div>
                    @else 
                    <div style="text-align: center;color:blue;font-weight:bold;font-size:25px" >vous etes deja inscrit !!</div>
                    @endif
                @else
                <div class="col-md-6" >
                        <a href="{{route('home')}}"><button class="btn btn-light"  type="button" style="margin-left: 400px;margin-top: 100px; background-color: rgb(180, 170, 161); ">S'inscrire</button></a>
                </div>
                @endif
                @endif

            </div>
     
                </div>
          
          
          @endforeach          
</div>
</div>

@endsection