<?php

require('../admin/inc/db_config.php');
require('../admin/inc/essentials.php');

date_default_timezone_set("Asia/Manila");

$ORDER_ID = 'ORD_' . $_POST['uId'] . random_int(11111, 9999999);
$CUST_ID = $_POST['uId'];
$INDUSTRY_TYPE_ID = "";
$CHANNEL_ID = "";
$TXN_AMOUNT = $_POST['room_payment'];

$ROOM_ID = $_POST["room_id"];

// Create an array having all required parameters for creating checksum.

$paramList = array();
$paramList["MID"] = "";
$paramList["ORDER_ID"] = $ORDER_ID;
$paramList["CUST_ID"] = $CUST_ID;
$paramList["INDUSTRY_TYPE_ID"] = $INDUSTRY_TYPE_ID;
$paramList["CHANNEL_ID"] = $CHANNEL_ID;
$paramList["TXN_AMOUNT"] = $TXN_AMOUNT;
$paramList["WEBSITE"] = "";
$paramList["CALLBACK_URL"] = "";


//Here checksum string will return by getChecksumFromArray() function.


// Insert payment data into database


$query1 = "INSERT INTO `booking_order`(`user_id`, `room_id`, `check_in`, `check_out`,`booking_status`,`order_id`) VALUES (?,?,?,?,?,?)";

insert($query1, [
    $CUST_ID,
    $ROOM_ID, $_POST['checkin'],
    $_POST['checkout'],
    "booked",
    $ORDER_ID
], 'isssss');

$booking_id = mysqli_insert_id($con);

$query2 = "INSERT INTO `booking_details`(`booking_id`, `room_name`, `price`, `total_pay`,
`user_name`, `phonenum`, `address`) VALUES (?,?,?,?,?,?,?)";

insert($query2, [
    $booking_id, $_POST['room_name'], $_POST['room_price'],
    $TXN_AMOUNT, $_POST['name'], $_POST['phonenum'], $_POST['address']
], 'issssss');


echo "success";

?>