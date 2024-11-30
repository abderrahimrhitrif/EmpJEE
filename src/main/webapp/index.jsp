<!DOCTYPE html>
<html>
<head>
    <title>Test Employee Management</title>
</head>
<body>
    <h1>Test Employee Management</h1>
    <form action="/Presentation/TestEmployeeServlet" method="post">
        <label for="nom">Name:</label>
        <input type="text" id="nom" name="nom"><br>
        <label for="prenom">First Name:</label>
        <input type="text" id="prenom" name="prenom"><br>
        <label for="matricule">Matricule:</label>
        <input type="text" id="matricule" name="matricule"><br>
        <label for="addresse">Address:</label>
        <input type="text" id="addresse" name="addresse"><br>
        <input type="submit" value="Add Employee">
    </form>
</body>
</html>
