<?php
class Admin extends Controller{
    public $BASE_URL="http://localhost/dacn/";
    public $infouser;  
    public $user;
    public $calendar; 
    public $event; 
    public function __construct(){
        //call model
        $this->user = $this->model("UserModel");
        $this->calendar = $this->model("CalendarModel");
        $this->event = $this->model("EventModel");
        $this->infouser=json_decode($this->user->AuthenToken(), true);
        if($this->infouser == null){
            header("Location:".$this->BASE_URL."Login");
            die();
        }
    }

    // Must have SayHi()- call default
    function SayHi(){
        $user_login=json_decode($this->user->AuthenToken(), true);
        $id=$user_login["id"];
        $this->view("admin",[
            "Page"=> "calendarmanage",
            "Infouser" => $this->user->AuthenToken(),
            "User"=> $this->user->Selectuser(),
            "Calendar"=> $this->calendar->Select_calendar($id),
            "Event"=> $this->event->Select_event()
        ]);
    }
    //-------Tài Khoản Quản Trị
    public function User(){ 
        $rsinsert= $rsupdate=false; 
        $user_login=json_decode($this->user->AuthenToken(),true); 
        if(!empty($_POST)){
            if(isset($_POST["submituser"])){
                $idcheck=$_POST["idcheck"];
                $username=$_POST["username"];
                $password=$_POST["password"];
                $fullname=$_POST["fullname"];
                $mssv=$_POST["mssv"];
                $password=password_hash($password, PASSWORD_DEFAULT); 
                $email=$_POST["email"];  
                $role=$_POST["role"];                    
                if($idcheck=="emt"){
                    $rsinsert=$this->user->Insertuser($username, $password, $fullname, $mssv, $email, $role);
                }
                else{
                    $rsupdate=$this->user->Updateuser($username, $password, $fullname, $mssv, $email, $role, $idcheck);
                }
            }
            if(isset($_POST["submit_change_user"])){
                $username=$user_login["username"];
                $id=$user_login["id"];
                $password_old=$_POST["password_old"];            
                $result=$this->user->layusersing_user($username);
                $result=json_decode($result, true);	
                if (password_verify($password_old, $result["password"])) {
                    $password_new=$_POST["password_new2"]; 
                    $password_new=str_replace("'", "\\'", $password_new);
                    $password_new=password_hash($password_new, PASSWORD_DEFAULT);                  
                    if($this->user->Changepass($password_new , $id)){
                        echo "<script type='text/javascript'>alert('Thay đổi mật khẩu thành công');</script>";
                    }
                }
                else{
                    echo "<script type='text/javascript'>alert('Mật khẩu cũ không chính xác');</script>";
                }
            }
        }     
        if($user_login["role"]=="Admin"){
            $this->view("admin",[
                "Page"=> "usermanage",
                "Infouser" => $this->user->AuthenToken(),
                "User"=> $this->user->Selectuser(),
                "Rsinsert"=>  $rsinsert,
                "Rsupdate"=>  $rsupdate
            ]);
        }
        else{
            $this->SayHi();
        }
    }
    public function Profile(){ 
        $this->view("admin",[
            "Page"=> "profilemanager",
            "Infouser" => $this->user->AuthenToken(),
            "User"=> $this->user->Selectuser(),
            "Img"=> $this->user->Selectimg($this->infouser["id"]),
        ]);
        
    }   
    public function Uploadimg(){ 
        $this->view("admin",[
            "Page"=> "uploadimg",
            "Infouser" => $this->user->AuthenToken(),
            "User"=> $this->user->Selectuser(),
        ]);
        
    }

