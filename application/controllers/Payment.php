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
class Payment extends REST_Controller{

	public function __Construct(){
		parent::__Construct();
		$this->load->model('generateRef');
	
	}

  //create method for the payment page 

  public function payment_page_get()
  {
      //set the default amount 

      //create ref number
      $ref_str = $this->generateRef->return_checked_str(10, '', array('uppercase', 'number', 'uppercase', 'lowercase')); 
      $data['ref'] = $ref_str;
      //get user id from the curl or the get
      $user_id = $this->get('user_id');
      //get user emial from user id
      $email = $this->generateRef->return_user_email($user_id);   
      $data['email'] = $email;
      //get cause id
      $cause_id = $this->get('cause_id');
      //in cases of api being used by other parties and not a cause on payrallel
      if (empty($cause_id)) {
        //$data['cause_id'] = 01;
      } else {
        $data['cause_id'] = $cause_id;
      }


      //set transaction description

      $description = $this->get('description');
      //set default descripion as blank
      if (empty($description)) {
        $data['description'] = "";
      } else {
        $data['description'] = $description;
      }
      
      //adding other info to the payment data
      //set date of transaction created
      $data['first_trans_date'] = date('Y-m-d H:i:s');

      //set type of payment
      $type_of_payment = $this->get('type_of_payment');
      if (empty($type_of_payment)) {
        $data['type_of_payment'] = 'Payralel API';
      } else {
        $data['type_of_payment'] = $type_of_payment;
      }
      //get currency
      $currency = $this->get('currency');
      //set the default currency to NAIRA
      if (empty($currency)) {
        $currency = "NIR";
      } 

      //check if the currency is allowed or valid
      //would make this code better later
      //maybe get its data from a database table of allowed currency
      //but for now manually check
      if ($currency == "NIR") {
        $data['currency'] = $currency;
      }
      //allow Dollar USD
      elseif ($currency == "USD") {
         $data['currency'] = $currency;
       }
       //allow POUNDS GBP
       elseif ($currency == "GBP") {
          $data['currency'] = $currency;
        }
        //allow EUROS EUR
        elseif ($currency == "EUR") {
           $data['currency'] = $currency;
         }
         //allow YEN 
         elseif ($currency == "YEN") {
           $data['currency'] = $currency;
         }
        else {
        // Invalid currency, set the response and exit.
            $this->response([
                    'status' => FALSE,
                    'error_code' => 3001,
                    'message' => 'Currency not supported'
                ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
      }
      
      
      //get the amount from curl
      $amount = $this->get('amount');
      //check if the amount is a valid figure
      $amount = (int) $amount;
      if ($amount <= 0)
        {
            // Invalid amount, set the response and exit.
            $this->response([
                    'status' => FALSE,
                    'error_code' => 3002,
                    'message' => 'Invalid amount'
                ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }
      
      //check if the amount is greater than #50

      if ($currency == "NIR") {
        if ($amount < 50) {
          // Invalid amount, set the response and exit.
            $this->response([
                    'status' => FALSE,
                    'error_code' => 3003,
                    'message' => 'Amount too small'
                ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }
        if ($amount > 2000000) {
          // Invalid amount, set the response and exit.
            $this->response([
                    'status' => FALSE,
                    'error_code' => 3004,
                    'message' => 'Amount too large'
                ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }
      }
      else{
        if ($amount > 10000) {
          // Invalid amount, set the response and exit.
            $this->response([
                    'status' => FALSE,
                    'error_code' => 3004,
                    'message' => 'Amount too large'
                ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }
      } 
      $data['amount'] = $amount;

      //create new type of refernce that includes the date of creation
      $data['reference'] = $ref_str."-". date('Ymd');

      //get goal goal type 
      $goal_type = $this->get('goal_type');
      //set the default goal type
      if (empty($goal_type)) {
        $data['goal_type'] = 'Payralel API';
      } else {
        $data['goal_type'] = $goal_type;
      }

      //set the transaction status
      $data['status'] = "pending";
      //set the transaction message
      $data['message'] = "Pending payment";
      $data['domain'] = $this->agent->referrer();
      
      //we have to log this details in the database first so that we could include the cause id that the payment is for
      //set the status as pending
      //update after succesful payment

      $this->generateRef->createTransaction($data);

      //get the users cards from user id
      //added this last so that it doesnt add the data to the transaction data
      $user_cards = $this->generateRef->return_payment_info($user_id);
      if (empty($user_cards)) {
        $data['user_cards'] = "No Cards for user";
      } else {
        $data['user_cards'] = $user_cards;
      }
      
      

      //so instead of outputing and passing the data to the view.. 
      //we would just pass the data as the response



      $this->set_response($data, REST_Controller::HTTP_OK); 
} 

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


        $this->set_response($data, REST_Controller::HTTP_OK);	
	}


    public function returning_get(){
        $email = 'samm@yahoo.com';
        $email = str_replace("_", "@", $email);
        $amount = 3421100;
        $last4 = 1381;
        $auth_code_array = $this->generateRef->return_auth_code($last4);
            //var_dump( $auth_code_array );
        $auth_code = $auth_code_array['auth_code'];
        $url = 'https://api.paystack.co/transaction/charge_authorization';
        $key = 'sk_test_2bee41e63fec8df971dc864c741e5d5b96a85e2b';
        $headr = array();
        $headr[] = 'Authorization: Bearer '.$key;
        $headr[] = 'Content-Type: application/json';
        $data_json = '{"authorization_code": "'.$auth_code.'", "email": "'.$email.'", "amount": '.$amount.'}';
        //$data_json = '{"reference": "'.$ref.'", "amount": '.$amount.', "email": "'.$email.'"}';
         
        //cURL starts
        $crl = curl_init();
        curl_setopt($crl, CURLOPT_URL, $url);
        curl_setopt($crl, CURLOPT_HTTPHEADER,$headr);
        curl_setopt($crl, CURLOPT_RETURNTRANSFER, true);
                   
                    
        //  curl_setopt($crl, CURLOPT_FOLLOWLOCATION,true);
        curl_setopt($crl, CURLOPT_POST,true);
        curl_setopt($crl, CURLOPT_POSTFIELDS, $data_json);
                     
        curl_setopt($crl, CURLOPT_SSL_VERIFYPEER,false);

        $reply = curl_exec($crl);

         //error handling for cURL
        if ($reply === false) {
          // throw new Exception('Curl error: ' . curl_error($crl));
          print_r('Curl error: ' . curl_error($crl));
        }
        curl_close($crl);
        //cURL ends

        //decoding the json data
        $decoded_data = json_decode($reply, true);
        $data =  $decoded_data['data'];
         
       // var_dump($decoded_data);

        $message = $decoded_data['message'];
        $data =  $decoded_data['data'];
         

        
        /////for Data elements
        $amount = substr($data['amount'], 0,-2);
        $amount = $amount.'.00';
        $first_trans_date = $data['transaction_date'];
        $status = $data['status'];
        $reference = $data['reference'];
        $domain = $data['domain'];
        //$authorization = $data['authorization']; // no need
        $customer = $data['customer'];

        //////for Authorization elements /// no need of the  Customer and Authorization again here
         
       /* $auth_code = $authorization['authorization_code'];
        $card_type = $authorization['card_type'];
        $last4 = $authorization['last4'];
        $bank = $authorization['bank'];

         
        //////for Customer elements
        $first_name = $customer['first_name'];
        $last_name = $customer['last_name'];
        $email = $customer['email'];
        */
        $type_of_payment = "Free Goal";
        $goal_type = "Un_Typed";
 
            $log_array = array(
 
              "first_trans_date"=>$first_trans_date,
              "type_of_payment" => $type_of_payment ,
              "status"=>$status,
              "amount"=>$amount,
              "user_id"=>$this->session->userdata('user_id'),
              "reference"=>$reference,
              "trans_id" => $reference,
              "goal_type"=> $goal_type,
              "message"=>$message,              
              "domain"=>$domain
              );
            $this->data['log_array'] = $log_array;
 
            //load the payment_log  with method log_payment_info
            //$this->generateRef->payment_details($first_trans_date,$type_of_payment,$status,$amount,$this->session->userdata('user_id'),$reference,$reference,$goal_type,$message,$domain);
                       
           $this->set_response($data, REST_Controller::HTTP_OK);  
         
              
    }

	public function verify($ref){

	        $url = 'https://api.paystack.co/transaction/verify/'.$ref;
	        $key = 'sk_test_2bee41e63fec8df971dc864c741e5d5b96a85e2b';
	        $headr = array();
	        $headr[] = 'Authorization: Bearer '.$key;

	        //cURL starts
	        $crl = curl_init();
	        curl_setopt($crl, CURLOPT_URL, $url);
	        curl_setopt($crl, CURLOPT_HTTPHEADER,$headr);
	        curl_setopt($crl, CURLOPT_RETURNTRANSFER, true);
	        curl_setopt($crl, CURLOPT_HTTPGET,true);
	        curl_setopt($crl, CURLOPT_SSL_VERIFYPEER,false);
	        $reply = curl_exec($crl);

	        //error handling for cURL
	        if ($reply === false) {
	           // throw new Exception('Curl error: ' . curl_error($crl));
	           print_r('Curl error: ' . curl_error($crl));
	        }
	        curl_close($crl);
	        //cURL ends

	        //decoding the json data
	        $decoded_data = json_decode($reply, true);
	       //var_dump($decoded_data);

            $message = $decoded_data['message'];
            $data =  $decoded_data['data'];
            

           
            /////for Data elements
          	$amount = substr($data['amount'], 0,-2);
            $amount = $amount.'.00';
            $first_trans_date = $data['transaction_date'];
            $status = $data['status'];
            $reference = $data['reference'];
            $domain = $data['domain'];
            $authorization = $data['authorization'];
            $customer = $data['customer'];

            //////for Authorization elements
            
            $auth_code = $authorization['authorization_code'];
            $card_type = $authorization['card_type'];
            $last4 = $authorization['last4'];
            $bank = $authorization['bank'];

            //////for Customer elements
            $first_name = $customer['first_name'];
          	$last_name = $customer['last_name'];
            $email = $customer['email'];

          	$log_array = array(
          		"auth_code"=>$auth_code,
          		"card_type"=>$card_type,
          		"last4"=>$last4,
          		"bank"=>$bank,
          		"user_id"=>$this->session->userdata('user_id'),
          		"first_name"=>$first_name,
          		"last_name"=>$last_name,
          		"email"=>$email,
          		"first_trans_date"=>$first_trans_date,
          		"status"=>$status,
          		"reference"=>$reference,
          		"domain"=>$domain
          		);
            $this->data['log_array'] = $log_array;

            $type_of_payment = "Free Goal";
            $goal_type = "Un_Typed";

            $pay_log_array = array(

              "first_trans_date"=>$first_trans_date,
              "type_of_payment" => $type_of_payment,
              "status"=>$status,
              "amount"=>$amount,
              "user_id"=>$this->session->userdata('user_id'),
              "reference"=>$reference,
              "trans_id" => $reference,
              "goal_type"=>$goal_type,
              "message"=>$message,              
              "domain"=>$domain
              );
            $this->data['pay_log_array'] = $pay_log_array;
            if($status =="abandonded")
            {

            }
            else
            {

            //load the card_log  with method log_payment_info
           $this->generateRef->log_payment_info($auth_code,$card_type,$last4,$bank,$this->session->userdata('user_id'),$first_name,$last_name,$email,$first_trans_date,$status,$reference,$domain);

           //load the payment_log  with method payment_detail
            $this->generateRef->payment_details($first_trans_date,$type_of_payment,$status,$amount,$this->session->userdata('user_id'),$reference,$reference,$goal_type,$message,$domain);
          }
          echo '<script>
          alert("Your Transaction was: '.$status.'");
          window.location = "'.base_url().'payment";
          </script>';
	}
  public function verify2_get(){

          $url = 'http://localhost:8888/api_payrallel/index.php/payment/payment/type_of_payment/that';
          $key = 'sk_test_2bee41e63fec8df971dc864c741e5d5b96a85e2b';
          $headr = array();
          $headr[] = 'Authorization: Bearer '.$key;

          //cURL starts
          $crl = curl_init();
          curl_setopt($crl, CURLOPT_URL, $url);
          curl_setopt($crl, CURLOPT_HTTPHEADER,$headr);
          curl_setopt($crl, CURLOPT_RETURNTRANSFER, true);
          curl_setopt($crl, CURLOPT_HTTPGET,true);
          curl_setopt($crl, CURLOPT_SSL_VERIFYPEER,false);
          $reply = curl_exec($crl);

          //error handling for cURL
          if ($reply === false) {
             // throw new Exception('Curl error: ' . curl_error($crl));
             print_r('Curl error: ' . curl_error($crl));
          }
          curl_close($crl);
          //cURL ends

          //decoding the json data
          $decoded_data = json_decode($reply, true);
          $data = $decoded_data;
         $this->set_response($data, REST_Controller::HTTP_OK);  
  }

} 

	