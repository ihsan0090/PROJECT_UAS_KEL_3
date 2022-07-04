<?php
class Masuk_guru extends CI_Controller{

    function index(){
        $this->load->view('guru/v_login_guru');
    }

    function auth(){
        $nip = $this->input->post('nip');
        $password = $this->input->post('password');
        $this->load->model('m_guru');
        $this->m_guru->ambillogin($nip,$password); 
         
    }
    function logout(){
        $this->session->sess_destroy();
        redirect('admin/masuk_guru');
    }
}
