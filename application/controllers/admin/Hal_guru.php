<?php
class Hal_guru extends CI_Controller{
	function __construct(){
		parent::__construct();
		if($this->session->userdata('masuk') !=TRUE){
            $url=base_url('hal_guru');
            redirect($url);
        };
	}
	function index(){
			$this->load->view('guru/v_dashboard_guru');
		}
	
	}