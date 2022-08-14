
 <?php
    $user_login=json_decode($data["Infouser"], true);
    if($user_login==null){
        die();
    }
?>
<div class="container-fluid">
    <h1 class="h3 mb-2 text-gray-800">Thay Đổi Mật Khẩu</h1>
    <div class="card shadow mb-4">
        <div class="card-body">
            <form method="post" action="./Admin/User">
                <div class="form-group">
                    <label for="password">Mật khẩu cũ:</label>
                    <input type="password" class="form-control" id="password_old" placeholder="Nhập mật khẩu" name="password_old">
                </div>
                <div class="form-group">
                    <label for="password">Mật khẩu mới:</label>
                    <input type="password" class="form-control" id="password_new1" placeholder="Nhập mật khẩu" name="password_new1">
                </div>
                <div class="form-group">
                    <label for="password">Mật khẩu mới:</label>
                    <input  onchange="Check_duplicate()" type="password" class="form-control" id="password_new2" placeholder="Nhập mật khẩu" name="password_new2">
                </div>
                <div style="color:red; display: none;" id="err_duplicate">Hai mật khẩu không giống nhau !!</div>
                <button style="margin-top:15px" type="submit" name="submit_change_user" class="btn btn-primary">Lưu</button>
            </form>
        </div>
    </div>
</div>