<?php
require_once 'db.php';

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

mysqli_query($db, "INSERT INTO `clients` (`FullNane`, `PasportData`, `CheckInDate`, `CheckOutDate`, `ID_Room`,
                       `ID_Services1`, `ID_Services2`, `ID_Services3`, `Price`, `ID_Employees`) VALUES ('$fullname', 
                       '$passportdata', '$checkindate', '$checkoutdate', '$idroom', '$idservice1', '$idservice2',
                       '$idservice3', '$price', '$idemployees')");

header('Location: ../layouts/admin_clients.php');