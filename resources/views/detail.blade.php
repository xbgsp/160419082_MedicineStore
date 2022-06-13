<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200;600&display=swap" rel="stylesheet">

        <!-- Styles -->
        <style>
            html, body {
                background-color: #fff;
                color: #636b6f;
                font-family: 'Nunito', sans-serif;
                font-weight: 200;
                height: 100vh;
                margin: 0;
            }

            .full-height {
                height: 100vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 84px;
            }

            .links > a {
                color: #269fdb;
                padding: 0 25px;
                font-size: 40px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 30px;
            }
        </style>
    </head>
    <body>
    <div class="container">
        @if($id == "medic1")
        <img src="https://www.monotaro.id/media/catalog/product/cache/877fcb35590cc62c03a65c52f73f09cd/S/0/S000043851-1.jpg" height="300" width="300">
        <br><b>Panadol</b><br>Panadol adalah obat untuk mengatasi sakit kepala

        @elseif($id == "medic2")
        <img src="https://hdmall.id/system/image_attachments/images/000/018/269/medium/ultraflu-4-tablet-1.jpg" height="300" width="300">
        <br><b>Ultraflu</b><br>Ultraflu adalah obat untuk mengatasi sakit flu

        @elseif($id == "medic3")
        <img src="https://www.monotaro.id/media/catalog/product/cache/a93b75c01b21750ab1c37c1e1fecbffe/e/x/exS028092537-2.jpg" height="300" width="300">
        <br><b>Vitacimin</b><br>Vitacimin adalah vitamin C dengan kandungan yang tinggi

        @elseif($id == "med_equip1")
        <img src="https://upload.wikimedia.org/wikipedia/commons/d/d2/Stethoscope-2.png" height="300" width="300">
        <br><b>Stetoskop</b><br>Stetoskop adalah alat untuk mendengarkan detak jantung di dalam tubuh

        @elseif($id == "med_equip2")
        <img src="https://id-live-05.slatic.net/shop/7c8532765fe5daefc3d6fa7f0d5c28fb.jpeg_2200x2200q80.jpg_.webp" height="300" width="300">
        <br><b>Masker</b><br>Masker adalah alat untuk melindungi diri dari bakteri dan virus
        @endif
    </div>
    </body>
</html>