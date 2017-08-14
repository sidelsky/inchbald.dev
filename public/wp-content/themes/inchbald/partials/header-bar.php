<header class="page-header">

    <!-- Logo -->
    <div class="page-header__column page-header__column--logo">
        <?php include 'inchbald-logo.php'; ?>
    </div>

    <!-- Navigation -->
    <div class="page-header__column page-header__column--navigation">
        <nav class="a-site-nav">
            <?php
                //Nav Menu
                $args = array(
                    'container' =>	'',
                    'echo' =>	true,
                    'items_wrap' =>	'<ul class="a-site-nav__menu">%3$s</ul>'
                );
                wp_nav_menu($args);
            ?>
        </nav>
    </div>

    <!-- Search and Portal-->
    <div class="page-header__column page-header__column--search-portal">

        <div class="page-header__column page-header__column--search">
            <a href="#" class="search" id="search-button">

                <svg class="icon icon--search" id="search-icon">
                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#shape-search" viewBox="0 0 32 32"></use>
                </svg>

                <svg class="icon icon--close" id="close-icon">
                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#shape-close" viewBox="0 0 32 32"></use>
                </svg>

            </a>
        </div>

        <?php include('portal.php'); ?>

    </div>


</header>