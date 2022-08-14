<style>
    #gallery {
    margin: 5px;
    line-height:0;
    -webkit-column-count:5; /* split it into 5 columns */
    -webkit-column-gap:5px; /* give it a 5px gap between columns */
    -moz-column-count:5;
    -moz-column-gap:5px;
    column-count:5;
    column-gap:5px;
    }
    #gallery img {
        width: 100% !important;
        height: auto !important;
        margin-bottom:5px; /* to match column gap */
        border-radius: 5px;
        box-shadow: 0 0 16px #EDF0F5;
        transition: all 1s ease;
    }
    #gallery img:hover {
        opacity: 0.7;
        box-shadow: 0 0 32px #EDF0F5;
        transform: scale(1.025);
    }
    @media (max-width: 1200px) {
        #gallery {
            -moz-column-count:    4;
            -webkit-column-count: 4;
            column-count:         4;
        }
    }
    @media (max-width: 1000px) {
        #gallery {
            -moz-column-count:    3;
            -webkit-column-count: 3;
            column-count:         3;
        }
    }
    @media (max-width: 800px) {
        #gallery {
            -moz-column-count:    2;
            -webkit-column-count: 2;
            column-count:         2;
        }
    }
    @media (max-width: 400px) {
        #gallery {
            -moz-column-count:    1;
            -webkit-column-count: 1;
            column-count:         1;
        }
    }
</style>
<div class="container-fluid">
    <div class="card shadow mb-4">   
        <div class="card-header py-3">
            <h1 class="h3 mb-2 text-gray-800">Thông Tin Cá Nhân</h1>
        </div>     
        <div class="card-body">
            <div class="row">
                <div class="col-sm-4">
                    <img style="position:relative; width:100%" src="<?="./".$infouser["avatar"]?>" class="rounded-circle" alt="Cinque Terre">
                </div>
                
                <div class="col-sm-8">
                    <h1 class="h5 mb-2 text-gray-800">Thông tin:</h1>
                    <?php
                        echo '
                        <div>Họ Và Tên: <pan>'.$infouser['fullname'].'</pan></div>
                        <div>Email: <pan>'.$infouser['email'].'</pan></div>
                        <button style="margin-top: 20px; margin-bottom: 20px;" type="button" class="btn btn-primary" onclick="Editavatar('.$infouser['id'].')" class="btn btn-success" >Chỉnh ảnh đại điện</button> 
                        ';
                    ?> 
                    <div class="card shadow mb-4"> 
                        <div id="gallery">
                            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.3.5/jquery.fancybox.min.css" />                          
                                <?php
                                    $imgs=json_decode($data["Img"], true); 
                                    foreach ($imgs as $item ) {
                                        $img="./".$item["thumbnail"];
                                        echo '<a data-fancybox="gallery" href="'.$img.'" data-caption="'.$item["id"].'"><img src="'.$img.'" alt=""></a>';
                                    }
                                ?>                 
                            <script src="./public/js/jquery.fancybox.min.js"></script>
                            <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.1/TweenMax.min.js"></script>
                            <script type="text/javascript" src="./public/js/lightbox.js"></script>

                        </div>  
                        <!-- <div style="padding: 10px; text-align: center; margin:auto 0;width:10%" class="btn btn-primary">
                                <a  href="./Admin/Uploadimg" class="img">Thêm ảnh</a>    
                        </div>    -->
                </div>
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
            <h4 class="modal-title">Thay Đổi Avater</h4>
            <button type="button" class="close" data-dismiss="modal">×</button>
            </div>
            
            <!-- Modal body -->
            <div class="modal-body">
                <form action="./Admin/Upload" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <input type="file" class="btn btn-primary" name="fileToUpload" id="fileToUpload">
                    </div>
                    <input type="submit" class="btn btn-primary" value="Upload Image" name="submit">                
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



      
