<?php
$api = 'https://120.132.154.117:8443';
$appkey = '504f4582c69e';

//$response = postRequest( $api . '/sms/verify', array(
//    'appkey' => $appkey,
//    'phone' => '18600364250',
//    'zone' => '86',
//    'code' => '',
//) );

/**
 * Initiate a post request to the specified interface
 *
 * @param string $api Interface request
 * @param array $params post parameters
 * @param int $timeout overtime time
 * @return string Request Results
 */
function postRequest( $api, array $params = array(), $timeout = 30 ) {
    $ch = curl_init();
    curl_setopt( $ch, CURLOPT_URL, $api );
    // To return the information received in the form of
    curl_setopt( $ch, CURLOPT_RETURNTRANSFER, 1 );
    // Mode is set to POST
    curl_setopt( $ch, CURLOPT_POST, 1 );
    curl_setopt( $ch, CURLOPT_POSTFIELDS, http_build_query( $params ) );
    // Https certificate does not validate
    curl_setopt( $ch, CURLOPT_SSL_VERIFYPEER, 0 );
    curl_setopt( $ch, CURLOPT_SSL_VERIFYHOST, 0 );
    curl_setopt( $ch, CURLOPT_TIMEOUT, $timeout );
    curl_setopt( $ch, CURLOPT_HTTPHEADER, array(
        'Content-Type: application/x-www-form-urlencoded;charset=UTF-8',
        'Accept: application/json',
    ) );
    // send data
    $response = curl_exec( $ch );
    // Do not forget to release resources
    curl_close( $ch );
    return $response;
}
