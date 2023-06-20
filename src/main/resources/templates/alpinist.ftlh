<!DOCTYPE html>
<html>
<head>
        <title>Alpinist</title>
        <link rel="stylesheet" href="/style.css">
        <link rel="stylesheet" href="/startPage.css">
</head>
<body>
<h1 class="center">Альпинисты</h1>
<div class="main">
    <div class="contListAlp">
        <h2 class="h3left">Список альпинистов</h2>
        <div class="listAlp">
            <#list alpinists as alpinist>
                <div>
                    <p><b class="name">${alpinist.getAName()}</b> <a href="/alpinist/${alpinist.getAId()}">Узнать подробнее...</a></p>
                </div>
                <#else>
                <h3>Альпинистов нет</h3>
            </#list>
        </div>
    </div>

    <div class="contNewAlp">
        <h2 class="h3right">Добавить нового альпиниста</h2>
        <div class="newAlp">
            <form action="/alpinist/create" method="post">
                Имя альпиниста: <input type="text" name="aName"><br>
                Адресс альпиниста: <input type="text" name="aAdress"><br>
                <input class="fbutton" type="submit" value="Добавить альпиниста"/>
            </form>
        </div>
    </div>
</body>
</html>