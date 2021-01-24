<?
require_once('../db-connection.php');

if (!empty($_POST['login'])) {
    $login = htmlspecialchars(trim($_POST['login']));
}

if (!empty($_POST['password'])) {
    $password = md5(md5(htmlspecialchars(trim($_POST['password']))));
}

$error = [];

$today = date("Y-m-d H:i:s");

$stmt = $pdo->prepare('SELECT `id`, `name`, `lastname`, `hash` FROM `users` WHERE `username` = ? AND `password` = ?');
$stmt->execute(array($login, $password));

$r = $stmt->fetchAll();

print_r(json_encode($r));
?>