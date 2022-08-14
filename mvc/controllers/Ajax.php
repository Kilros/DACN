<?php

class Ajax extends Controller{
    public $BASE_URL="http://localhost/dacn/";
    public $user;
    public $calendar; 
    public $event;
    private $token="123";  
    // Must have SayHi()
    public function __construct(){
        $this->user = $this->model("UserModel");
        $this->calendar = $this->model("CalendarModel");
        $this->event = $this->model("EventModel");
    }
    function SayHi(){
        header("Location:".$this->BASE_URL."Admin");
    }
    //--------SelectSing---------//
    public function Selectsing(){ 
        if(!empty($_POST)){
            if(isset($_POST["action"])){
                $action=$_POST["action"];
                switch($action){
                    case 'Selectusersing':
                        if(isset($_POST["id"])){
                            $id=$_POST["id"];
                            echo $this->user->layusersing($id);
                        }
                    break; 
                    case 'Selecteventsing':
                        if(isset($_POST["id"])){
                            $id=$_POST["id"];
                            echo $this->event->layeventsing($id);
                        }
                    break;                   
                }
            }
        }
    }
    //--------Delete---------//
    public function Del(){ 
        if(!empty($_POST)){
            if(isset($_POST["action"])){
                $action=$_POST["action"];
                switch($action){
                    case 'deleteuser':
                        if(isset($_POST["id"])){
                            $id=$_POST["id"];
                            echo $this->user->Xoauser($id);
                        }
                    break; 
                    case 'deleteevent':
                        if(isset($_POST["id"])){
                            $id=$_POST["id"];
                            echo $this->event->Xoaevent($id);
                        }
                    break;          
                }
            }
        }
    }

