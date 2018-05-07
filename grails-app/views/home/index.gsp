<!DOCTYPE html>
<html>
	<head>
	    <meta name="layout" content="main"/>
	</head>
	<body>
	    <g:each var="featureItem" in="${featureItems}" >
	        <g:render template="/templates/featureItem" model="[featureItem: featureItem]" />
	    </g:each>
	</body>
</html>
