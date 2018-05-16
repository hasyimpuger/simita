<script type="text/javascript" src="<?php echo base_url('assets/js/plugins/jQuery/jQuery-2.1.3.min.js'); ?>"></script>
<script type="text/javascript" src="<?php echo base_url('assets/js/plugins/maskedinput/jquery.maskedinput.js'); ?>"></script>
<script type="text/javascript" src="<?php echo base_url('assets/js/plugins/ckeditor/ckeditor.js'); ?>"></script>
<script>
        jQuery(function($){
            $("#asethrd").mask("aaaa99/9/9/9/999/9");
            $("#key").mask("****-****-****-****-****");
        });
  </script>
<script>
var ckeditor = CKEDITOR.replace('keterangan',{
	height:'600px'
});
CKEDITOR.disableAutoInline = true;
CKEDITOR.inline('editable');
</script>
<section class="content-header">
    <h1>
        Tambah
        <small>Data Lisensi</small>
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
                            <label>Supplier</label>
                            <select name="supplier" class="combobox form-control" id="supplier"> 
                                <option value="">- Pilih Supplier/Vendor -</option>                               
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
                            <label>Jenis Lisensi</label>
                            <select name="jenis_lisensi" class="form-control " >
                                <option value="">-- Pilih Jenis Lisensi --</option>
                                <option value='WIRELESS'>AntiVirus</option>
                                <option value='FIBER OPTIC'>Windows</option>
                                <option value='TV CABLE'>Office</option>
                                <option value='MODEM'>Lain-Lain</option>                                                               
                            </select>
                            <?php echo form_error('jenis_lisensi', '<div class="text-red">', '</div>'); ?>
                        </div>
                        <div class="form-group">
                            <label>Key Lisensi</label>
                            <div class="input-group">
                              <div class="input-group-addon">
                                <i class="fa fa-key"></i>
                              </div>
                              <input name="key_lisensi" type="text" class="form-control" id="key" />
                            </div><!-- /.input group -->
                            <?php echo form_error('key_lisensi', '<div class="text-red">', '</div>'); ?>
                        </div><!-- /.form group --> 
                        <div class="form-group">
                            <label>Tanggal Aktif</label>
                            <div class="input-group">
                              <div class="input-group-addon">
                                <i class="fa fa-calendar"></i>
                              </div>
                                 <input type="text" name="tgl_pembelian" class="form-control datepicker" data-date-format="yyyy-mm-dd" required oninvalid="setCustomValidity('Tanggal Berlaku Wajib Diisi !')"
                                   oninput="setCustomValidity('')" placeholder="yyyy-mm-dd" >
                            </div><!-- /.input group -->
                        </div>
                        <div class="form-group">
                            <label>Tanggal Habis Lisensi</label>
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
                        </div> 
                        <div class="form-group">
                            <label for="">Keterangan</label>
                            <textarea name="keterangan" class="ckeditor" rows="3" required oninvalid="setCustomValidity('Spesifikasi Harus di Isi !')"
                                   oninput="setCustomValidity('')" placeholder="Masukan Kapasitas Bandwidth Download dan Upload serta keterangan lainnya"></textarea>
                            <?php echo form_error('keterangan', '<div class="text-red">', '</div>'); ?>
                        </div>                    
                    </div><!-- /.box-body -->
                    <div class="box-footer">
                        <button type="submit" name="submit" class="btn btn-primary"><i class="glyphicon glyphicon-hdd"></i> Simpan</button>                        
                        <a href="<?php echo site_url('lisensi'); ?>" class="btn btn-primary">Kembali</a>
                    </div>
                </form>
                </div>
            </div>
            </div>
        </div>
    </div>
</section>