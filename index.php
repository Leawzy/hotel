<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="assets/style.css">
    <title>Hotel | SQL</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
    <section class="container xl:mx-auto pt-5">
        <?php
        require_once 'db/db.php';
        $check_client = mysqli_query($db, "SELECT * FROM `clients`");
        $clients = mysqli_fetch_all($check_client);
        ?>
        <table>
            <tr>
                <th>ID_Clients</th>
                <th>Full Name</th>
                <th>Passport Data</th>
                <th>Check In Date</th>
                <th>Check Out Date</th>
                <th>ID_Room</th>
                <th>ID_Service1</th>
                <th>ID_Service2</th>
                <th>ID_Service3</th>
                <th>Price</th>
                <th>ID_Employees</th>
            </tr>
            <?php
            foreach ($clients as $client) {
                ?>
                <tr>
                    <td><?=$client[0]?></td>
                    <td><?=$client[1]?></td>
                    <td><?=$client[2]?></td>
                    <td><?=$client[3]?></td>
                    <td><?=$client[4]?></td>
                    <td><?=$client[5]?></td>
                    <td><?=$client[6]?></td>
                    <td><?=$client[7]?></td>
                    <td><?=$client[8]?></td>
                    <td><?=$client[9]?></td>
                    <td><?=$client[10]?></td>
                </tr>
            <?php
            }
            ?>
        </table>
    </section>
</body>
</html>
