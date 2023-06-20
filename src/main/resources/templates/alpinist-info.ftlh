<!DOCTYPE html>
<html>
    <head>
        <title>Alpinist</title>
        <link rel="stylesheet" href="/style.css">
        <link rel="stylesheet" href="/infoPage.css">
    </head>
    <body>
    <div class="infoPage">
        <h2>Подробная информация об альпинисте</h2>
        <b class="info">Имя альпиниста: </b><p>${alpinist.getAName()}</p><br>
        <b class="info">Адресс: </b><p>${alpinist.getAAdress()}</p><br>
        <form action="/alpinist/delete/${alpinist.getAId()}" method="post">

            <input class="fbutton" type="submit" value="Удалить альпиниста"/>
        </form>
        <form action="/alpinist/edit/${alpinist.getAId()}" method="post">

            <input class="fbutton" type="submit" value="Редактировать альпиниста"/>
        </form>
    </div>
    </body>
</html>