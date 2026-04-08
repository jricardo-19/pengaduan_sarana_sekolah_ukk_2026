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
       @media (max-width: 1024px) {
    .pc-sidebar.mob-sidebar-active {
        left: 0 !important; /* Tambahkan baris ini untuk menariknya ke dalam layar */
        transform: translateX(0) !important; 
        z-index: 1060 !important; /* Naikkan z-index lebih tinggi dari overlay blur (biasanya overlay ada di 1040/1050) */
        visibility: visible !important;
        background-color: #1e293b !important; /* Pastikan background tidak transparan */
        /* ... sisa kode css Anda ... */
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