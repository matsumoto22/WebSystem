$(function() {
 
  // button要素をクリックしたら発動
  $('button').click(function() {
 
    //テーブルを呼び出す
    $('p').html('<div id="users>'+
'<form name="table" action="" method="post">'+
    		 '<table border="1">'+

    		 '<thead>'+
    		    '<tr>'+
    		      '<th><input type="checkbox" name="all" onClick="AllChecked();" /></th>'+
    		      '<th class="sort" data-sort="id">授業番号</th>'+
    		      '<th class="sort" data-sort="name">授業名</th>'+
    		      '<th class="sort" data-sort="nendo">年度</th>'+
    		      '<th>期間</th>'+
    		      '<th class="sort" data-sort="author">担当</th>'+
    		      '<th>教室1</th>'+
    		      '<th>教室2</th>'+
    		      '<th>詳細</th>'+
    		    '</tr>'+
		'</thead>'+
		'<tbody class="list">'+
    		    '<tr>'+
    		      '<td><input type="checkbox" name="hantei" value="check"></td>'+
    		      '<td class="id">11111111</td>'+
    		      '<td class="name"><input type="text" value="DBA"></td>'+
    		      '<td class="nendo">2015</td>'+
    		      '<td>前期</td>'+
    		      '<td class="author">谷川</td>'+
    		      '<td>7-D</td>'+
    		      '<td>-</td>'+
    		      '<td><input type="button" value="詳細"></td>'+
    		    '</tr>'+
    		    '<tr>'+
    		      '<td><input type="checkbox" name="hantei" value="check"></td>'+
    		      '<td class="id">11111112</td>'+
    		      '<td class="name"><input type="text" value="Java基礎"></td>'+
    		      '<td class="nendo">2015</td>'+
    		      '<td>前期</td>'+
    		      '<td class="author">谷川</td>'+
    		      '<td>8-C</td>'+
    		      '<td>-</td>'+
    		      '<td><input type="button" value="詳細"></td>'+
    		    '</tr>'+
		'</tbody>'+
    		  '</table>'+
    		  '<br>'+
    		    '<td>'+
    		      '<input type="reset" value="変更を破棄">'+
    		      '<button type="button">保存</button>'+  
    		    '</td>'+
    		  '</form>'+
'</div>');


 
  });
});