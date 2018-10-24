<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class M_manufacture extends CI_Model {    

   function list_manufacture() {
        $query = $this->db->query("SELECT * FROM tb_manufacture
            ORDER BY tb_manufacture.id_manufacture DESC");
        return $query;
    } 
    function list_manufactureid() {
        $gid=$this->session->userdata('gid');
        $query = $this->db->query("SELECT * FROM tb_manufacture 
            ORDER BY tb_manufacture.id_manufacture DESC");
        return $query;
    }

    function semua() {
        $this->db->order_by("id_manufacture", "DESC");
        return $this->db->get("tb_manufacture");
    }

    function getkode($id) {
        $kode = array('id_manufacture' => $id);
        return $this->db->get_where('tb_manufacture', $kode);
    }

    function gettipe() {
        $query=$this->db->query("SELECT tb_referensi.code_referensi, tb_referensi.nama_referensi 
            FROM tb_referensi WHERE code_referensi ='HARDWARE'");
        return $query;
    }

    function simpan($data) {
        $this->db->insert('tb_manufacture', $data);
        return $this->db->insert_id();
    }

    function edit($kode,$data) {        
        $this->db->where('id_manufacture', $kode);
        $this->db->update('tb_manufacture', $data);
    }

    function hapus($kode) {
        $this->db->where('id_manufacture', $kode);
        $this->db->delete('tb_manufacture');
    }
}
