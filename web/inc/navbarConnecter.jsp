<%--
  Created by IntelliJ IDEA.
  User: inno-kirito
  Date: 25/08/2018
  Time: 08:40
  To change this template use File | Settings | File Templates.
--%>
<!-- Header -->
<header id="header">
    <!-- Nav -->
    <div id="nav">
        <!-- Main Nav -->
        <div id="nav-fixed">
            <div class="container">
                <!-- nav -->
                <ul class="nav-menu nav navbar-nav">
                    <li class="cat-1"><a href="<c:url value="/bigdata"></c:url>">Professeur</a></li>
                    <li class="cat-2"><a href="<c:url value="/datascience"></c:url>">Etudiant</a></li>
                    <li class="cat-3"><a href="<c:url value="/contact"></c:url>">Matiere</a></li>
                    <li class="cat-4"><a href="<c:url value="/administrateur"></c:url>">Mon Espace</a></li>
                    <%--<li class="cat-1"><a href="<c:url value="/deconnexion"></c:url>">Deconnexion</a></li>--%>
                </ul>
                <!-- /nav -->

                <!-- search & aside toggle -->
                <div class="nav-btns">
                    <button class="aside-btn"><i class="fa fa-bars"></i></button>
                    <button class="search-btn"><i class="fa fa-search"></i></button>
                    <div class="search-form">
                        <input class="search-input" type="text" name="search" placeholder="Enter Your Search ...">
                        <button class="search-close"><i class="fa fa-times"></i></button>
                    </div>
                </div>
                <!-- /search & aside toggle -->
            </div>
        </div>
        <!-- /Main Nav -->

        <!-- Aside Nav -->
        <div id="nav-aside">
            <!-- nav -->
            <div class="section-row">
                <ul class="nav-aside-menu">
                    <li class="cat-1"><a href="<c:url value="/bigdata"></c:url>">Professeur</a></li>
                    <li class="cat-2"><a href="<c:url value="/datascience"></c:url>">Etudiant</a></li>
                    <li class="cat-3"><a href="<c:url value="/contact"></c:url>">Matiere</a></li>
                    <li class="cat-4"><a href="<c:url value="/administrateur"></c:url>">Mon Espace</a></li>
                </ul>
            </div>
            <!-- /nav -->

            <!-- social links -->
            <div class="section-row">
                <h3>Follow us</h3>
                <ul class="nav-aside-social">
                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                    <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                </ul>
            </div>
            <!-- /social links -->

            <!-- aside nav close -->
            <button class="nav-aside-close"><i class="fa fa-times"></i></button>
            <!-- /aside nav close -->
        </div>
        <!-- Aside Nav -->
    </div>
    <!-- /Nav -->
</header>
<!-- /Header -->
