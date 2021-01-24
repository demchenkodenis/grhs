<?
require_once('../db-connection.php');
if (isset($_POST['data']['branch'])) {
    $branch = htmlspecialchars(trim($_POST['data']['branch']));
}

if (isset($_POST['data']['valve'])) {
    $valve = htmlspecialchars(trim($_POST['data']['valve']));
}

if (isset($_POST['data']['user'])) {
    $id_user = htmlspecialchars(trim($_POST['data']['user']));
}

//dropper
if (isset($_POST['data']['dropper']['vol'])) {
    $dropperVol = htmlspecialchars(trim($_POST['data']['dropper']['vol']));
}
if (isset($_POST['data']['dropper']['ec'])) {
    $dropperEc = htmlspecialchars(trim($_POST['data']['dropper']['ec']));
}
if (isset($_POST['data']['dropper']['ph'])) {
    $dropperPh = htmlspecialchars(trim($_POST['data']['dropper']['ph']));
}

//drainage
if (isset($_POST['data']['drainage']['vol'])) {
    $drainageVol = htmlspecialchars(trim($_POST['data']['drainage']['vol']));
}
if (isset($_POST['data']['drainage']['ec'])) {
    $drainageEc = htmlspecialchars(trim($_POST['data']['drainage']['ec']));
}
if (isset($_POST['data']['drainage']['ph'])) {
    $drainagePh = htmlspecialchars(trim($_POST['data']['drainage']['ph']));
}

//mat
if (!empty($_POST['data']['mat']['ec'])) {
    $matEc = htmlspecialchars(trim($_POST['data']['mat']['ec']));
}
if (!empty($_POST['data']['mat']['ph'])) {
    $matPh = htmlspecialchars(trim($_POST['data']['mat']['ph']));
}

$error = [];

$today = date("Y-m-d H:i:s");

$sql = 'INSERT INTO `data` (`id_branch`, `id_valve`, `dropper_vol`, `dropper_ec`, `dropper_ph`, `drainage_vol`, `drainage_ec`, `drainage_ph`, `mat_ec`, `mat_ph`, `user_id`, `date_add`)
        VALUES(?,?,?,?,?,?,?,?,?,?,?,?)';

$stm = $pdo->prepare($sql);

$stm->execute(array($branch, $valve, $dropperVol, $dropperEc, $dropperPh, $drainageVol, $drainageEc, $drainagePh, $matEc, $matPh, $id_user, $today));

print_r('ok');
?>