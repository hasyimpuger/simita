<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Lisensi extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model('m_lisensi');
        chek_session();
    }

	public function index() {
        $data['record'] = $this->m_lisensi->semua()->result(); 
        $this->template->display('lisensi/view', $data);       
    }		
   
    public function view_data() {
        $criteria = $this->m_lisensi->listBarang();
        $no = 1;
        foreach ($criteria->result_array() as $data) {
            $row[] = array(
                'no' => $no++,
                'kd_barang' => $data['kd_barang'],
                'jenis' =>$data['kategori'],
                'b_nama' => $data['b_nama'],
                'merek' => $data['merek'],
                'spesifikasi' => $data['spesifikasi'],
                'satuan' => '<center>' . $data['satuan_nama'] . '</center>',
                'edit' => '<center><a href="' . base_url() . 'barang/edit/' . $data['kd_barang'] .'"><i class="glyphicon glyphicon-edit"></i></a></center>',
            );
        }
        //$result=array_merge($result,array('rows'=>$row));
        $result = array('aaData' => $row);
        echo json_encode($result);
    }

    function add() {                
        $this->_set_rules();
        if ($this->form_validation->run() == true) {
            $data = array(
                'kode_lisensi' => $this->m_lisensi->kdotomatis(),  
                'jenis_lisensi' => $this->input->post('jenis_lisensi'),
                'supplier' => $this->input->post('supplier'),
                'key' => $this->input->post('key'),
                'tgl_pembelian' => $this->input->post('tgl_pembelian'),
                'tgl_habis' => $this->input->post('tgl_habis'),
                'jumlah_lisensi' => $this->input->post('jumlah_lisensi'),
                'keterangan' => $this->input->post('keterangan'),
                'createby'=>$this->session->userdata('nama'),
                'createdate'=>date('Y-m-d H:i:s'),
            );
            $this->m_lisensi->simpan($data);
            redirect('lisensi');
        } else {           
            $data['supplier'] = $this->m_lisensi->getsupplier()->result();
            $this->template->display('lisensi/tambah');
        }
    }
	
    function edit() {       
        if (isset($_POST['submit'])) {
            $this->_set_rules();
            if ($this->form_validation->run() == true) {
                $data = array(     
                    'kode_lisensi' => $this->m_lisensi->kdotomatis(),                       
                    'jenis_lisensi' => $this->input->post('jenis_lisensi'),
                    'supplier' => $this->input->post('supplier'),
                    'key' => $this->input->post('key'),
                    'tgl_pembelian' => $this->input->post('tgl_pembelian'),
                    'tgl_habis' => $this->input->post('tgl_habis'),
                    'jumlah_lisensi' => $this->input->post('jumlah_lisensi'),
                    'keterangan' => $this->input->post('keterangan'),
                );
                $kode=$this->input->post('id');
                $this->m_lisensi->edit($kode,$data);
                redirect('lisensi');                
            }else {
                $id = $this->input->post('id');  
                $data['supplier'] = $this->m_lisensi->getsupplier()->result();                                   
                $data['record'] = $this->m_lisensi->getkode($id)->row_array();
                $this->template->display('lisensi/edit', $data); 
            } 
           }else{ 
                $id = $this->uri->segment(3);
                $data['record'] = $this->m_lisensi->getkode($id)->row_array();
                $this->template->display('lisensi/edit', $data);
            }
    }
    function delete($id) {
        $this->m_lisensi->hapus($id);
		redirect('lisensi');
    }

    function _set_rules() {
        $this->form_validation->set_rules('jenis_lisensi', 'Jenis Lisensi', 'required');
        $this->form_validation->set_rules('supplier', 'Supplier', 'required');
        $this->form_validation->set_rules('key', 'License Key', 'required');
        $this->form_validation->set_rules('tgl_pembelian', 'Tanggal Pembelian', 'required');
        $this->form_validation->set_rules('tgl_habis', 'Tanggal Akhir', 'required');
        $this->form_validation->set_rules('jumlah_lisensi', 'Jumlah Lisensi', 'required');
        $this->form_validation->set_rules('keterangan', 'Keterangan atau Info Lain', 'required');
        
    }

}
