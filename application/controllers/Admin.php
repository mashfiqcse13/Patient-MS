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
        $this->config->load('patient-ms-site');
        $ADMIN_THEME = $this->config->item('ADMIN_THEME');
        $data['THEME_ASSET_URL'] = base_url() . $this->config->item('THEME_ASSET');

        $data['pageHeading'] = "Admin Panel";
        $data['Title'] = 'Patient MS Dashboard';
        $data['output'] = '';
        $this->load->view($ADMIN_THEME . 'page-blank.php', $data);
    }

    public function _example_output($output = null) {
        $this->load->view('example.php', $output);
    }

    public function _site_output($output = null) {
        $this->config->load('patient-ms-site');
        $ADMIN_THEME = $this->config->item('ADMIN_THEME');
        $data['THEME_ASSET_URL'] = base_url() . $this->config->item('THEME_ASSET');

        $data['pageHeading'] = "Admin Panel";
        $data['Title'] = 'Patient MS Dashboard';
        if ($output) {
            $data['output'] = $output->output;
            $data['css_files']='';
            $data['js_files']='';
            foreach ($output->css_files as $file) {
                $data['css_files'] .= '<link type="text/css" rel="stylesheet" href="' . $file . '" />';
            }
            foreach ($output->js_files as $file) {
                $data['js_files'] .= '<script src="' . $file . '"></script>';
            }
        }
//        print_r($data);
        $this->load->view($ADMIN_THEME . 'page-blank.php', $data);
    }

    function patient() {

        $crud = new grocery_CRUD();
        $crud->set_table('ms_patient')
                ->set_subject('Patient');
        $output = $crud->render();


        $this->_site_output($output);
    }

}
