<!DOCTYPE html>
<html>
    <head>
        <title>Groups</title>
    </head>
    <body>
    <h1>Groups</h1><hr>
    <h4>Подробная информация о группе</h4>
    <b>Название группы: </b>${group.getGName()}<br>
<hr>
<form action="/group/delete/${group.getGId()}" method="post">

    <input type="submit" value="Удалить группу"/>
</form>
    </body>
</html>