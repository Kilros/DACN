<div class="container-fluid">
                    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Danh sách tài khoản</h1>
    

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <button type="button" class="btn btn-primary" onclick="Insertuser()">Thêm Tài Khoản</button>
        </div>      
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th style="width: 4%">ID</th>
                            <th style="width: 15%">Họ Và Tên</th>
                            <th style="width: 8%">MSSV</th>
                            <th style="width: 12%">Tên Đăng Nhập</th>
                            <!-- <th>Mật Khẩu</th> -->
                            <th>E-mail</th>
                            <th style="width: 6%">Role</th>
                            <th style="width: 15%">Ngày Tạo</th>
                            <th style="width: 15%">Ngày Cập Nhật</th>
                            <th style="width: 5%"></th>
                            <th style="width: 5%"></th>
                        </tr>
                    </thead>                                       
                    <tbody id="myTable">
                        <?php
                            $user=json_decode($data["User"], true);
                            for($i=0;$i< count($user);$i++){
                                echo '<tr>
                                        <td>'.$user[$i]['id'].'</td>
                                        <td>'.$user[$i]['fullname'].'</td>
                                        <td>'.$user[$i]['mssv'].'</td>
                                        <td>'.$user[$i]['username'].'</td>
                                        <td>'.$user[$i]['email'].'</td>
                                        <td>'.$user[$i]['role'].'</td>
                                        <td>'.$user[$i]['created_at'].'</td>
                                        <td>'.$user[$i]['updated_at'].'</td>   
                                        <td><button type="button" onclick="Edituser('.$user[$i]['id'].')" class="btn btn-success" >Sửa</button></td>  
                                        <td><button type="button" onclick="Deluser('.$user[$i]['id'].')" class="btn btn-danger">Xóa</button></td>                                                                                      
                                    </tr>';
                                
                            }
                        ?>                                 
                    </tbody> 
                </table>
            </div>
        </div>
    </div>
</div>
<div class="container mt-3">
    <!-- The Modal -->
    <div class="modal fade" id="myModal" >
        <div class="modal-dialog modal-lg">
        <div class="modal-content">
        
            <!-- Modal Header -->
            <div class="modal-header">
            <h4 class="modal-title">Sửa/Thêm Tài khoản</h4>
            <button type="button" class="close" data-dismiss="modal">×</button>
            </div>
            
            <!-- Modal body -->
            <div class="modal-body">
                <form method="post" action="./Admin/User">
                    <div class="form-group" style="display: none">
					  <input type="text" class="form-control" id="idcheck" name="idcheck">
					</div>
					<div class="form-group">
					  <label for="username">Tài khoản:</label>
					  <input type="usename" class="form-control" id="username" placeholder="Nhập tài khoản" name="username">
					</div>
					<div class="form-group">
					  <label for="password">Mật khẩu:</label>
					  <input type="text" class="form-control" id="password" placeholder="Nhập mật khẩu" name="password">
					</div>
                    <div class="form-group">
					  <label for="fullname">Họ Và Tên:</label>
					  <input type="text" class="form-control" id="fullname" placeholder="Nhập họ và tên" name="fullname">
					</div>
                    <div class="form-group">
					  <label for="mssv">MSSV:</label>
					  <input type="text" class="form-control" id="mssv" placeholder="Nhập mã số sinh viên" name="mssv">
					</div>
					<div class="form-group">
					  <label for="email">Email:</label>
					  <input type="email" class="form-control" id="email" placeholder="Nhập địa chỉ email" name="email">
					</div>
                    <label for="role">Nhập vai trò:</label>
                    <select class="form-control" id="role" name="role">                
                        <option value="emt">-- Lựa Chọn vai trò --</option>    
                        <option value="Admin">Admin</option>
                        <option value="Staff">Nhân Viên</option>
                    </select>
					<button style="margin-top:15px" type="submit" name="submituser" class="btn btn-primary">Lưu</button>
				</form>
            </div>
            
            <!-- Modal footer -->
            <div class="modal-footer">
            <button type="button" class="btn btn-danger" data-dismiss="modal">Đóng</button>
            </div>
            
        </div>
        </div>
    </div>    
</div>
<script>
    <?php
        if(isset($data["Rsinsert"])){
            if($data["Rsinsert"]==true){
                echo 'alert ("Thêm thành công")';
            }           
        }
        if(isset($data["Rsupdate"])){
            if($data["Rsupdate"]==true){
                echo 'alert ("Cập nhật thành công")';
            }
        }
    ?>
</script>