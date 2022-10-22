<?php
require_once 'db.php';
$client_id = $_GET['id'];
$fullname = $_POST['fullname'];
$passportdata = $_POST['passportdata'];
$checkindate = $_POST['checkindate'];
$checkoutdate = $_POST['checkoutdate'];
$idroom = $_POST['idroom'];
$idservice1 = $_POST['idservice1'];
$idservice2 = $_POST['idservice2'];
$idservice3 = $_POST['idservice3'];
$price = $_POST['price'];
$idemployees = $_POST['idemployees'];

mysqli_query($db, "UPDATE `clients` SET `FullNane` = '$fullname', `PasportData` = '$passportdata', `CheckInDate` = '$checkindate',
                     `CheckOutDate` = '$checkoutdate', `ID_Room` = '$idroom', `ID_Services1` = '$idservice1', `ID_Services2` = '$idservice2',
                     `ID_Services3` = '$idservice3', `Price` = '$price', `ID_Employees` = '$idemployees' WHERE `ID_Clients` = '$client_id'");

header('Location: ../layouts/admin_clients.php');

