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
</style>

<g:if test="${item.image}">
    <img class="item-image" src="${item.image}" atl="${item.name}">
</g:if>