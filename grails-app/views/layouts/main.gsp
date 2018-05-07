<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="Red Gold"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
    <r:require modules="bootstrap"/>
    <r:require modules="jquery"/>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'custom.css')}" type="text/css">
    <div style="background-color: black; padding: 15px 0; width: 100%;">
        <img style="width:20%; display: block; margin: auto;"
        src="https://lh3.googleusercontent.com/8sHMrsFQj7Q4yLqrFvXmTPy68i9bt5EGLYf5PIsJN2fHK1Zd2RVf_uZW7dI5dR93389tf2DRmxVDN39QJ0nZPF5KQWtXOEOxH7a2nX4tMgt_hFUDPlQh3lSw-FaKO0B4z2qLAfXTy6Ek2fnCyDOpFRKJV3xKGdXF9XS5EII67NmWZRuhDhMPmZJTBOgdgpScWK7uC387ff0tCzEoyG0oYWrkzu1rB7JcAFuLJk07gyoey9SzRsJu3v7GQtbYVui4URNbUfffXBlbNfdIEMB1EaMlgINh22H1-WB-MYe-dgZcA6eAN7h92-dbwXycngxHZAdUk1bve-sDzmqZNHHM-wClH3ucl7rl_cX3YmrPHzUtr4bzc7SJlpachHglap0Ikbov68ZKes5vhMZdxCPYnhoTvaQ6EnQXMySvC86gaTQ9mvIGc9bNBfqzgRnqIpxSSpf3jPjYSuk7rn6n0EyUVDHAqgYcC0HRf4O0HZG4AMkbiQnqZeTxm-WADCPOxewIaiCwlZtCnpa_B6TaZ0QuIwISe1c4fALjP54q72fFN12642XdOqpLhs3nfiGxfm5-htyookFDUzRX69TKBThGENyWYcb7wbc9kNG8fg=w1328-h376-no"/>
    </div>
    <g:render template="/templates/menu" />
    <g:layoutHead/>
    <g:javascript library="application"/>
    <r:layoutResources/>
</head>
<body style="max-width: initial;">
    <g:layoutBody/>
    <div class="footer" role="contentinfo" style="background-color: black;">
        <span style="color: white;">Copyright © 2018</span>
    </div>
    <r:layoutResources/>
</body>
</html>