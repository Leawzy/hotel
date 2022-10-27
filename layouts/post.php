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
    $check_posts = mysqli_query($db, "SELECT * FROM `post`");
    $posts = mysqli_fetch_all($check_posts);
    ?>
    <table class="border-separate border border-slate-500">
        <tr>
            <th class="border border-slate-600">ID_Post</th>
            <th class="border border-slate-600">Post Name</th>
            <th class="border border-slate-600">Salary</th>
            <th class="border border-slate-600">Responsibilities</th>
            <th class="border border-slate-600">Requirements</th>
        </tr>
        <?php
        foreach ($posts as $post) {
            ?>
            <tr>
                <td class="border border-slate-700"><?=$post[0]?></td>
                <td class="border border-slate-700"><?=$post[1]?></td>
                <td class="border border-slate-700"><?=$post[2]?></td>
                <td class="border border-slate-700"><?=$post[3]?></td>
                <td class="border border-slate-700"><?=$post[4]?></td>
            </tr>
            <?php
        }
        ?>
    </table>
</section>
</body>
</html>
