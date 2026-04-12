<!DOCTYPE html>
<html lang="en">

<head>
    <title>Dashboard - E-Lapor</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <link rel="icon" href="assets/images/favicon.svg" type="image/x-icon" />
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;500;600&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="assets/fonts/phosphor/regular/style.css" />
    <link rel="stylesheet" href="assets/fonts/tabler-icons.min.css" />
    <link rel="stylesheet" href="assets/css/style.css" id="main-style-link" />
    <link rel="stylesheet" href="assets/css/style-preset.css" />

    <style>
        /* PERBAIKAN CSS SIDEBAR MOBILE TUNTAS */
        @media (max-width: 1024px) {
            .pc-sidebar.mob-sidebar-active {
                position: fixed !important; /* Kunci utama agar nempel di layar */
                top: 0 !important;
                left: 0 !important; /* Tarik dari luar layar */
                height: 100vh !important; /* Sepenuh tinggi layar */
                transform: translateX(0) !important; 
                z-index: 99999 !important; /* Jauh lebih tinggi dari blur backdrop */
                visibility: visible !important;
                display: block !important;
                background-color: #212529 !important; /* Warna gelap agar tidak transparan */
                box-shadow: 4px 0 10px rgba(0,0,0,0.5) !important;
                width: 260px !important; /* Lebar standar sidebar */
            }
        }
    </style>
</head>

<body>
    <header class="pc-header">
        <div class="header-wrapper">
            <div class="me-auto pc-mob-drp">
                <ul class="list-unstyled">
                    <li class="pc-h-item pc-sidebar-collapse">
                        <a href="#" class="pc-head-link ms-0" id="sidebar-hide">
                            <i class="ti ti-menu-2"></i>
                        </a>
                    </li>
                    <li class="pc-h-item pc-sidebar-popup">
                        <a href="#" class="pc-head-link ms-0" id="mobile-collapse">
                            <i class="ti ti-menu-2"></i>
                        </a>
                    </li>
                </ul>
            </div>
            
        </div>
    </header>