<style>
    .dropdown-menu-custom{
        background-color: white !important;
    }
    .dropdown-menu-custom{
        width: 800px;
    }
    .dropdown-menu-custom li{
        float: left;
    }

    .dropdown-menu-custom li:after {
      clear: both;
      display: block;
      content: "";
    }

    .dropdown-menu-item a{
        padding-left: 50px;
    }
</style>

<ul class="dropdown-menu dropdown-menu-custom">
    <g:each var="subCollectionMenu" in="${subCollectionMeuList}">
        <li><a href="#">${subCollectionMenu.name}</a>
            <ul class="dropdown-menu-item">
                <g:set var="childCollectionList" value="${subCollectionMenu.getChildCollectionList()}" />
                <li>
                    <g:each var="childCollection" in="${childCollectionList}">
                        <a>${childCollection.name}</a>
                    </g:each>
                </li>
            </ul>
        </li>
    </g:each>
</ul>