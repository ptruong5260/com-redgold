<style>
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

    .shop-now-section{
        border: 1px solid;
        background-color: black;
        color: white !important;
        padding: 10px 20px;
        position: absolute;
        bottom: 8px;
        right: 16px;
    }

    .margin-bottom{
        padding-bottom: 20px;
    }
</style>

<div class="container">
  <div class="row">
  <g:set var="itemLink" value="${createLink(controller:'item', action:'show', params:[itemId: featureItem.item.id])}" />

    <g:if test="${featureItem.imageTitle && featureItem.description && featureItem.imageBanner}">
        <div class="col-sm-12 col-md-6">
          <g:if test="${featureItem.imageTitle}">
            <img class="item-image margin-bottom" src="${featureItem.imageTitle}" atl="${featureItem.item.name}">
          </g:if>
          <g:if test="${featureItem.description}">
            <p class="description margin-bottom">${featureItem.description}</p>
          </g:if>
        </div>
        <div class="col-sm-12 col-md-6">
          <g:if test="${featureItem.imageBanner}">
            <img class="item-image margin-bottom" src="${featureItem.imageBanner}" atl="${featureItem.item.name}">
          </g:if>
          <a href="${itemLink}"
            class="shop-now-section padding-bottom">SHOP NOW</a>
        </div>
    </g:if>
    <g:else>
        <div class="col-sm-12 col-md-12">
          <g:if test="${featureItem.imageBanner}">
            <img class="item-image margin-bottom" src="${featureItem.imageBanner}" atl="${featureItem.item.name}">
          </g:if>
          <a href="${itemLink}"
              class="shop-now-section padding-bottom">SHOP NOW</a>
        </div>
    </g:else>
  </div>
</div>