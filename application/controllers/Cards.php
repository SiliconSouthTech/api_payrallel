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
class Cards extends REST_Controller{

	public function __Construct(){
		parent::__Construct();
		$this->load->model('cardsModel');
	
	}

  public function cards_get()
    {
        // Users from a data store e.g. database
        
        $user_id = $this->get('user_id');
        $id = (int) $user_id;

        // Validate the id.
        if ($id <= 0)
        {
            // Invalid id, set the response and exit.
            $this->response([
                    'status' => FALSE,
                    'error_code' => 3001,
                    'message' => 'invalid user_id format'
                ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        $card_id = $this->get('card_id');

        //check if the card_id is provided
        //if card id is passed 

        if (empty($card_id)) {
          //get all the cards for the user
          $cards = $this->cardsModel->return_card_list($user_id);
          
          // If the id parameter doesn't exist return all the users

          if ($user_id === NULL)
          {
              // Check if the users data store contains users (in case the database result returns NULL)
              if ($cards)
              {
                  // Set the response and exit
                  $this->response($cards, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
              }
              else
              {
                  // Set the response and exit
                  $this->response([
                      'status' => FALSE,
                      'error_code' => 3002,
                      'message' => 'User ID is empty'
                  ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
              }
          }

          
          // Get the card from the array, using the id as key for retreival.
          
          if (!empty($cards))
          {
              $this->set_response($cards, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
          }
          else
          {
              $this->set_response([
                  'status' => FALSE,
                  'error_code' => 3003,
                  'message' => 'No card found for user'
              ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
          }
        } 
        else {
          $cards = $this->cardsModel->return_card_single($user_id,$card_id);
          

        if ($user_id === NULL)
        {
            // Check if the users data store contains users (in case the database result returns NULL)
            if ($cards)
            {
                // Set the response and exit
                $this->response($cards, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
            }
            else
            {
                // Set the response and exit
                $this->response([
                    'status' => FALSE,
                    'error_code' => 3004,
                    'message' => 'User ID is empty'
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
            }
        }

        // Find and return a single record for a particular user.

        

        // Get the user from the array, using the id as key for retreival.
        // Usually a model is to be used for this.

        

        if (!empty($cards))
        {
            $this->set_response($cards, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        }
        else
        {
            $this->set_response([
                'status' => FALSE,
                'error_code' => 3005,
                'message' => 'Card not found for specified user'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
        }
        

        
        
    }

  public function card_detail_get()
    {
        // Users from a data store e.g. database
        
        $user_id = $this->get('user_id');
        //check if the user_id is empty
        if (empty($user_id))
        {
            // Invalid user_id, set the response and exit.
            $this->response([
                    'status' => FALSE,
                    'error_code' => 4000,
                    'message' => 'user_id is empty'
                ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }
        $id = (int) $user_id;

        // Validate the user_id.
        if ($id <= 0)
        {
            // Invalid user_id, set the response and exit.
            $this->response([
                    'status' => FALSE,
                    'error_code' => 4001,
                    'message' => 'Invalid user_id format'
                ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        $card_id = $this->get('card_id');

        // Validate the card_id.
        if (empty($card_id))
        {
            // Invalid card_id, set the response and exit.
            $this->response([
                    'status' => FALSE,
                    'error_code' => 4002,
                    'message' => 'No card_id in request'
                ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        //check database if user exist
        $userCheck = $this->cardsModel->check_user($user_id);
        if ($userCheck == 0)
        {
            // Invalid card_id, set the response and exit.
            $this->response([
                    'status' => FALSE,
                    'error_code' => 4005,
                    'message' => 'user_id does not exist'
                ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        $cards = $this->cardsModel->return_card_single($user_id,$card_id);
        //$id = $this->get('id');


        // If the id parameter doesn't exist return all the users

        if ($user_id === NULL)
        {
            // Check if the users data store contains users (in case the database result returns NULL)
            if ($cards)
            {
                // Set the response and exit
                $this->response($cards, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
            }
            else
            {
                // Set the response and exit
                $this->response([
                    'status' => FALSE,
                    'error_code' => 4003,
                    'message' => 'User ID is empty'
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
            }
        }

        // Find and return a single record for a particular user.

        

        // Get the user from the array, using the id as key for retreival.
        // Usually a model is to be used for this.

        $user = NULL;

        if (!empty($users))
        {
            foreach ($users as $key => $value)
            {
                if (isset($value['id']) && $value['id'] === $id)
                {
                    $user = $value;
                }
            }
        }

        if (!empty($cards))
        {
            $this->set_response($cards, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        }
        else
        {
            $this->set_response([
                'status' => FALSE,
                'error_code' => 4004,
                'message' => 'No matching card'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }

} 

	