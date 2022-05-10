<!DOCTYPE html>
<html>

<body>

  <h1>Vislice</h1>

Geslo: {{geslo}}<br/>
Nepravilni ugibi: {{nepravilni}}<br/>

    <img src="/img/{{obesenost}}.jpg" alt="obesanje"> 

% if stanje != model.ZMAGA and stanje != model.PORAZ:
<form action="" method="post">
    <input name="crka" autofocus> <input type="submit" value="ugibaj">
</form>
% elif stanje == model.ZMAGA:
Čestitke! Bi želeli igrati še enkrat?
<form action="" method="post">
    <form action="/igra/" method="post">
    <button type="submit">nova igra</button>
    </form>
% elif stanje == model.PORAZ:
Geslo je bilo <b>{{celo_geslo}}</b><br/>
 Bi želeli igrati še enkrat?
 <form action="/igra/" method="post">
    <button type="submit">nova igra</button>
    </form>

    

</body>

</html>