
<div class="container-fluid">
    <div class="card shadow mb-4">   
        <div class="card-header py-3">
            <h1 class="h3 mb-2 text-gray-800">Thông Tin Cá Nhân</h1>
        </div>     
        <div class="card-body">
            <form action="./Admin/Upload" method="post" enctype="multipart/form-data">
                <div class="form-group">                   
                      <input type="file" class="btn btn-primary" name="files[]" multiple/>                     
				</div> 
                <input type="submit" class="btn btn-primary" value="Create Gallery" name="submit">              
            </form>
        </div>
    </div>
</div>
