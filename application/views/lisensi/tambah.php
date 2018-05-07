<script type="text/javascript" src="<?php echo base_url('assets/js/plugins/jQuery/jQuery-2.1.3.min.js'); ?>"></script>
<script type="text/javascript" src="<?php echo base_url('assets/js/plugins/maskedinput/jquery.maskedinput.js'); ?>"></script>
        <script>
        jQuery(function($){
            $("#key").mask("*****-*****-*****-*****");
        });
        </script>
<section class="content-header">
    <h1>
        Tambah
        <small>Data Lisensi Software</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-suitcase"></i>Lisensi & Password</a></li>
        <li class="active">AntiVirus & Software</li>
    </ol>
</section>
<section class="content">
    <div class="row">
        <!-- left column -->
        <div class="col-md-12">
            <!-- general form elements -->
            <div class="box box-primary">
                <div class="box-header">
                <div class="col-md-5">
                <?php
                    echo form_open('lisensi/add');
                ?> 
                  
                    <div class="box-body">
                        <div class="form-group">
                            <label>Jenis Lisensi</label>
                            <select name="jenis_lisensi" class="form-control " >
                                <option value="">-- Pilih Jenis Lisensi --</option>
                                <option value='ANTIVIRUS'>ANTIVIRUS</option>
                                <option value='WINDOWS'>WINDOWS</option>
                                <option value='OFFICE'>OFFICE</option>
                                <option value='SOFTWARE LAIN'>SOFTWARE LAIN</option>                                                               
                            </select>
                            <?php echo form_error('jenis_lisensi', '<div class="text-red">', '</div>'); ?>
                        </div>
                        <div class="form-group">
                            <label>Supplier</label>
                            <select name="supplier" class="combobox form-control" id="supplier"> 
                                <option value="">- Pilih Nama Supplier -</option>                               
                                <?php
                                    if (!empty($supplier)) {
                                        foreach ($supplier as $row) {
                                            echo "<option value='".$row->nama_supplier."'>".strtoupper($row->nama_supplier)."</option>";                                        
                                        }
                                    }
                                ?>
                            </select>                          
                        </div> 
                        <div class="form-group">
                            <label for="example">Key Lisensi</label>
                            <input type="text" id="key" name="key" class="form-control" required oninvalid="setCustomValidity('License Key Harus di Isi !')"
                                   oninput="setCustomValidity('')" placeholder="" >
                                   <?php echo form_error('nama_provider', '<div class="text-red">', '</div>'); ?>
                        </div>
                        <div class="form-group">
                            <label>Tanggal Masa Berlaku</label>
                            <div class="input-group">
                              <div class="input-group-addon">
                                <i class="fa fa-calendar"></i>
                              </div>
                              
                                 <input type="text" name="tgl_pembelian" class="form-control datepicker" data-date-format="yyyy-mm-dd" required oninvalid="setCustomValidity('Tanggal Kontrak Wajib Diisi !')"
                                   oninput="setCustomValidity('')" placeholder="yyyy-mm-dd" >
                            
                            </div><!-- /.input group -->
                        </div> 
                        <div class="form-group">
                            <label>Berlaku Hingga</label>
                            <div class="input-group">
                              <div class="input-group-addon">
                                <i class="fa fa-calendar"></i>
                              </div>
                              
                                 <input type="text" name="tgl_habis" class="form-control datepicker" data-date-format="yyyy-mm-dd" required oninvalid="setCustomValidity('Tanggal Kontrak Wajib Diisi !')"
                                   oninput="setCustomValidity('')" placeholder="yyyy-mm-dd" >
                            
                            </div><!-- /.input group -->
                        </div>   
                        <div class="form-group">
                            <label for="example">Jumlah Lisensi</label>
                            <input type="number" name="jumlah_lisensi" class="form-control" required oninvalid="setCustomValidity('Jumlah Lisensi Harus di Isi !')"
                                   oninput="setCustomValidity('')" placeholder="200" >
                                   <?php echo form_error('jumlah_lisensi', '<div class="text-red">', '</div>'); ?>
                        </div>                     
                        <div class="form-group">
                            <label for="">Keterangan & Informasi Lain</label>
                            <textarea name="keterangan" onkeyup="this.value = this.value.toUpperCase()"  class="form-control" rows="3" required oninvalid="setCustomValidity('Keterangan Harus di Isi !')"
                                   oninput="setCustomValidity('')" placeholder="Masukan Keterangan atau informasi lainnya"></textarea>
                            <?php echo form_error('spek', '<div class="text-red">', '</div>'); ?>
                        </div>           
                        <tr>
                                
                </tr>                    
                    </div><!-- /.box-body -->

                    <div class="box-footer">
                        <button type="submit" name="submit" class="btn btn-primary"><i class="glyphicon glyphicon-hdd"></i> Simpan Lisensi</button>                        
                        <a href="<?php echo site_url('lisensi'); ?>" class="btn btn-primary">Kembali</a>
                    </div>
                </form>
                </div>
            </div>
            </div>
        </div>
    </div>
</section>