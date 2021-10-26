<?php

require_once 'connect.php';

$stmt = $conn->prepare("SELECT username, points, photos, highscore FROM users WHERE points > 0 ORDER BY points DESC, photos ASC, highscore DESC LIMIT 250");

$stmt->execute();

$stmt->bind_result($username, $points, $photos, $highscore);

$players = array();

while($stmt->fetch()){
    
    $temp = array();
    
    $temp['username'] = $username;
    $temp['points'] = $points;
    $temp['photos'] = $photos;
    $temp['highscore'] = $highscore;
        
    array_push($players, $temp);
    
}

$stmt->close();

echo json_encode($players);

?>