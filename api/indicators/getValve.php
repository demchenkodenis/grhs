<?
require_once('../db-connection.php');

$stmt = $pdo->prepare('SELECT `id`, `title` FROM `valve`');
$stmt->execute();

$r = $stmt->fetchAll();

print_r(json_encode($r));

?>