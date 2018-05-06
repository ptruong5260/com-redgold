<style>
    .description-section li{
        border: 1px solid;
        background-color: black;
        color: white;
        padding: 5px 20px;
    }
</style>

<div class="container">
  <div class="row">
    <div class="col-sm-12 col-md-6">
      <g:if test="${item.image}">
        <img style="height: 200px;" src="${item.image}" atl="${item.name}">
      </g:if>
    </div>
    <div class="col-sm-12 col-md-6">
      <g:render template="/templates/itemShortDescription" model="[item: item]"/>
      <g:render template="/templates/itemPriceInfo"/>
    </div>
  </div>
</div>

<div class="container">
  <div class="row">
    <div class="col-sm-12 col-md-12">
        <ul class="list-inline description-section">
            <li>Description</li>
        </ul>
        <p>${raw(item.description)}</p>
    </div>
  </div>
</div>