<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="sl-theme-dark">
<head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Parkinsans:wght@300..800&display=swap" rel="stylesheet">
    <meta charset="UTF-8">
    <title>Page de connexion</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@shoelace-style/shoelace@2.18.0/cdn/themes/dark.css" />
    <script type="module" src="https://cdn.jsdelivr.net/npm/@shoelace-style/shoelace@2.18.0/cdn/shoelace-autoloader.js"></script>

    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: 'Parkinsans', sans-serif;
            background-color: #121212;  /* Dark background */
            color: #fff;  /* Light text color for dark theme */
        }

        .login-container {
            background-color: #1e1e1e;  /* Dark card background */
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
            width: 100%;
            max-width: 400px;
            text-align: center;
        }

        h2 {
            margin-bottom: 20px;
            font-size: 2rem;
            color: #fff;  /* Ensure text color matches dark theme */
        }

        sl-input {
            margin-bottom: 15px;
            width: 100%;
        }

        sl-button {
            width: 100%;
            padding: 15px;
            font-size: 1.25rem;
            --sl-button-background-color: #6200ea; /* Custom purple button */
            --sl-button-text-color: #fff; /* White text */
        }

        sl-input::part(base) {
            background-color: #333; /* Dark input background */
            color: #fff;  /* White text inside inputs */
            border: 1px solid #444;  /* Light border for contrast */
        }

        sl-input::part(label) {
            color: #bbb;  /* Lighter label color for dark mode */
        }

        .footer {
            margin-top: 20px;
            font-size: 0.875rem;
            color: #bbb;  /* Lighter footer text */
        }

        .footer a {
            color: #6200ea;  /* Purple color for the "forgot password" link */
            text-decoration: none;
        }

        .footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <div class="login-container">
        <h2>Connexion de l'employé</h2>

        <form action="#" method="post">
            <sl-input label="Nom d'utilisateur" placeholder="Entrez votre nom d'utilisateur" required></sl-input>
            <sl-input type="password" label="Mot de passe" placeholder="Entrez votre mot de passe" required></sl-input>

            <sl-button type="primary">Se connecter</sl-button>
        </form>

        <div class="footer">
            <p><a href="#">Mot de passe oublié ?</a></p>
        </div>
    </div>

</body>
</html>
