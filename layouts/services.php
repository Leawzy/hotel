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
    $check_services = mysqli_query($db, "SELECT * FROM `services`");
    $services = mysqli_fetch_all($check_services);
    ?>
    <table class="border-separate border border-slate-500">
        <tr>
            <th class="border border-slate-600">ID_Services</th>
            <th class="border border-slate-600">Services Name</th>
            <th class="border border-slate-600">Description</th>
            <th class="border border-slate-600">Price</th>
        </tr>
        <?php
        foreach ($services as $service) {
            ?>
            <tr>
                <td class="border border-slate-700"><?=$service[0]?></td>
                <td class="border border-slate-700"><?=$service[1]?></td>
                <td class="border border-slate-700"><?=$service[2]?></td>
                <td class="border border-slate-700"><?=$service[3]?></td>
            </tr>
            <?php
        }
        ?>
    </table>
</section>
</body>
</html>
