<?php 

class generateRef extends CI_Model{
	  public function __construct() {
        parent::__construct();
    }

   /**
 * Generates a random string of a supplied lenght and combination
 * Example uses
 * generateRandomStr(10); //output FQ07Xl1UfG
 * generateRandomStr(10, 'uppercase'); //output LJYOCQVDGZ
 * generateRandomStr(10, 'letter'); //output eSZECVjqrq
 * generateRandomStr(10, '', array('uppercase', 'number')); //output 8S0L5J4BKY
 * generateRandomStr(40, '', array('uppercase', 'number', 'uppercase', 'lowercase', 'special')); //output 1xQRPl4ZYrP6FBO)K2JD0@y}6V#bOg*RYv8C1gT~
 * 
 * @author sifat
 * @param int $length number of charecter of the stirng
 * @param string $type  possible values uppercase, lowercase, letter, number, special, alphanumeric, password, all 
 * @param array $combination possible values uppercase, lowercase, number, special. if supplied $type will be ignored
 * @return sting
 */
public function generate_random_str($length, $type = 'alphanumeric', $combination = array()) {
    if (!is_numeric($length) || $length < 0) {
        return '';
    }
     
    $str = '';
    $uppercase = array('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');
    $lowercase = array('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z');
    $number = array(1, 2, 3, 4, 5, 6, 7, 8, 9, 0);
    $special = array('~', '!', '@', '#', '$', '%', '^' . '&amp;amp;', '*', '+', '=', '.', '-', '_', '(', ')', '{', '}', '[', ']');
    $stock = array();
    $stockMinIndex = 0;
 
    if ($combination) {
        foreach ($combination as $element) {
            if (isset($$element)) {
                $stock[] = $$element;
            }
        }
    } 
    else 
    {
        switch ($type) {
            case 'uppercase' :
                $stock = array($uppercase);
                break;
            case 'lowercase' :
                $stock = array($lowercase);
                break;
            case 'letter' :
                $stock = array($uppercase, $lowercase);
                break;
            case 'number' :
                $stock = array($number);
                break;
            case 'special' :
                $stock = array($special);
                break;
            case 'alphanumeric' :
                $stock = array($uppercase, $lowercase, $number);
                break;
            case 'password' :
            case 'all' :
                $stock = array($uppercase, $lowercase, $number, $special);
                break;
            default :
                $stock = array($uppercase, $lowercase, $number);
                break;
        }
    }
     
    if (empty($stock)) {
        return '';
    }
 
    $stockMaxIndex = count($stock) - 1;
 
    $i = 0;
    while ($i < $length) {
        $stockIndex = mt_rand($stockMinIndex, $stockMaxIndex);
        $str .= $stock[$stockIndex][mt_rand(0, count($stock[$stockIndex]) - 1)];
        $i++;
    }
    return $str;
}

public function return_checked_str($length, $type = 'alphanumeric', $combination = array()) {
	$str = $this->generate_random_str($length, $type , $combination);
	///for checking the database for exitence of reference number
     	$this->db->select('ref');
        $this->db->from('reference');
        $this->db->where('ref', $str);
        

        $query = $this->db->get();

        if($query->num_rows() == 1) {
        	$str = $this->generateRandomStr($length, $type , $combination);
        	$data = array
        	(
        		'ref' =>$str
        	);
        	$this->db->insert('reference',$data);
       
        }
        else
        {
        	$data = array
        	(
        		'ref' =>$str,
        		'used' =>0
        	);
        	$this->db->insert('reference',$data);
        }

        return $str;


}
public function return_ref_val() {
		
		$ref="";
     	$this->db->select('used,ref');
        $this->db->from('reference');
       // $this->db->where('ref', $ref);
        

        $query = $this->db->get();


        if($query->num_rows() != 0) 
        {
        	     $row = $query->row();
        	     $used = $row->used;
        	if($used == 0)
        	{
        		$ref = $row->ref;
        	}
       
        }
        

        return $ref;


}
public function return_user_email($user_id){

	 $this->db->select('email');
        $this->db->from('users');
        $this->db->where('user_id', $user_id);
        

        $query = $this->db->get();

        if($query->num_rows() == 1) {
           $row = $query->row();

          
               $user_email = $row->email;
               
              
               return $user_email;
         
        }
}
public function return_auth_code($last4){

	 $this->db->select('auth_code');
        $this->db->from('card_log');
        $this->db->where('last4', $last4);
     

        $query = $this->db->get();

      if($query->num_rows() == 1) {
           $row = $query->row();

         
               $array['auth_code'] = $row->auth_code;
               /*$array['card_type'] = $row->card_type;
               $array['last4'] = $row->last4;
               $array['bank'] = $row->bank;
               $array['first_name'] = $row->first_name;
               $array['last_name'] = $row->last_name;
               $array['email'] = $row->email;*/
               return $array;
         
        }
       /*  else
        {
        	$array['resp'] = "not_found";
        	return $array;
        }*/

       // return $query->result();
}
public function return_payment_info($user_id){

	 $this->db->select('auth_code, card_type, last4, bank, first_name, last_name, email');
        $this->db->from('card_log');
        $this->db->where('user_id', $user_id);
     

        $query = $this->db->get();

      /* if($query->num_rows() == 1) {
           $row = $query->row();

         
               $array['auth_code'] = $row->auth_code;
               $array['card_type'] = $row->card_type;
               $array['last4'] = $row->last4;
               $array['bank'] = $row->bank;
               $array['first_name'] = $row->first_name;
               $array['last_name'] = $row->last_name;
               $array['email'] = $row->email;
               return $array;
         
        }
        else
        {
        	$array['resp'] = "not_found";
        	return $array;
        }*/

        return $query->result();
}
public function log_payment_info($auth_code,$card_type,$last4,$bank,$user_id,$first_name,$last_name,$user_email,$first_trans_date,$status,$reference,$domain){
    	$this->db->select('user_id');
        $this->db->from('card_log');
        $this->db->where('last4', $last4);
        

        $query = $this->db->get();

        if($query->num_rows() == 1) {
        	
        }
        else
        {
        	
          	$log_data_array = array(
          		"auth_code"=>$auth_code,
          		"card_type"=>$card_type,
          		"last4"=>$last4,
          		"bank"=>$bank,
          		"user_id"=>$user_id,
          		"first_name"=>$first_name,
          		"last_name"=>$last_name,
          		"email"=>$user_email,
          		"first_trans_date"=>$first_trans_date,
          		"status"=>$status,
          		"reference"=>$reference,
          		"domain"=>$domain
          		);
        	
        	$this->db->insert('card_log',$log_data_array);
        }


    }
    public function payment_details($first_trans_date,$type_of_payment,$status,$amount,$user_id,$reference,$reference,$goal_type,$message,$domain){
    	
          $log_array = array(

          		"date_time"=>$first_trans_date,
          		"type_of_payment" => $type_of_payment,
          		"status"=>$status,
          		"amount"=>$amount,
          		"user_id"=>$user_id,
          		"ref"=>$reference,
          		"trans_id" => $reference,
          		"goal_type"=>$goal_type,
          		"message"=>$message,          		
          		"domain"=>$domain
          		);
            
        	
        	$this->db->insert('payment_log',$log_array);
       

    }
    public function return_card_list($user_id)
    {

        $this->db->select('id, card_id, card_type, last4, bank, first_name, last_name, email');
        $this->db->from('card_log');
        $this->db->where('user_id', $user_id);
     

        $query = $this->db->get();

        return $query->result();
    }
    public function return_card_single($user_id,$card_id)
    {

        $this->db->select('id, card_id, card_type, last4, bank, first_name, last_name, email');
        $this->db->from('card_log');
        $this->db->where('user_id', $user_id);
        $this->db->where('card_id', $card_id);
     

        $query = $this->db->get();
        if ($query->num_rows() == 1) {
          return $query->result();
        } else {
          return;
        }
        

        
    }

    public function createTransaction($data){
      //insert data into transaction_log database table
      //disabled for test until database is created
      //$this->db->insert('trabsaction_log',$data);
      return;
       

    }
}

?>