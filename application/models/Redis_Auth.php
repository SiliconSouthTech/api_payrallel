<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2015/7/16
 * Time: 16:30
 */

class Redis_Auth {

    private $redis;
    static  $limit_ ='limit_';  //limit

    public function __construct(){
        $this->load->driver('cache');
        $client = new Predis\Client();
		$client->set('foo', 'bar');
		$value = $client->get('foo');
    }
}