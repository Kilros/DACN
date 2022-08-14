<?php
class CalendarModel extends DB{
    public function Select_calendar_all(){
        $qr="SELECT calendars.id, calendars.title, calendars.time, calendars.user_id,  user.fullname fullname FROM calendars LEFT JOIN user on calendars.user_id= user.id ORDER BY calendars.id";
		$result=mysqli_query($this->con, $qr);
		$data= array();
		While($row=mysqli_fetch_array($result,1)){
			$data[]=$row;
		};
        return json_encode($data);	
    }
    public function Select_calendar($id){
        // $qr="SELECT calendars.id, calendars.title, calendars.time, calendars.user_id, calendars.created_at, calendars.updated_at, user.fullname fullname FROM calendars LEFT JOIN user on calendars.user_id= user.id WHERE calendars.user_id='$id' ORDER BY calendars.id";
        $qr = "SELECT * FROM calendars WHERE user_id='$id'";
		$result=mysqli_query($this->con, $qr);
		$data= array();
		While($row=mysqli_fetch_array($result,1)){
			$data[]=$row;
		};
        return json_encode($data);	
    }
    public function Select_calendar_id($id){
        $qr="SELECT calendars.id, calendars.title, calendars.in_date, calendars.in_time, calendars.out_date, calendars.out_time, calendars.user_id,  user.fullname fullname, user.mssv mssv FROM calendars LEFT JOIN user on calendars.user_id= user.id WHERE calendars.user_id='$id' ORDER BY calendars.id";
		$result=mysqli_query($this->con, $qr);
		$data= array();
		While($row=mysqli_fetch_array($result,1)){
			$data[]=$row;
		};
        return json_encode($data);	
    }
    public function Select_calendar_date($date){
        $qr="SELECT calendars.id, calendars.title, calendars.in_date, calendars.in_time, calendars.out_date, calendars.out_time, calendars.user_id,  user.fullname fullname, user.mssv mssv FROM calendars LEFT JOIN user on calendars.user_id= user.id WHERE calendars.in_date='$date' ORDER BY calendars.id";
		$result=mysqli_query($this->con, $qr);
		$data= array();
		While($row=mysqli_fetch_array($result,1)){
			$data[]=$row;
		};
        return json_encode($data);	
    }
    public function Select_calendar_date_excel($date){
        $qr="SELECT calendars.id, calendars.in_date, calendars.in_time, calendars.out_date, calendars.out_time, user.mssv mssv FROM calendars LEFT JOIN user on calendars.user_id= user.id WHERE calendars.in_date='$date' ORDER BY calendars.id";
		$result=mysqli_query($this->con, $qr);
		$data= array();
		While($row=mysqli_fetch_array($result,1)){
			$data[]=$row;
		};
        return json_encode($data);	
    }
    public function Count_calendar($id){
        $qr = "SELECT COUNT(id) as count FROM calendars WHERE user_id='$id'";
		$result=mysqli_query($this->con, $qr);
		$data=mysqli_fetch_array($result,1);
        return json_encode($data);	
    }
    public function Insert_calendar($user_id, $in_date, $in_time){
        $created_at=$updated_at=date('Y-m-d H:s:i');
        $tille="Điểm danh";
        $out_date="";
        $out_time="";
        $qr = "INSERT INTO calendars (title, in_date, in_time, out_date, out_time, user_id, created_at, updated_at) VALUES ('$tille', '$in_date','$in_time','$out_date','$out_time','$user_id','$created_at','$updated_at')";
        $result =false;
        if(mysqli_query($this->con, $qr)){
            $result=true;
        }
        return json_encode($result);
    }
    public function Check_out($id_calendar, $out_date, $out_time)
    {
        $qr = "UPDATE calendars SET out_date='$out_date', out_time='$out_time' WHERE id= '$id_calendar'";
        $result =false;
        if(mysqli_query($this->con, $qr)){
            $result=true;
        }
        return json_encode($result);
    }
}
?>
