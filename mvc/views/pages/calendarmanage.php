<?php
    $calendar=json_decode($data["Calendar"], true);
    $event=json_decode($data["Event"], true);
    if($calendar!=null){
        for($i=0; $i<count($calendar); $i++){
            $title=$calendar[$i]["title"];
            $in_date=$calendar[$i]["in_date"];
            $in_time=$calendar[$i]["in_time"];
            $out_date=$calendar[$i]["out_date"];
            $out_time=$calendar[$i]["out_time"];
            $temp[$i] = [
                "title" => $title." - ".$in_time,
                "start" => $in_date
            ];
            if($i==count($calendar)-1 && $event!=null){
              $i++;
              $j=0;
              for($i=$i; $i < count($event) +count($calendar); $i++){
                $title=$event[$j]["event_name"];
                $start = explode(" ", $event[$j]["time"]);
                $temp[$i] = [
                    "title" => $title." - ".$start[1],
                    "start" => $start[0]
                ];
                $j++;
              }
            }
        }
        
    }
    else{
        $temp[0] = [
                "title" => "",
                "start" => ""
        ];
    }
    $ev=json_encode($temp);
    
?>  
<link href='./public/lib/main.css' rel='stylesheet' />
<script src='./public/lib/main.js'></script>
<script>
    document.addEventListener('DOMContentLoaded', function() {
    var initialLocaleCode = 'vi';
    var localeSelectorEl = document.getElementById('locale-selector');
    var calendarEl = document.getElementById('calendar');
    var today = new Date();
    var strDate = 'Y-m-d';
    strDate=strDate.replace('Y', today.getFullYear());
    if(today.getMonth()+1 < 10){
      strDate=strDate.replace('m', ""+today.getMonth()+1)
    }else{
      strDate=strDate.replace('m', today.getMonth()+1)
    }
    if(today.getDate()<10){
      strDate=strDate.replace('d', "0"+today.getDate());
    }else{
      strDate=strDate.replace('d', today.getDate());
    }
    var calendar = new FullCalendar.Calendar(calendarEl, {
      headerToolbar: {
        left: 'prevYear,prev,next,nextYear today',
        center: 'title',
        right: 'dayGridMonth,dayGridWeek,dayGridDay'
      },
      locale: initialLocaleCode,
      initialDate: strDate,
      navLinks: true, // can click day/week names to navigate views
      editable: true,
      dayMaxEvents: true, // allow "more" link when too many events
      events:
        <?=$ev?>

    });

    calendar.render();
     // build the locale selector's options
    calendar.getAvailableLocaleCodes().forEach(function(localeCode) {
        var optionEl = document.createElement('option');
        optionEl.value = localeCode;
        optionEl.selected = localeCode == initialLocaleCode;
        optionEl.innerText = localeCode;
        localeSelectorEl.appendChild(optionEl);
    });

  // when the selected option changes, dynamically change the calendar option
  localeSelectorEl.addEventListener('change', function() {
    if (this.value) {
      calendar.setOption('locale', this.value);
    }
  });

  });

</script>
<style>
  #calendar {
    z-index: 0;
    width: 100%;
    max-width: 1100px;
    margin: 0 auto;

  }

</style>


<div class="container-fluid">
    <div class="card shadow">
      <div id='calendar'></div>
    </div>
</div>    
