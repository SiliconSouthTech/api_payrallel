<?php

defined('BASEPATH') OR exit('No direct script access allowed');

// This can be removed if you use __autoload() in config.php OR use Modular Extensions
require APPPATH . '/libraries/REST_Controller.php';

/**
 * This is an example of a few basic user interaction methods you could use
 * all done with a hardcoded array
 *
 * @package         CodeIgniter
 * @subpackage      Rest Server
 * @category        Controller
 * @author          Phil Sturgeon, Chris Kacerguis
 * @license         MIT
 * @link            https://github.com/chriskacerguis/codeigniter-restserver
 */
class Subscription extends REST_Controller{

	public function __Construct(){
		parent::__Construct();
		$this->load->model('generateRef');
	
	}

  

  //converting the index function to a remap function to detect the url section changes
  //where the url segment to becomes the cause id or another unique id for the cause
	public function payment_get()
  {

        //$data['session_id'] = $this->session->userdata('session_id');
    

     		$ref_str = $this->generateRef->return_checked_str(10, '', array('uppercase', 'number', 'uppercase', 'lowercase')); //output 1xQRPl4ZYrP6FBO)
     		//$ref = $this->generateRef->return_ref_val();
        $user_id = $this->get('user_id');
        $email = $this->generateRef->return_user_email($user_id);   
    		//changed the format for passing data from $this->data to $data
    		$data['ref'] = $ref_str;
    		$data['email'] = $email; //this should be passed into from a curl
                       
    		$data['data_resp'] = $this->generateRef->return_payment_info($user_id); //pass the user id here

        //getting the cause id from the url and passing it as a data

       // $data['cause_id'] = $this->uri->segment(2); //change this to the cause id 

        $cause_id = $this->get('cause_id');
        $data['cause_id'] = $cause_id;
        //$this->load->view('payment',$this->data);

        //changed passed data from $this->data to $data

        //we have to log this details in the database first so that we could include the cause id that the payment is for
        //set the status as pending
        //update after succesful payment



        //adding other info to the payment data

        $data['first_trans_date'] = date('Y-m-d H:i:s');
        $type_of_payment = $this->get('type_of_payment');
        $data['type_of_payment'] = $type_of_payment;
        $data['status'] = "pending";
        $amount = $this->get('amount');
        $data['amount'] = $amount;
        $data['reference'] = $ref_str."-". date('Ymd');
        $goal_type = $this->get('goal_type');
        if (empty($goal_type)) {
          # code...
        } else {
          $data['goal_type'] = $goal_type;
        }
        
        
        $data['message'] = "Pending payment";
        $data['domain'] = $this->agent->referrer();
        //$data['user_id'] = $this->session->userdata('username'); //this should be passed from a curl


        //so instead of outputing and passing the data to the view.. 
        //we would just pass the data as the response

        //$this->load->view('payment', $data);


        $this->set_response($data, REST_Controller::HTTP_OK);	
	}


} 

