@extends('layouts.app')

@section('coursNonPaye')
@if($etudiant->is_payer == null || $etudiant->is_payer == 'false')

<h1>VEUILLEZ PAYER VOTRE INSCRIPTION</h1>

<a href="{{route('listeC')}}"><button type="submit">Retour</button></a>
@endif
@endsection