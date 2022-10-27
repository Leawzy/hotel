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
    $check_employees = mysqli_query($db, "SELECT * FROM `employees`");
    $employees = mysqli_fetch_all($check_employees);
    ?>
    <table class="border-separate border border-slate-500">
        <tr>
            <th class="border border-slate-600">ID_Employees</th>
            <th class="border border-slate-600">Full Name</th>
            <th class="border border-slate-600">Age</th>
            <th class="border border-slate-600">Gender</th>
            <th class="border border-slate-600">Address</th>
            <th class="border border-slate-600">Phone Number</th>
            <th class="border border-slate-600">Pasport Data</th>
            <th class="border border-slate-600">ID_Post</th>
        </tr>
        <?php
        foreach ($employees as $employee) {
            ?>
            <tr>
                <td class="border border-slate-700"><?=$employee[0]?></td>
                <td class="border border-slate-700"><?=$employee[1]?></td>
                <td class="border border-slate-700"><?=$employee[2]?></td>
                <td class="border border-slate-700"><?=$employee[3]?></td>
                <td class="border border-slate-700"><?=$employee[4]?></td>
                <td class="border border-slate-700"><?=$employee[5]?></td>
                <td class="border border-slate-700"><?=$employee[6]?></td>
                <td class="border border-slate-700"><?=$employee[7]?></td>
            </tr>
            <?php
        }
        ?>
    </table>
</section>
</body>
</html>