    public function Changepass(){ 
        $this->view("admin",[
            "Page"=> "changepass",
            "Infouser" => $this->user->AuthenToken(),
            "User"=> $this->user->Selectuser(),
        ]);
        
    }
    public function Upload(){
        $infouser=json_decode($this->user->AuthenToken(), true); 
        if(!empty($_POST)){
            
            if(isset($_FILES["fileToUpload"]["name"])){
                $target_dir = "public/profile/avatar/";
                $target_file = $target_dir .$infouser["id"].".". basename($_FILES["fileToUpload"]["name"]);
                $uploadOk = 1;
                $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
                
                // Check if image file is a actual image or fake image
                if(isset($_POST["submit"])) {
                    $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
                    if($check !== false) {
                    // echo "File is an image - " . $check["mime"] . ".";
                    $uploadOk = 1;
                    } else {
                    echo "File is not an image.";
                    $uploadOk = 0;
                    }
                }          
                // Check if file already exists
                if (file_exists($target_file)) {
                    echo "Sorry, file already exists.";
                    $uploadOk = 0;
                }
                
                // Check file size
                if ($_FILES["fileToUpload"]["size"] > 5000000) {
                    echo "Sorry, your file is too large.";
                    $uploadOk = 0;
                }
                
                // Allow certain file formats
                if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
                && $imageFileType != "gif" ) {
                    echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
                    $uploadOk = 0;
                }
                
                // Check if $uploadOk is set to 0 by an error
                if ($uploadOk == 0) {
                    echo "Sorry, your file was not uploaded.";
                // if everything is ok, try to upload file
                } else {
                    if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], "./".$target_file)) {
                        // $status = unlink("./".$infouser["avatar"]);
                        $this->user->Updateavatar($target_file, $infouser["id"]);
                        $this->Profile();
                    } else {
                        echo "Sorry, there was an error uploading your file.";
                    }
                }
            }
            elseif(isset($_FILES["files"]["name"])){     
                $error=array();
                $extension=array("jpeg","jpg","png","gif");
                $target_dir = "public/profile/photo_gallery/";
                $num=0;
                foreach($_FILES["files"]["tmp_name"] as $key=>$tmp_name) {
                    $file_name=$_FILES["files"]["name"][$key];
                    $file_tmp=$_FILES["files"]["tmp_name"][$key];
                    $ext = strtolower(pathinfo($file_name,PATHINFO_EXTENSION));
                    if(in_array($ext,$extension)) {
                        if(!file_exists("./".$target_dir.$infouser["id"].".".$num.".".$ext)) {
                            move_uploaded_file($file_tmp, "./".$target_dir.$infouser["id"].".".$num.".".$ext);
                            $this->user->Insertimg($target_dir.$infouser["id"].".".$num.".".$ext, $infouser["id"]);                          
                        }
                        else {
                            // $filename=basename($file_name,$ext);
                            $newFileName=$num.".".time().".".$ext;
                            move_uploaded_file($file_tmp,"./".$target_dir.$infouser["id"].".".$newFileName);
                            $this->user->Insertimg($target_dir.$infouser["id"].".".$newFileName, $infouser["id"]);
                        }
                    }
                    else {
                        array_push($error,"$file_name, ");
                    }
                    $num++;
                }
                header("Location:".$this->BASE_URL."Admin/Profile");
                
            }
        }
    }
    public function Calendar(){ 
        $user_login=json_decode($this->user->AuthenToken(), true);
        $id=$user_login["id"];
        $this->view("admin",[
            "Page"=> "calendarmanage",
            "Infouser" => $this->user->AuthenToken(),
            "User"=> $this->user->Selectuser(),
            "Calendar"=> $this->calendar->Select_calendar($id),
            "Event"=> $this->event->Select_event()
        ]);       
    }
    public function Generalcalendar($calendar_id){ 
        $user_login=json_decode($this->user->AuthenToken(), true);
        if($user_login["role"]=="Admin"){
            $calendar_id=str_replace('"', '', $calendar_id);
            $calendar_id=str_replace("'", "", $calendar_id);
            $calendar = $this->calendar->Select_calendar($calendar_id);
            if($calendar == "[]"){
                $users = json_decode($this->user->Selectuser(), true);
                for($i=0 ; $i<count($users); $i++){
                    $g_calendar[$i] = array_merge($users[$i], json_decode($this->calendar->Count_calendar($users[$i]["id"]),true));
                }
                $this->view("admin",[
                    "Page"=> "generalcalendar",
                    "Infouser" => $this->user->AuthenToken(),
                    "User"=> $this->user->Selectuser(),
                    "G_Calendar"=> $g_calendar,
                ]);
            }else{
                $this->view("admin",[
                    "Page"=> "calendarmanage",
                    "Infouser" => $this->user->AuthenToken(),
                    "User"=> $this->user->Selectuser(),
                    "Calendar"=> $calendar,
                    "Event"=> ""
                ]);       
            }
        }else{
            $this->SayHi();
        }             
    }

    public function Event(){ 
        $user_login=json_decode($this->user->AuthenToken(), true);
        if(!empty($_POST)){
            if(isset($_POST["submitevent"])){
                $idcheck=$_POST["idcheck"];
                $title=$_POST["title"];
                $time=$_POST["time"];                  
                if($idcheck=="emt"){
                    if($this->event->Insertevent($title, $time, $user_login["id"])){
                        echo "<script type='text/javascript'>alert('Thêm sự kiện thành công');</script>";
                    }
                    else{
                        echo "<script type='text/javascript'>alert('Thêm sự kiện thất bại');</script>";
                    }
                }
                else{
                    if($this->event->Updateevent($title, $time, $user_login["id"], $idcheck)){
                        echo "<script type='text/javascript'>alert('Cập nhật sự kiện thành công');</script>";
                    }
                    else{
                        echo "<script type='text/javascript'>alert('Cập nhật sự kiện thất bại');</script>";
                    }
                }
            }
        }
        if($user_login["role"]=="Admin"){
            if(!empty($_POST)){
                if(isset($_POST["edit_event"])){
                    $event_id = $_POST["edit_event"];
                    $this->event->Updateevent();
                }
            }
            $this->view("admin",[
                "Page"=> "eventmanager",
                "Infouser" => $this->user->AuthenToken(),
                "User"=> $this->user->Selectuser(),
                "Event"=> $this->event->Select_event()
            ]); 
        }else{
            $this->SayHi();
        }       
    }
}
?>