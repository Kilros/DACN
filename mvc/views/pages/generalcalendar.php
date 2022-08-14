
<div class="container-fluid">
                    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Quản Lý Điểm Danh</h1>
    <div class="card shadow mb-4">
        <div class="card-body">
            <form method="post" action="./Admin/Event">
                <div class="form-group">
                    <label for="title">Chọn ngày:</label>
                    <input style="width: 20%;" onchange="load_calendar()" type="date" class="form-control" id="time" placeholder="Nhập thời gian sự kiện" name="time">
                </div>
			</form>
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>Họ Và Tên</th>
                            <th>MSSV</th>
                            <th>Thời gian điểm danh</th>
                            <th>Thời gian hoàn thành</th>
                            <th style="width: 7%"></th>
                        </tr>
                    </thead>                                       
                    <tbody  id="myTable">
                        <?php
                            // $g_calendar=$data["G_Calendar"];
                            // for($i=0;$i< count($g_calendar);$i++){
                            //     echo '<tr>
                            //             <td>'.$g_calendar[$i]['id'].'</td>
                            //             <td>'.$g_calendar[$i]['fullname'].'</td>   
                            //             <td>'.$g_calendar[$i]['role'].'</td>                                    
                            //             <td>'.$g_calendar[$i]['count'].'</td>  
                            //             <td>
                            //             <a  href="./Admin/Generalcalendar/'.$g_calendar[$i]['id'].'"><button type="submit"  class="btn btn-success">Chi Tiết</button></a>
                            //             </td>                                                
                            //         </tr>';
                                
                            // }
                        ?>     
                    </tbody>
                </table>
                <form action="./Ajax/Export_excel" method="POST">
                    <input style="display: none;" type="text" class="form-control" id="date"  name="date">
                    <button type="submit" class="btn btn-primary" name="export_excel" >Xuất EXCEL</button>
                </form>               
            </div>
        </div>
    </div>
</div>