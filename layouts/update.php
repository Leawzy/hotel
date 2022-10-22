<?php
require_once '../db/db.php';
$client_id = $_GET['id'];
$check_client = mysqli_query($db, "SELECT * FROM `clients` WHERE `ID_Clients` = '$client_id'");
$client = mysqli_fetch_assoc($check_client);
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><?php echo "Update Client ID {$client_id}" ?></title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
    <section class="bg-gray-50 dark:bg-gray-900 p-5">
        <div class="flex flex-col items-center justify-center px-6 py-8 mx-auto lg:py-0">
            <div class="w-full bg-white rounded-lg shadow dark:border md:mt-0 sm:max-w-md xl:p-0 dark:bg-gray-800 dark:border-gray-700">
                <div class="p-6 space-y-4 md:space-y-6 sm:p-8">
                    <h1 class="text-xl font-bold leading-tight tracking-tight text-gray-900 md:text-2xl dark:text-white text-center">
                        Update Table
                    </h1>
                    <form action="../db/update.php?id=<?=$client_id?>" method="post" class="space-y-4 md:space-y-6">
                        <label for="fullname" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Full Name</label>
                        <input value="<?=$client["FullNane"]?>" type="text" name="fullname" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
                        <label for="passportdata" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Passport Data</label>
                        <input value="<?=$client["PasportData"]?>" type="number" name="passportdata" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
                        <label for="checkindate" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Check In Date</label>
                        <input value="<?=$client["CheckInDate"]?>" type="date" name="checkindate" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
                        <label for="checkoutdate"class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Check Out Date</label>
                        <input value="<?=$client["CheckOutDate"]?>" type="date" name="checkoutdate" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
                        <label for="idroom" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">ID Room</label>
                        <input value="<?=$client["ID_Room"]?>" type="number" name="idroom" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
                        <label for="idservice1" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">ID Service 1</label>
                        <input value="<?=$client["ID_Services1"]?>" type="number" name="idservice1" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
                        <label for="idservice2" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">ID Service 2</label>
                        <input value="<?=$client["ID_Services2"]?>" type="number" name="idservice2" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
                        <label for="idservice3" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">ID Service 3</label>
                        <input value="<?=$client["ID_Services3"]?>" type="number" name="idservice3" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
                        <label for="price" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Price</label>
                        <input value="<?=$client["Price"]?>" type="number" name="price" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
                        <label for="idemployees" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">ID Employees</label>
                        <input value="<?=$client["ID_Employees"]?>" type="number" name="idemployees" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
                        <button type="submit" class="w-full text-white bg-blue-600 hover:bg-blue-700 focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-primary-600 dark:hover:bg-primary-700 dark:focus:ring-primary-800">Update</button>
                    </form>
                </div>
            </div>
        </div>
    </section>
</body>
</html>