<!DOCTYPE html>
<html>
    <head>
        <title>Alpinist</title>
        <link rel="stylesheet" href="/style.css">
        <link rel="stylesheet" href="/editPage.css">
    </head>
<body>
    <div class="editPage">
        <h2>Редактирование альпиниста</h2>
        <form action="/alpinist/edit/${alpinist.getAId()}/save" method="post">
            Имя альпиниста: <input type="text" name="aName" value="${alpinist.getAName()}"><br>
            Адресс альпиниста: <input type="text" name="aAdress" value="${alpinist.getAAdress()}"><br>
            <input class="fbutton" type="submit" value="Сохранить альпиниста"/>
        </form>
    </div>
</body>
</html>