    public function Login(){
        $username=$password=$token="";
        if(!empty($_POST)){
            if(isset($_POST["login"])){
                $username=$_POST["username"];
                $username=str_replace("'", "\\'", $username);
                $password=$_POST["password"]; 
                $password=str_replace("'", "\\'", $password);
                //echo password_hash($password, PASSWORD_DEFAULT);             
                $result=$this->user->layusersing_user($username);
                $result=json_decode($result, true);	
                if (password_verify($password, $result["password"])) {
                    $id_user=$result["id"];
                    $email=$result["email"];
                    $token=md5($username.time().$email);
                    setcookie('token', $token , time()+7*24*60*60, '/');
                    $this->user->Inserttoken($id_user, $token);
                    header("Location:".$this->BASE_URL."Admin");
                    die();
                } else {
                    header("Location:".$this->BASE_URL."Login");
                }

            }
        }
    }
    public function Logout(){
        $token=$_COOKIE['token'];
        if(empty($token)){
            header("Location:".$this->BASE_URL."Login");
            die();
        }
        $this->user->Deletetoken($token);
        setcookie('token', '' , time()-7*24*60*60, '/');
        header("Location:".$this->BASE_URL."Login");
        die();
    }
    public function Getuser(){
        if(!empty($_POST)){
            if(isset($_POST["getuser"]) && isset($_POST["token"])){
                if($this->token==$_POST["token"]){
                    $id=$_POST["id"];
                    echo $this->user->layusersing($id);
                    die();
                }
            }
        }
    }
    public function Getimg(){
        if(!empty($_POST)){
            if(isset($_POST["getimg"]) && isset($_POST["token"])){
                if($this->token==$_POST["token"]){
                    echo $this->user->Getimg();
                    die();
                }
            }
        }
    }
    public function Getcalender(){    
        if(!empty($_POST)){
            if(isset($_POST["getcalendar"]) && isset($_POST["token"])){
                if($this->token==$_POST["token"]){
                    $id=$_POST["id"];
                    echo $this->calendar->Select_calendar_id($id);
                    die();
                }
            }
        }
    }
    public function Get_calendar(){    
        if(!empty($_POST)){
            if(isset($_POST["action"])){
                $action=$_POST["action"];
                switch($action){
                    case 'getcalendardate':
                        if(isset($_POST["date"])){
                            $date=$_POST["date"];
                            echo $this->calendar->Select_calendar_date($date);
                        }
                    break; 
                }
            }
        }
    }
    public function Insertcalender(){ 
        if(!empty($_POST)){
            if(isset($_POST["insertcalender"]) && isset($_POST["token"])){
                if($this->token==$_POST["token"]){
                    $id=$_POST["id"];
                    $temp=$_POST["in_time"];
                    $in_date=explode(" ", $temp)[0];
                    $in_time=explode(" ", $temp)[1];
                    $calendars=$this->calendar->Select_calendar($id);
                    $calendars=json_decode($calendars, true);
                    if($calendars==[]){
                        echo $this->calendar->Insert_calendar($id, $in_date, $in_time);
                        die();
                    }
                    if($in_date==$calendars[count($calendars)-1]["in_date"]){
                        // if(strtotime($time)-strtotime($data["time"]) >= 5*60 ){
                        //     echo $this->calendar->Insert_calendar($id, $time);
                        // }else{
                            echo json_encode("exist");  
                        // }                                                 
                    }else{
                        echo $this->calendar->Insert_calendar($id, $in_date, $in_time);
                    }
                    die();                 
                }
            }
        }
    }
    public function Check_out_calendar(){
        if(!empty($_POST)){
            if(isset($_POST["checkout"]) && isset($_POST["token"])){
                if($this->token==$_POST["token"]){
                    $id=$_POST["id"];
                    $temp=$_POST["out_time"];
                    $out_date=explode(" ", $temp)[0];
                    $out_time=explode(" ", $temp)[1];
                    $calendars=$this->calendar->Select_calendar($id);
                    $calendars=json_decode($calendars, true);
                    $id_calendar=$calendars[count($calendars)-1]["id"];
                    if($calendars[count($calendars)-1]["out_date"]==""){
                        echo $this->calendar->Check_out($id_calendar, $out_date, $out_time);
                    }
                    else{
                        echo json_encode("false");
                    }
                }
            }
        }
    }
    public function Upload_img(){
        $target_dir = "public/profile/photo_gallery/";
        if(!empty($_POST)){
            if(isset($_FILES) && isset($_POST["upload_img"]) && isset($_POST["token"])){
                if($this->token==$_POST["token"]){
                    $id=$_POST["id"];
                    $target_file = $target_dir . basename($_FILES["file"]["name"]);
                    if(!file_exists("./".$target_file)) {
                        if (move_uploaded_file($_FILES["file"]["tmp_name"], $target_file)) {
                            $this->user->Insertimg($target_file,$id);     
                            echo " has been uploaded.";
                        } else {
                            echo "Error uploading your file.";
                        }
                    }
                    else{
                        if (move_uploaded_file($_FILES["file"]["tmp_name"], $target_file)) {  
                            echo " has been uploaded.";
                        } else {
                            echo "Error uploading your file.";
                        }
                    }
                }
            }
        }
    }
    public function Export_excel(){
        if(!empty($_POST)){
            if(isset($_POST["export_excel"]) && $_POST["date"]!=""){
                $date=$_POST["date"];
                $data = json_decode($this->calendar->Select_calendar_date_excel($date), true);
                function filterData(&$str){ 
                    $str = preg_replace("/\t/", "\\t", $str); 
                    $str = preg_replace("/\r?\n/", "\\n", $str); 
                    if(strstr($str, '"')) $str = '"' . str_replace('"', '""', $str) . '"'; 
                }
                // Excel file name for download 
                $fileName = "Diemdanh_" . $date . ".xls"; 
                
                // Headers for download 
                header("Content-Disposition: attachment; filename=\"$fileName\""); 
                header("Content-Type: application/vnd.ms-excel"); 
                
                $flag = false; 
                foreach($data as $row) { 
                    if(!$flag) { 
                        // display column names as first row 
                        echo implode("\t", array_keys($row)) . "\n"; 
                        $flag = true; 
                    } 
                    // filter data 
                    array_walk($row, 'filterData'); 
                    echo implode("\t", array_values($row)) . "\n"; 
                }
                exit;      
            }
            else{
                header("Location:".$this->BASE_URL."Admin/Generalcalendar");
            }
        }
    }
}
?>