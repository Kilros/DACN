<?php
class EventModel extends DB{
    public function Select_event(){
        $qr = "SELECT * FROM events";
		$result=mysqli_query($this->con, $qr);
		$data= array();
		While($row=mysqli_fetch_array($result,1)){
			$data[]=$row;
		}
        return json_encode($data);	
    }
    public function layeventsing($idselect){
        $qr = "SELECT * FROM events WHERE id= '$idselect'";
		$result=mysqli_query($this->con, $qr);
		$data= array();
		While($row=mysqli_fetch_array($result,1)){
			$data[]=$row;
		}
        return json_encode($data);	
    }
    public function Updateevent($event_name, $time, $id_user, $idcheck){
        $updated_at=date('Y-m-d H:s:i');
        $qr = "UPDATE events SET event_name='$event_name', time='$time', id_user='$id_user', updated_at='$updated_at'  WHERE id= '$idcheck'";
        $result =false;
        if(mysqli_query($this->con, $qr)){
            $result=true;
        }
        return json_encode($result);
    }
    public function Insertevent($event_name, $time, $id_user){
        $created_at=$updated_at=date('Y-m-d H:s:i');
        $qr = "INSERT INTO events ( event_name, time, id_user, created_at, updated_at) VALUES ('$event_name', '$time','$id_user','$created_at','$updated_at')";
        $result =false;
        if(mysqli_query($this->con, $qr)){
            $result=true;
        }
        return json_encode($result);
    }
    public function Xoaevent($idxoa){
        $qr = "DELETE FROM events WHERE id= '$idxoa'";
        $rs =false;
        if(mysqli_query($this->con, $qr)){
            $rs=true;
        }
        return $rs;
    }
}
?>