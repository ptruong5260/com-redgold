<style>
    .navbar-custom{
        background-color: black !important;
        border: 0 !important;
        border-radius: 0 !important;
    }

    .nav{
        background-color: black;
        -webkit-box-shadow: none;
        box-shadow: none;
    }

    .nav li{
        float: none;
    }

    .navbar-collapse-custom{
        border-top: 0 !important;
    }

    .menu{
        color: white !important;
    }
    .menu:hover{
        background-color: initial !important;
    }
    .menu:focus{
        background-color: initial !important;
    }
</style>

<nav class="navbar navbar-default navbar-custom">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>

    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <g:set var="collectionSer" bean="collectionService" />
    <g:set var="collectionMenus" value="${collectionSer.getCollectionByMenuType()}" />

    <div class="collapse navbar-collapse navbar-collapse-custom" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <g:each var="collectionMenu" in="${collectionMenus}">
            <li class="dropdown">
                <a href="#" class="dropdown-toggle menu" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${collectionMenu.name}</a>
                <g:set var="subCollectionMeuList" value="${collectionMenu.getChildCollectionList()}" />
                <g:render template="/templates/dropdownMenu" model="[subCollectionMeuList: subCollectionMeuList]"/>
            </li>
        </g:each>
        <li><a href="#" class="menu">About Red Gold</a></li>
        <li><a href="" class="menu">Contact Us</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>