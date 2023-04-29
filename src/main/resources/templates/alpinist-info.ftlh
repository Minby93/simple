<!DOCTYPE html>
<html>
    <head>
        <title>Alpinist</title>
    </head>
    <body>
    <h1>Alpinists</h1><hr>
    <h4>Подробная информация об альпинисте</h4>
    <b>Имя альпиниста: </b>${alpinist.getAName()}<br>
    <b>Адресс: </b>${alpinist.getAAdress()}<br>
<hr>
<form action="/alpinist/delete/${alpinist.getAId()}" method="post">

    <input type="submit" value="Удалить альпиниста"/>
</form>
    </body>
</html>