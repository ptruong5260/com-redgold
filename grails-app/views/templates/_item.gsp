<style>
    .container{
        margin-bottom: 30px;
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

    .description-container{
        padding-left: 18px;
    }
    .description-section li{
        border: 1px solid;
        background-color: black;
        color: white;
        padding: 5px 20px;
    }
    .description-holder ul{
        padding-left: 15px;
    }

</style>

<div class="container">
  <div class="row">
    <div class="col-sm-12 col-md-6">
      <g:if test="${item.image}">
        <img class="item-image" src="${item.image}" atl="${item.name}">
      </g:if>
    </div>
    <div class="col-sm-12 col-md-6">
      <g:render template="/templates/itemShortDescription" model="[item: item]"/>
      <g:render template="/templates/itemPriceInfo" model="[itemPrice: item.getItemPrice()]"/>
    </div>
  </div>
</div>

<div class="container description-container">
  <div class="row">
    <div class="col-sm-12 col-md-12">
        <ul class="list-inline description-section">
            <li>Description</li>
        </ul>
        <div class="description-holder">
            <p>${raw(item.description)}</p>
        </div>
    </div>
  </div>
</div>