<?php
require_once 'db.php';

$client_id = $_GET['id'];

mysqli_query($db,"DELETE FROM `clients` WHERE `ID_Clients` = '$client_id'");

header('Location: ../layouts/admin_clients.php');