<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class M_lisensi extends CI_Model {    

    function semua() {
        $this->db->order_by("id_lisensi", "DESC");
        return $this->db->get("tb_lisensi");
    }

    function getkode($id) {
        $kode = array('id_lisensi' => $id);
        return $this->db->get_where('tb_lisensi', $kode);
    }
    
    function kdotomatis() {
        $group=$this->db->get_where('tb_group',array('gid'=>$this->session->userdata('gid')))->row_array();
        $kode=$group['nama_alias'];
        $jenis = "LICENSE-".$kode."-".date('m').".";
        $query = $this->db->query("SELECT max(kode_lisensi) as maxID FROM tb_lisensi WHERE kode_lisensi");
        $data = $query->row_array();
        $idMax = $data['maxID'];
        $noUrut = (int) substr($idMax, 10, 3);
        $noUrut++;
        $newID = $jenis . sprintf("%03s", $noUrut);
        return $newID;       
    }

    function getsupplier() {
        $this->db->where('isactive','True');
        $this->db->order_by('nama_supplier','ASC');
        return $this->db->get('tb_supplier');
    }

    function getpenggunagid() {
        $gid=$this->session->userdata('gid');
        $query=$this->db->query("SELECT tb_pengguna.id_pengguna,tb_pengguna.nama_pengguna,tb_departemen.gid 
            FROM tb_pengguna INNER JOIN tb_departemen ON tb_departemen.id_dept = tb_pengguna.id_dept 
            WHERE tb_departemen.gid ='$gid' ORDER BY tb_pengguna.nama_pengguna ASC");
        return $query;
    }

    function simpan($data) {
        $this->db->insert('tb_lisensi', $data);
        return $this->db->insert_id();
    }

    function edit($kode,$data) {        
        $this->db->where('id_lisensi', $kode);
        $this->db->update('tb_lisensi', $data);
    }

    function hapus($kode) {
        $this->db->where('id_lisensi', $kode);
        $this->db->delete('tb_lisensi');
    }
}
