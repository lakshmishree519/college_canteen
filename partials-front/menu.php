<?php include('config/constants.php'); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!-- Import to make website responsive-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rock Top Canteen</title>

    <!-- Link css file-->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <!-- Navbar Starts here-->
    <section class="navbar">
        <div class="container">
            <div class="logo">
                <a href="#" title="Logo">
                <img src="images/Logo3.png" alt="Canteen Logo" class="img-responsive"> 
                </a>
            </div>
            <div class="menu text-right">
                <ul>
                    <li>
                        <a href="<?php echo SITEURL; ?>">Home</a>
                    </li>
                    <li>
                        <a href="<?php echo SITEURL; ?>categories.php">Categories</a>
                    </li>
                    
                    <li>
                        <a href="<?php echo SITEURL; ?>foods.php">Foods</a>
                    </li>
                    
                </ul>
                
            </div>
            <div class="clearfix"></div>
        </div>
    </section>
    <!-- Navbar ends here-->