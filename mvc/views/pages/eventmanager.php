<style>
    
</style>'

<div class="container-fluid">
                    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Danh Sách Sự Kiện</h1>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <button type="button" class="btn btn-primary" onclick="Insertevent()">Thêm Sự Kiện</button>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th style="width: 4%">ID</th>
                            <th>Tên sự kiện</th>
                            <th style="width: 20%">Thời gian</th>
                            <th style="width: 10%">ID Người Tạo</th>                     
                            <th style="width: 12%">Ngày Tạo</th>
                            <th style="width: 12%">Ngày Cập Nhật</th>
                            <th style="width: 5%"></th>
                            <th style="width: 5%"></th> 
                        </tr>
                    </thead>                                       
                    <tbody  id="myTable">
                        <?php
                            $event=json_decode($data["Event"], true);
                            for($i=0;$i< count($event);$i++){
                                echo '<tr>
                                        <td>'.$event[$i]['id'].'</td>
                                        <td>'.$event[$i]['event_name'].'</td> 
                                        <td>'.$event[$i]['time'].'</td>                                       
                                        <td>'.$event[$i]['id_user'].'</td>  
                                        <td>'.$event[$i]['created_at'].'</td>
                                        <td>'.$event[$i]['updated_at'].'</td>   
                                        <td><button type="button" onclick="Editevent('.$event[$i]['id'].')" class="btn btn-success" >Sửa</button></td>  
                                        <td><button type="button" onclick="Delevent('.$event[$i]['id'].')" class="btn btn-danger">Xóa</button></td>                                                   
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
    <div class="modal fade" id="myModal_event" >
        <div class="modal-dialog modal-lg">
        <div class="modal-content">
        
            <!-- Modal Header -->
            <div class="modal-header">
            <h4 class="modal-title">Sửa/Thêm banner</h4>
            <button type="button" class="close" data-dismiss="modal">×</button>
            </div>
            
            <!-- Modal body -->
            <div class="modal-body">
                <form method="post" action="./Admin/Event">
                    <div class="form-group" style="display: none">
					  <input type="text" class="form-control" id="idcheck" name="idcheck">
					</div>
					<div class="form-group">
					  <label for="title">Tên Sự Kiện:</label>
					  <input type="text" class="form-control" id="title" placeholder="Nhập tên sự kiện" name="title">
					</div>
                    <div class="form-group">
					  <label for="title">Tên Sự Kiện:</label>
					  <input type="datetime-local" class="form-control" id="time" placeholder="Nhập thời gian sự kiện" name="time">
					</div>
					<button type="submit" name="submitevent" class="btn btn-primary">Lưu</button>
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
$(function() {
  $('input[name="birthday"]').daterangepicker({
    singleDatePicker: true,
    showDropdowns: true,
    minYear: 1901,
    maxYear: parseInt(moment().format('YYYY'),10)
  }, function(start, end, label) {
    var years = moment().diff(start, 'years');
    alert("You are " + years + " years old!");
  });
});
</script>
