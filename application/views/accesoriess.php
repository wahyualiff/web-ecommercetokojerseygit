<div class="container-fluid">

  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

          <div class="row text-center mt-3">

              <?php foreach ($accesoriess as $brg) : ?>
                <div class="card ml-3 mb-3" style="width: 18rem;">
          <img src="<?php echo base_url(). "/uploads/" .$brg->gambar ?>" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title mb-1"><?php echo $brg->nama_brg ?></h5>
            <small><?php echo $brg->keterangan ?></small><br>
            <span class="badge badge-primary mb-3">Rp. <?php echo number_format($brg->harga, 0,',','.')  ?></span><br>
            <?php echo anchor('dashboard/tambah_ke_keranjang/'.$brg->id_brg,'<div class="btn btn-sm btn-danger">Tambah ke Keranjang</div>') ?>
            <?php echo anchor('dashboard/detail/'.$brg->id_brg,'<div class="btn btn-sm btn-danger">Detail</div>') ?>
  </div>
</div>

      <?php endforeach; ?> 
    
  </div>
</div>