<!DOCTYPE html>
<html>
    <head>
        <title>Alpinist</title>
    </head>
    <body>
    <h1>Alpinists</h1><hr>
    <h4>Alpinist from Russia</h4>
    <#list alpinists as alpinist>
        <div>
            <p><b>${alpinist.aName}</b> ${alpinist.aAdress} | <a href="/alpinist/${alpinist.id}">Подробнее...</a></p>
        </div>
        <#else>
        <h3>Альпинистов нет</h3>
    </#list>
<hr>
<h3>Добавить нового альпиниста</h3>
<form action="/alpinist/create" method="post">
    Имя альпиниста: <input type="text" name="aName"><br>
    Адресс альпиниста: <input type="text" name="aAdress"><br>
    <input type="submit" value="Добавить альпиниста"/>
</form>
    </body>
</html>