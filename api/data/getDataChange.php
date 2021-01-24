<?
require_once('../db-connection.php');

if(isset($_POST['date'])){
    $date = $_POST['date'];
}

if(isset($_POST['branch'])){
    $branch = $_POST['branch'];
}

$sql = 'SELECT 
            `data`.`id_branch`, 
            `data`.`id_valve`, 
            `data`.`dropper_vol`, 
            `data`.`dropper_ec`, 
            `data`.`dropper_ph`, 
            `data`.`drainage_vol`, 
            `data`.`drainage_ec`, 
            `data`.`drainage_ph`, 
            `data`.`mat_ec`, 
            `data`.`mat_ph`, 
            `data`.`user_id`, 
            DATE_FORMAT(`data`.`date_add`, "%d.%m.%Y") AS `date`,
            DATE_FORMAT(`data`.`date_add`, "%H:%i") AS `time`,
            `users`.`name`, 
            `users`.`lastname`,
            `branch`.`title` AS `branch`,
            `valve`.`title` AS `valve`
            FROM 
            `data` 
            INNER JOIN users ON users.id = data.user_id 
            INNER JOIN branch ON branch.id = data.id_branch
            INNER JOIN valve ON valve.id = data.id_valve
            WHERE DATE(`data`.`date_add`) = ? AND `data`.`id_branch` = ?';

$stmt = $pdo->prepare($sql);

$stmt->execute(array($date, $branch));

$r = $stmt->fetchAll();

print_r(json_encode($r));

?>