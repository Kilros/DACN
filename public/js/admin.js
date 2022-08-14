//---------USER-----------//
function Deluser(iduser){
    var option=confirm('Bạn có chắc chắn muốn xóa tài khoản');
    if(!option){
        return;
    }
    $.post("./Ajax/Del", {
        'id':iduser,
        'action':'deleteuser'
    }, function(data){   
        if(data==1){
            window.location.assign("Admin/User")
        }                    
    });
};
function Edituser(idselect){
    $("#myModal").modal("show");
    $.post("./Ajax/Selectsing", {
       'id': idselect,
       'action':'Selectusersing'
   }, function(data){  
        const dataselect = JSON.parse(data);
        $("#idcheck").val(dataselect[0].id);
        $("#username").val(dataselect[0].username);
        $("#fullname").val(dataselect[0].fullname);
        $("#mssv").val(dataselect[0].mssv);
        $("#email").val(dataselect[0].email);
        $("#role").val(dataselect[0].role);
   });
};
function Insertuser(){
    $("#myModal").modal("show");
    $("#idcheck").val("emt");
    $("#username").val("");
    $("#password").val("");
    $("#fullname").val("");
    $("#mssv").val("");
    $("#email").val("")
};
//---------BANNER-----------//
function Delbanner(idbanner){
    var option=confirm('Bạn có chắc chắn muốn xóa banner');
    if(!option){
        return;
    }
    $.post("./Ajax/Del", {
        'id':idbanner,
        'action':'deletebanner'
    }, function(data){   
        if(data==1){
            window.location.assign("Admin/Banner");
        }                    
    });
};
function Editbanner(idselect){
    $("#myModal").modal("show");
    $.post("./Ajax/Selectsing", {
       'id': idselect,
       'action':'Selectbannersing'
   }, function(data){  
        const dataselect = JSON.parse(data);
        $("#idcheck").val(dataselect[0].id);
        $("#title").val(dataselect[0].title);
        $("#thumbnail").val(dataselect[0].thumbnail);
        $("#img-thumbnail").attr("src", dataselect[0].thumbnail);
   });
};
function Insertbanner(){
    $("#myModal").modal("show");
    $("#idcheck").val("emt");
    $("#title").val("")
    $("#thumbnail").val("")
    $("#img-thumbnail").attr("src", "");
};
//---------Category-----------//
function Delcategory(idcategory){
    var option=confirm('Bạn có chắc chắn muốn xóa danh mục sản phẩm');
    if(!option){
        return;
    }
    $.post("./Ajax/Del", {
        'id':idcategory,
        'action':'deletecategory'
    }, function(data){   
        if(data==1){
            window.location.assign("Admin/Category")
        }                    
    });
};
function Editcategory(idselect){
    $("#myModal").modal("show");
    $.post("./Ajax/Selectsing", {
       'id': idselect,
       'action':'Selectcategorysing'
   }, function(data){  
        const dataselect = JSON.parse(data);
        $("#idcheck").val(dataselect[0].id);
        $("#categoryname").val(dataselect[0].name);
   });
};
function Insertcategory(){
    $("#myModal").modal("show");
    $("#idcheck").val("emt");
    $("#categoryname").val("");
};

function Check_duplicate(){
    var pass1=$("#password_new1").val();
    var pass2=$("#password_new2").val();
    if(pass1!=pass2){
        $("#err_duplicate").css({"display": "block"});
    }
    else{
        $("#err_duplicate").css({"display": "none"});
    }
};
function Insertevent(){
    $("#myModal_event").modal("show");
    $("#idcheck").val("emt");
    $("#title").val("");
    $("#time").val("")
}
function Editevent(idselect){
    $("#myModal_event").modal("show");
    $.post("./Ajax/Selectsing", {
       'id': idselect,
       'action':'Selecteventsing'
   }, function(data){  
        const dataselect = JSON.parse(data);
        $("#idcheck").val(dataselect[0].id);
        $("#title").val(dataselect[0].event_name);
        $("#time").val(dataselect[0].time);
   });
};
function Delevent(iduser){
    var option=confirm('Bạn có chắc chắn muốn xóa sự kiện');
    if(!option){
        return;
    }
    $.post("./Ajax/Del", {
        'id':iduser,
        'action':'deleteevent'
    }, function(data){   
        if(data==1){
            window.location.assign("Admin/Event")
        }                    
    });
};
function Editavatar(){
    $("#myModal").modal("show");
};
function load_calendar(){
    var date=document.getElementById("time").value; 
    var table=document.getElementById("myTable") ;
    var check_date=document.getElementById("date"); 
    table.innerHTML="";
    $.post("./Ajax/Get_calendar", {
        'date':date,
        'action':'getcalendardate'
    }, function(data){   
        var date=JSON.parse(data);     
        if(date!=""){
            var html=""
            for (let i = 0; i < date.length; i++) {
                html+="<tr><td>"+date[i]["fullname"]+"</td>";  
                html+="<td>"+date[i]["mssv"]+"</td>"; 
                html+="<td>"+date[i]["in_date"]+" - "+date[i]["in_time"]+"</td>";   
                html+="<td>"+date[i]["out_date"]+" - "+date[i]["out_time"]+"</td>"; 
                html+="<td><a href='./Admin/Generalcalendar/"+date[i]["user_id"]+"'><button type='submit'  class='btn btn-success'>Chi Tiết</button></a></td></tr>";   
                check_date.value=document.getElementById("time").value;            
            }
            table.insertAdjacentHTML('beforeend', html);
        }else{
            table.innerHTML="";
            check_date.value="";
        }
    });
}





