<!DOCTYPE html>
<html>
	<head>
	    <meta name="layout" content="main"/>
	    <style>
	        .collection-name{
                text-align: center;
	        }

            .collection-horizontal-separator{
                display: inline-block;
                width: 90%;
                height: 1px;
                background: #231f20;
                margin-left: 5%;
            }

            .item-image{
                width: 100%;
                -ms-flex-align: center;
                align-items: center;
                -ms-flex-pack: center;
                justify-content: center;
                display: -ms-inline-flexbox;
                display: inline-flex;
                margin: 0 auto;
                height: 100%;
                object-fit: cover;
            }

            .collection-item-row{
                margin: 10px 0;
            }
        </style>
	</head>
	<body>
	    <h2 class="collection-name">${collection.name}</h2>
	    <div class="collection-horizontal-separator"></div>
        <div class="container">
            <g:each var="item" in="${collection.getItems()}" status="i">
                <g:if test="${i % 2 == 0}">
                    <div class="row">
                </g:if>
                <div class="col-sm-12 col-md-6 collection-item-row">
                    <g:set var="itemLink" value="${createLink(controller:'item', action:'show', params:[itemId: item.id])}" />
                    <a href="${itemLink}" alt="${item.name}">
                    <g:if test="${item.image}">
                      <img class="item-image" src="${item.image}" atl="${item.name}">
                    </g:if>
                    </a>
                    <g:render template="/templates/itemShortDescription" model="[item: item]"/>
                    <g:render template="/templates/itemPriceInfo" model="[itemPrice: item.getItemPrice()]"/>
                </div>
                <g:if test="${i % 2 != 0 || i == (collection.getItems().size() - 1)}">
                    </div>
                </g:if>
            </g:each>
        </div>
	</body>
</html>
