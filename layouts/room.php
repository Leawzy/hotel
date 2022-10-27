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
    $check_rooms = mysqli_query($db, "SELECT * FROM `room`");
    $rooms = mysqli_fetch_all($check_rooms);
    ?>
    <table class="border-separate border border-slate-500">
        <tr>
            <th class="border border-slate-600">ID_Room</th>
            <th class="border border-slate-600">Room Name</th>
            <th class="border border-slate-600">Sleeps</th>
            <th class="border border-slate-600">Description</th>
            <th class="border border-slate-600">Price</th>
            <th class="border border-slate-600">ID_Employees</th>
        </tr>
        <?php
        foreach ($rooms as $room) {
            ?>
            <tr>
                <td class="border border-slate-700"><?=$room[0]?></td>
                <td class="border border-slate-700"><?=$room[1]?></td>
                <td class="border border-slate-700"><?=$room[2]?></td>
                <td class="border border-slate-700"><?=$room[3]?></td>
                <td class="border border-slate-700"><?=$room[4]?></td>
                <td class="border border-slate-700"><?=$room[5]?></td>
            </tr>
            <?php
        }
        ?>
    </table>
</section>
</body>
</html>
