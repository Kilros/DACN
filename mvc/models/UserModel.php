<?php
class UserModel extends DB{
    public function Selectuser(){
        $qr = "SELECT * FROM user";
		$result=mysqli_query($this->con, $qr);
		$data= array();
		While($row=mysqli_fetch_array($result,1)){
			$data[]=$row;
		}
        return json_encode($data);	
    }

    public function layusersing($idselect){
        $qr = "SELECT * FROM user WHERE id= '$idselect'";
		$result=mysqli_query($this->con, $qr);
		$data= array();
		While($row=mysqli_fetch_array($result,1)){
			$data[]=$row;
		}
        mysqli_close($this->con);
        return json_encode($data);	
    }
    public function layusersing_user($username){
        $qr = "SELECT * FROM user WHERE username= '$username'";
		$result=mysqli_query($this->con, $qr);
		$data=mysqli_fetch_array($result,1);
        return json_encode($data);	
    }

    public function Insertuser($username, $password, $fullname, $mssv, $email, $role ){
        $created_at=$updated_at=date('Y-m-d H:s:i');
        $qr = "INSERT INTO user ( username, password, fullname, mssv, email, created_at, updated_at, role) VALUES ('$username', '$password','$fullname','$mssv','$email','$created_at','$updated_at','$role')";
        $result =false;
        if(mysqli_query($this->con, $qr)){
            $result=true;
        }
        return json_encode($result);
    }
    public function Changepass($password, $idcheck){
        $updated_at=date('Y-m-d H:s:i');
        $qr = "UPDATE user SET  password='$password', updated_at='$updated_at' WHERE id= '$idcheck'";
        $result =false;
        if(mysqli_query($this->con, $qr)){
            $result=true;
        }
        return json_encode($result);
    }

    public function Updateuser($username, $password, $fullname, $mssv, $email, $role , $idcheck){
        $updated_at=date('Y-m-d H:s:i');
        $qr = "UPDATE user SET username='$username', password='$password', fullname='$fullname', mssv='$mssv', email='$email', updated_at='$updated_at', role='$role' WHERE id= '$idcheck'";
        $result =false;
        if(mysqli_query($this->con, $qr)){
            $result=true;
        }
        return json_encode($result);
    }
    public function Updateavatar($avatar, $id){
        $updated_at=date('Y-m-d H:s:i');
        $qr = "UPDATE user SET avatar='$avatar', updated_at='$updated_at' WHERE id= '$id'";
        $result =false;
        if(mysqli_query($this->con, $qr)){
            $result=true;
        }
        return json_encode($result);
    }

    public function Xoauser($idxoa){
        $qr = "SELECT * FROM user";
        $result=mysqli_query($this->con, $qr);
        $data= array();
        While($row=mysqli_fetch_array($result,1)){
            $data[]=$row;
        }	
        if(count($data)>1){
            $qr = "DELETE FROM user WHERE id= '$idxoa'";
            $rs =false;
            if(mysqli_query($this->con, $qr)){
                $rs=true;
            }
        }
        mysqli_close($this->con);
        return $rs;
    }
    public function Inserttoken($id_user, $token){
        $qr = "INSERT INTO login_tokens ( id_user, token) VALUES ('$id_user', '$token')";
        $result =false;
        if(mysqli_query($this->con, $qr)){
            $result=true;
        }
        return json_encode($result);
    }
    public function Deletetoken($token){
        $qr = "DELETE FROM login_tokens WHERE token = '$token'";
        $result =false;
        if(mysqli_query($this->con, $qr)){
            $result=true;
        }
        return json_encode($result);
    }
    public function AuthenToken(){
        $token="";
        if(isset($_COOKIE['token'])){
            $token=$_COOKIE['token'];
        }
        if(empty($token)){
            return null;
        }
        $qr = "SELECT user.* from user, login_tokens WHERE user.id=login_tokens.id_user AND login_tokens.token= '$token'";
        $result=mysqli_query($this->con, $qr);
        $data=mysqli_fetch_array($result,1);
        if($data != null && count($data) > 0){
            return json_encode($data);
        }
        return null;
    }
    public function Insertimg($thumbnail, $user_id){
        $st="false";
        $created_at=$updated_at=date('Y-m-d H:s:i');
        $qr = "INSERT INTO imgs ( thumbnail, st, user_id, created_at, updated_at) VALUES ('$thumbnail', '$st','$user_id','$created_at','$updated_at')";
        $result =false;
        if(mysqli_query($this->con, $qr)){
            $result=true;
        }
        return json_encode($result);
    }
    public function Selectimg($id){
        $qr = "SELECT * FROM imgs WHERE user_id= '$id'";
		$result=mysqli_query($this->con, $qr);
		$data= array();
		While($row=mysqli_fetch_array($result,1)){
			$data[]=$row;
		}
        mysqli_close($this->con);
        return json_encode($data);	
    }
    public function Getimg(){
        $qr = "SELECT * FROM imgs WHERE st='false'";
		$result=mysqli_query($this->con, $qr);
		$data= array();
		While($row=mysqli_fetch_array($result,1)){
			$data[]=$row;
		}
        mysqli_close($this->con);
        return json_encode($data);	
    }
}
?>