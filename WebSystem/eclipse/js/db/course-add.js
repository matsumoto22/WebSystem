window.addEventListener("load",function(){
    document.getElementById("add-roomInfo").addEventListener("click",function(){
        var XHR = new XMLHttpRequest();
        var subject_name =  document.getElementById('m_subject_name').value;

        var postData = new FormData();

        postData.append('subject_name', m_subject_name);

        // 生徒の検索(DB接続)を行うphpファイルを呼び出す
        XHR.open("POST","./php/db/room-add.php",true);

        XHR.send(postData);

        XHR.onreadystatechange = function(){
         if(XHR.readyState == 4 && XHR.status == 200){


              }
            }
    });

})
