
<body>

    <form action="{{route('add_user')}}" method="get" >
        @csrf
        @if($user = Auth::user() )
        @if($user->profil == "etudiant")
        

        <label >Nom : </label>
        
        <input type="text" name="nom" placeholder="Enter Your Last Name" value="{{$user->name}}">

        <label >Prenom : </label>
        <input type="text" name="prenom" placeholder="Enter Your Name">

        <label >Email : </label>
        <input type="text" name="email" placeholder="Enter Your Email" value="{{$user->email}}">

        <label >Age : </label>
        <input type="number" name="age" placeholder="Enter Your Age">

        <label >CIN : </label>        
        <input type="text" name="cin" placeholder="Enter Your CIN">
        
        <label >Formation : </label>

        <input type="text" name="formation" value="{{$formation->formation}}">
        
    
        <input type="text" name="session_id" value="{{$formation->id}}">
        

        <label >Tel : </label>
        <input type="text" name="tel" placeholder="Enter Your Phone Number">

        <label >Niveau : </label>
        <select name="niveau" >
            <option value="s1">s1</option>
            <option value="s2">s2</option>
            <option value="s3">s3</option>
            <option value="s4">s4</option>
        </select>

        <button type="submit">Ajouter</button>
    @else

    <h1>Vous êtes un employé</h1>
    <a href="{{route('home')}}"><button type="submit">Retour</button></a>
    @endif
    @endif
    </form>
    
</body>
</html>