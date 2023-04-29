<!DOCTYPE html>
<html>
    <head>
        <title>Alpinist</title>
    </head>
    <body>
    <h1>Groups</h1><hr>
    <h4>Groups from Russia</h4>
    <#list groups as group>
            <div>
                <p><b>${group.getGName()}</b> <a href="/group/${group.getGId()}">Узнать подробнее...</a></p>
            </div>
            <#else>
            <h3>Групп нет</h3>
    </#list>
<hr>
<h3>Добавить нового альпиниста</h3>
<form action="/group/create" method="post">
    Название группы: <input type="text" name="gName"><br>
    <input type="submit" value="Добавить группу"/>
</form>
    </body>
</html>
