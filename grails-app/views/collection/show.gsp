<!DOCTYPE html>
<html>
	<head>
	    <meta name="layout" content="main"/>
	    <style>
	        .collection-name{
                text-align: center;
	        }

            .horizontal-separator{
                display: inline-block;
                width: 90%;
                height: 1px;
                background: #231f20;
                margin-left: 5%;
            }
        </style>
	</head>
	<body>
	    <h2 class="collection-name">${collection.name}</h2>
	    <div class="horizontal-separator"></div>
        <g:each var="item" in="${collection.getItems()}">
          <g:render template="/templates/itemShortDescription" model="[item: item]"/>
          <g:render template="/templates/itemPriceInfo" model="[itemPrice: item.getItemPrice()]"/>
        </g:each>
	</body>
</html>
