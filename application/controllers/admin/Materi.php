<?php
class Materi extends CI_Controller{
	function __construct(){
		parent::__construct();
		if($this->session->userdata('masuk') !=TRUE){
            $url=base_url('hal_siswa');
            redirect($url);
        };
	}


	function index(){
	
		$this->load->view('siswa/v_files');
	}

	
}