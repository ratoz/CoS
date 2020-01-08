<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>
    Circle Of Science
  </title>
  <!-- Favicon -->
  <link href="<?= BASEURL; ?>img/brand/" rel="icon" type="image/png">
  <!-- Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
  <!-- Icons -->
  <link href="<?= BASEURL; ?>js/plugins/nucleo/css/nucleo.css" rel="stylesheet" />
  <link href="<?= BASEURL; ?>js/plugins/fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet" />
	
  <!-- CSS Files -->
  <link href="<?= BASEURL; ?>css/argon-dashboard.css?v=1.1.0" rel="stylesheet" />
  <link rel="stylesheet" href="<?= BASEURL; ?>css/style.css" rel="stylesheet"/>
  <link href="./assets/css/font.css" rel="html"/>
  <link rel="stylesheet" href="<?= BASEURL?>css/jquery-ui.min.css"/>
  <link rel="stylesheet" href="<?= BASEURL?>css/jquery-ui.structure.min.css">
  <!--   Core   -->


  <?php error_reporting(0);
  if ($data['page'] ===  ('dashboard'||'rank')){ ?>
  <style>
            input[type=text] {
                border: 2px solid #bdbdbd;
                font-family: 'Roboto', Arial, Sans-serif;
              font-size: 15px;
              font-weight: 400;
                padding: .5em .75em;
                width: 300px;
            }
            input[type=text]:focus {
                border: 2px solid #757575;
              outline: none;
            }

            .ui-menu {
                background-color: white;
            }
            .ui-menu li  {
                border: black 1px solid;
            }


        </style>

        <?php } ?>

</head>

<body class="">
