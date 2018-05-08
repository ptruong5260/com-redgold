<style>
    .container{
        margin-bottom: 30px;
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
        <g:render template="/templates/itemImage" model="[item: item]"/>
    </div>
    <div class="col-sm-12 col-md-6">
      <g:render template="/templates/itemShortDescription" model="[item: item]"/>
      <g:render template="/templates/itemPriceInfo" model="[itemPrice: item.getItemPrice()]"/>
    </div>
  </div>
</div>

<g:if test="${item.description}">
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
</g:if>