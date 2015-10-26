<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

    function __construct() {
        parent::__construct();

        $this->load->database();
        $this->load->helper('url');
        $this->load->model('grocery_crud_model');

        $this->load->library('grocery_CRUD');
    }

    /**
     * Index Page for this controller.
     *
     * Maps to the following URL
     * 		http://example.com/index.php/welcome
     * 	- or -
     * 		http://example.com/index.php/welcome/index
     * 	- or -
     * Since this controller is set as the default controller in
     * config/routes.php, it's displayed at http://example.com/
     *
     * So any other public methods not prefixed with an underscore will
     * map to /index.php/welcome/<method_name>
     * @see http://codeigniter.com/user_guide/general/urls.html
     */
    function index() {
        $this->patient();
    }

    public function _example_output($output = null) {
        $this->load->view('admin/sb-admin/page-blank.php', $output);
    }

    function patient() {

        $crud = new grocery_CRUD();
        $crud->set_table('ms_patient')
                ->set_subject('Patient');
        $output = $crud->render();


        $this->_example_output($output);
    }

}
