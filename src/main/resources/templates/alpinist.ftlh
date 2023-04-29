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
            <p><b>${alpinist.getAName()}</b> <a href="/alpinist/${alpinist.getAId()}">Узнать подробнее...</a></p>
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
<div>
</div>
    <a href="/group">Перейти к группам</a>
</body>
</html>