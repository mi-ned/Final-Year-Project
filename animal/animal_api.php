<?php

require_once 'connect.php';

$response = array();

if(isset($_GET['apicall'])){
    
    switch($_GET['apicall']){
            
        case 'signup':
            if(isTheseParametersAvailable(array('username', 'password'))){
                $username = $_POST['username'];
                $password = md5($_POST['password']);
                                
                $stmt = $conn->prepare("SELECT id FROM users WHERE username = '$username'");
                $stmt->execute();
                $stmt->store_result();
                
                if($stmt->num_rows > 0){
                    $response['error'] = true;
                    $response['message'] = 'User already registered';
                    $stmt->close();
                } else {
                    $stmt = $conn->prepare("INSERT INTO users VALUES ('$username', '$password')");
                    
                    if ($stmt->execute()){
                        $stmt = $conn->prepare("SELECT id, username, points, photos, highscore FROM users WHERE username = '$username'");
                        $stmt->execute();
                        $stmt->bind_result($id, $username, $points, $photos, $highscore);
                        $stmt->fetch();
                        
                        $user = array(
                        'id'=>$id,
                        'username'=>$username,
                        'points'=>$points,
                        'photos'=>$photos,
                        'highscore'=>$highscore
                        );
                        
                        $stmt->close();
                        
                        $response['error'] = false; 
                        $response['message'] = 'User registered successfully'; 
                    }
                }
            }
            break;
            
            case 'signin':
            if(isTheseParametersAvailable(array('username', 'password'))){
                
                $username = $_POST['username'];
                $password = md5($_POST['password']);
                
                $stmt = $conn->prepare("SELECT id, username, points, photos, highscore FROM users WHERE username = '$username' AND password = '$password'");
                
                $stmt->execute();
                
                $stmt->store_result();
                
                if($stmt->num_rows > 0){
                    $stmt->bind_result($id, $username, $points, $photos, $highscore);
                    $stmt->fetch();
                    
                    $user = array(
                    'id'=>$id,
                    'username'=>$username,
                    'points'=>$points,
                    'photos'=>$photos,
                    'highscore'=>$highscore
                    );
                    
                    $response['error'] = false;
                    $response['message'] = 'Login successfull';
                    $response['user'] = $user;
                } else {
                    $response['error'] = true;
                    $response['message'] = 'Incorrect username or password';
                    
                }
            }
            break;
            
            case 'game':
            if(isTheseParametersAvailable(array('id','points', 'photos', 'highscore'))){
                $id = (int)$_POST['id'];
                $points = (int)$_POST['points'];
                $photos = (int)$_POST['photos'];
                $highscore = (int)$_POST['highscore'];
                
                $stmt = $conn->prepare("UPDATE users SET points = points + '$points', photos = photos + '$photos', highscore = '$highscore' WHERE id = '$id'");
                
                $stmt->execute();
                
                $stmt->store_result();
            }
            break;
            
             case 'change':
            if(isTheseParametersAvailable(array('id','password'))){
                $id = (int)$_POST['id'];
                $password = md5($_POST['password']);
                
                $stmt = $conn->prepare("SELECT password FROM users WHERE password = '$password' AND id = '$id'");
                $stmt->execute();
                $stmt->store_result();
                
                if ($stmt->num_rows > 0){
                    $response['error'] = true;
                    $response['message'] = 'Password Already Exists';
                    $stmt->close();
                }
                
                else{
                    $stmt = $conn->prepare("UPDATE users SET password = '$password' WHERE id = '$id'");
                
                    $stmt->execute();

                    $stmt->store_result();

                    $response['error'] = false;
                    $response['message'] = 'Password Changed';
                    $stmt->close();
                }
            }
            break;
            
            case 'delete':
            if(isTheseParametersAvailable(array('id'))){
                $id = (int) $_POST['id'];
                
                $stmt = $conn->prepare("DELETE FROM users WHERE id = '$id'");
        
                $stmt->execute();
                
                $response['error'] = false;
                $response['message'] = 'Account Deleted';
            }
            break;
            
            default:
                $response['error'] = true;
                $response['message'] = 'Invalid Operation Call';
                }
            } else{
                $response['error'] = true;
                $response['message'] = 'Invalid API Call';
            }

        echo json_encode($response);

        function isTheseParametersAvailable($params){
            foreach($params as $param){
                if(!isset($_POST[$param])){
                    return false;
                }
            }            
            return true;
        }
?>