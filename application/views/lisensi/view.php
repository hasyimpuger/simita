
<section class="content-header">
    <h1>
        Data Lisensi
        <small>Data Lisensi Software</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-suitcase"></i>Lisensi & Password</a></li>
        <li class="active">AntiVirus & Software</li>
    </ol>
</section>
<section class="content">   

    <div class="row">
        <div class="col-md-12">
            <div class="box box-primary">
                <div class='box-header with-border'>
                    <h3 class='box-title'><a href="<?php echo base_url('lisensi/add'); ?>" class="btn btn-primary btn-small">
                            <i class="glyphicon glyphicon-plus"></i> Tambah Data</a></h3>
                            <label calss='control-label' ></label>
                </div>
                <div class="box-body table-responsive">
                    <table id="tb-datatables" class="table table-bordered table-striped" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>No.</th>
                                <th>Jenis Lisensi</th>
                                <th>Supplier</th>
                                <th>Key </th>  
                                <th>Tanggal Pembelian</th>
                                <th>Berlaku Hingga</th> 
                                <th>Jumlah Lisensi</th> 
                                <th>Keterangan</th>                                                          
                                <th>Edit</th>   
                               <!-- <th>Delete</th>    -->                             
                            </tr>
                        </thead>
                       <?php
					   $no=1;
					   foreach ($record as $r){
						   echo"
							   <tr>
							   <td>$no</td>
                               <td>".$r->jenis_lisensi."</td>
                               <td>".$r->supplier."</td>
							   <td>".$r->key_lisensi."</td>	
                               <td>".$r->tgl_pembelian."</td>	
                               <td>".$r->tgl_habis."</td>
                               <td>".$r->jumlah_lisensi."</td>
                               <td>".$r->keterangan."</td>			   					   
							   <td>" . anchor('lisensi/edit/' . $r->id_lisensi, '<i class="btn btn-info btn-sm glyphicon glyphicon-edit" data-toggle="tooltip" title="Edit"></i>') . "</td>
                               </tr>";
						   $no++;
					   }
					   ?>
                    </Table> 
                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div>
    </div>
</section><!-- /.content -->
