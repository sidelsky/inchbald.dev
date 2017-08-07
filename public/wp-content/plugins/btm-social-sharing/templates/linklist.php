<?php
if (!empty($socialLinks) )
{ ?>
    <ul>
        <?php
        foreach ($socialLinks as $name => $link)
        {

            echo '<li><a href="'.$link.'">On Plugin '.$name.'</a>';
            if ($a['fetch_counts'] && isset($shared[$name]))
                echo ' Shared '.$shared[$name].' times';
            echo '</li>';
        }

        ?>
    </ul>
<?php } ?>