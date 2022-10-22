<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../assets/style.css">
    <title>Hotel | SQL</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-slate-900 text-slate-400">
<section class="container xl:mx-auto pt-5">
    <?php
    require_once '../db/db.php';
    $check_client = mysqli_query($db, "SELECT clients.ID_Clients, employees.fullname FROM clients
    INNER JOIN employees ON clients.ID_Employees = employees.ID_Employees");
    $clients = mysqli_fetch_all($check_client);
    ?>
    <table class="border-separate border border-slate-500">
        <tr>
            <th class="border border-slate-600">ID_Clients</th>
            <th class="border border-slate-600">Name Employees</th>
        </tr>
        <?php
        foreach ($clients as $client) {
            ?>
            <tr>
                <td class="border border-slate-700"><?=$client[0]?></td>
                <td class="border border-slate-700"><?=$client[1]?></td>
            </tr>
            <?php
        }
        ?>
    </table>
</section>
</body>
</html>

