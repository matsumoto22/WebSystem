$(document).ready( function(){
    var formDatas = document.getElementById("courseInfo");
    var postDatas = new FormData(formDatas);

	var XHR = new XMLHttpRequest();

    // 生徒の検索(DB接続)を行うphpファイルを呼び出す
    XHR.open("POST","./php/db/registrationLoad.php",true);
  XHR.send(postDatas);

    XHR.onreadystatechange = function(){
    	if(XHR.readyState == 4 && XHR.status == 200){
    		// 検索結果のデータをJson形式から配列に変換
        	let studentDate = JSON.parse(XHR.responseText);

          var str = studentDate[0];

          // 0文字目から4文字分を指定
          let result = str.substr( 0, 1 );
          let number = str.substr( 1, 2);

          let a = Number(number) + 1;
          a = String(a);

          if(a.length == 1){
            a = '0' + a;
          }
          a = result + a;

          console.log( result );
          console.log( a );
    		for(let i = 0; i < Object.keys(studentDate).length; i++){
            $("#subject_id").val(a);
        	}
    	};
	}
});
