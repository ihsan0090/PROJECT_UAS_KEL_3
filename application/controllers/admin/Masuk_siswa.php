<?php
class Masuk_siswa extends CI_Controller{

    function index(){
        $this->load->view('siswa/v_login_siswa');
    }

    function auth(){
        $nis = $this->input->post('nis');
        $password = $this->input->post('password');
        $this->load->model('m_siswa');
        $this->m_siswa->ambillogin($nis,$password); 
         
    }
    function logout(){
        $this->session->sess_destroy();
        redirect('admin/masuk_siswa');
    }
}
