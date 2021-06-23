<!DOCTYPE html>
<html>
<head>
    <title>Data stok barang Admin</title>
    <script type="text/javascript" src="<?php echo base_url('assets/charts/Chart.js')?>"></script>
</head>
<body>
    <style type="text/css">
    body{
        font-family: serif-sans;
    }

    table{
        margin: 0px auto;
    }
    </style>

        <center>
        <h2>Selamat Datang di tampilan admin<br/>- PREMIER LEAGUE STORE -</h2>
    </center>

    <?php 
    include 'koneksi.php';
    ?>


    <div style="width: 800px;margin: 0px auto;">
        <canvas id="myChart"></canvas>
    </div>

        <script>
        var ctx = document.getElementById("myChart").getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: ["Home Kits", "Away", "Third Kits", "Training","Clothing","Retro","Accessories"],
                datasets: [{
                    label: '# of Votes',
                    data: [<?php 
                    $jumlah_home_kits = mysqli_query($koneksi,"select * from tb_barang where kategori='home kits'");
                    echo mysqli_num_rows($jumlah_home_kits);
                    ?>, 
                    <?php 
                    $jumlah_away = mysqli_query($koneksi,"select * from tb_barang where kategori='away'");
                    echo mysqli_num_rows($jumlah_away);
                    ?>, 
                    <?php 
                    $jumlah_third_kits = mysqli_query($koneksi,"select * from tb_barang where kategori='third kits'");
                    echo mysqli_num_rows($jumlah_third_kits);
                    ?>, 
                    <?php 
                    $jumlah_training = mysqli_query($koneksi,"select * from tb_barang where kategori='training'");
                    echo mysqli_num_rows($jumlah_training);
                    ?>,
                    <?php 
                    $jumlah_clothing = mysqli_query($koneksi,"select * from tb_barang where kategori='clothing'");
                    echo mysqli_num_rows($jumlah_clothing);
                    ?>,
                    <?php 
                    $jumlah_retro = mysqli_query($koneksi,"select * from tb_barang where kategori='retro'");
                    echo mysqli_num_rows($jumlah_retro);
                    ?>,
                     <?php 
                    $jumlah_accessories = mysqli_query($koneksi,"select * from tb_barang where kategori='accessories'");
                    echo mysqli_num_rows($jumlah_accessories);
                    ?>,
                    ],
                    backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)'
                    'rgba(255, 130, 50, 0.2)',
                    ],
                    borderColor: [
                    'rgba(255,99,132,1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)'
                    'rgba(102, 99, 45, 1)'
                    ],
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero:true
                        }
                    }]
                }
            }
        });
    </script>
</body>
</html>
