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

    public function _site_output($output = null, $data_override = null) {
        $this->config->load('patient-ms-site');
        $ADMIN_THEME = $this->config->item('ADMIN_THEME');
        $data['THEME_ASSET_URL'] = base_url() . $this->config->item('THEME_ASSET');

        if ($output) {
            $data['output'] = $output->output;
            $data['css_files'] = '';
            $data['js_files'] = '';
            foreach ($output->css_files as $file) {
                $data['css_files'] .= '<link type="text/css" rel="stylesheet" href="' . $file . '" />';
            }
            foreach ($output->js_files as $file) {
                $data['js_files'] .= '<script src="' . $file . '"></script>';
            }
        }


        if ($data_override) {
            $data['pageHeading'] = $data_override['pageHeading'];
            $data['subHeading'] = $data_override['subHeading'];
            $data['Title'] = $data_override['Title'];
        }
//        print_r($data);
        $this->load->view($ADMIN_THEME . 'page-blank.php', $data);
    }

    function patient() {

        $crud = new grocery_CRUD();
        $crud->set_table('ms_patient')
                ->set_subject('Patient');
        $output = $crud->render();


        $data['pageHeading'] = "Patient";
        $data['subHeading'] = "Database";
        $data['Title'] = 'Patient | Patient MS Dashboard';
        $this->_site_output($output, $data);
    }

    function doctor() {

        $crud = new grocery_CRUD();
        $crud->set_table('ms_doctor')
                ->set_subject('Doctor');
        $output = $crud->render();


        $data['pageHeading'] = "Doctor";
        $data['subHeading'] = "Database";
        $data['Title'] = 'Doctor | Patient MS Dashboard';
        $this->_site_output($output, $data);
    }

    function prescription() {

        $crud = new grocery_CRUD();
        $crud->set_table('ms_prescription')
                ->set_subject('Prescription')
                ->set_relation('patient_ID', 'ms_patient', 'patient_name')
                ->set_relation('doctor_ID', 'ms_doctor', 'doctor_name')
                ->set_relation('referred_doctor_ID', 'ms_doctor', 'doctor_name')
                ->display_as('patient_ID','Patient Name')
                ->display_as('doctor_ID','Doctor Name')
                ->display_as('referred_doctor_ID','Referred Doctor Name');
        $output = $crud->render();


        $data['pageHeading'] = "Prescription";
        $data['subHeading'] = "Repository";
        $data['Title'] = 'Prescription | Patient MS Dashboard';
        $this->_site_output($output, $data);
    }

    function user() {

        $crud = new grocery_CRUD();
        $crud->set_table('users')
                ->set_subject('Users');
        $output = $crud->render();


        $data['pageHeading'] = "Users";
        $data['subHeading'] = "Database";
        $data['Title'] = 'Users | Patient MS Dashboard';
        $this->_site_output($output, $data);
    }
    function test() {

        $crud = new grocery_CRUD();
        $crud->set_table('ms_test')
                ->set_subject('Tests')
                ->set_relation('hospital_ID', 'ms_hospital', 'hospital_name')
                ->display_as('hospital_ID','Hospital Name');
        $output = $crud->render();


        $data['pageHeading'] = "Tests";
        $data['subHeading'] = "Database";
        $data['Title'] = 'Tests | Patient MS Dashboard';
        $this->_site_output($output, $data);
    }
    function hospital() {

        $crud = new grocery_CRUD();
        $crud->set_table('ms_hospital')
                ->set_subject('Hospital');
        $output = $crud->render();


        $data['pageHeading'] = "Hospitals";
        $data['subHeading'] = "Database";
        $data['Title'] = 'Hospitals | Patient MS Dashboard';
        $this->_site_output($output, $data);
    }

}
