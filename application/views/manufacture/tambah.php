<section class="content-header">
    <h1>
        Tambah
        <small>Master Manufacture (Merk)</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-suitcase"></i>Master</a></li>
        <li class="active">Manufacture (Merk)</li>
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
                    echo form_open('manufacture/add');
                ?> 
                  
                    <div class="box-body">
                    <div class="form-group">
                            <label>Tipe</label>
                            <select name="tipe" class="combobox form-control" id="tipe"> 
                                <option value="">- Pilih Tipe -</option>                               
                                    <?php
                                    if (!empty($tipe)) {
                                        foreach ($tipe as $row) {
                                            echo "<option value=".$row->nama_referensi.">".strtoupper($row->nama_referensi)."</option>";                                        
                                        }
                                    }
                                    ?>
                            </select>                          
                        </div>
                        <div class="form-group">
                            <label for="example">Manufacture (Merk)</label>
                            <input type="tex" name="nama_manufacture" onkeyup="this.value = this.value.toUpperCase()" class="form-control" required oninvalid="setCustomValidity('Merk Wajib Diisi !')"
                                   oninput="setCustomValidity('')" placeholder="Masukan Merk" >
                                   <?php echo form_error('nama_manufacture', '<div class="text-red">', '</div>'); ?>
                        </div>                 
                    </div><!-- /.box-body -->

                    <div class="box-footer">
                        <button type="submit" name="submit" class="btn btn-primary"><i class="glyphicon glyphicon-hdd"></i> Simpan</button>                        
                        <a href="<?php echo site_url('manufacture'); ?>" class="btn btn-primary">Kembali</a>
                    </div>
                </form>
                </div>
            </div>
            </div>
        </div>
    </div>
</section>