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
class Test extends REST_Controller {


    function ci_curl($new_name, $new_email)
    {
        $username = 'admin';
        $password = '1234';
         
        $this->load->library('curl');
         
        $this->curl->create('http://localhost/restserver/index.php/example_api/user/id/1/format/json');
         
        // Optional, delete this line if your API is open
        $this->curl->http_login($username, $password);
     
        $this->curl->post(array(
            'name' => $new_name,
            'email' => $new_email
        ));
         
        $result = json_decode($this->curl->execute());
     
        if(isset($result->status) && $result->status == 'success')
        {
            echo 'User has been updated.';
        }
         
        else
        {
            echo 'Something has gone wrong';
        }
    }
}