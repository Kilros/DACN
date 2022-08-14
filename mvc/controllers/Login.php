<?php
class Login extends Controller{
    public function __construct(){
        //call model
    }

    // Must have SayHi()- call default
    function SayHi(){
        $this->view("login",[
            "Page"=> "trangchu",
        ]);
    }
}
?>
