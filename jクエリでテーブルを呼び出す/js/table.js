$(function() {
 
  // button要素をクリックしたら発動
  $('button').click(function() {
 
    //テキストを書き換える
    $('p').html('<form name="table" action="" method="post">'+
    		 '<table border="1">'+
    		 '<br>'+
    		    '<tr>'+
    		      '<th><input type="checkbox" name="all" onClick="AllChecked();" /></th>'+
    		      '<th>授業番号</th>'+
    		      '<th>授業名</th>'+
    		      '<th>年度</th>'+
    		      '<th>期間</th>'+
    		      '<th>担当</th>'+
    		      '<th>教室1</th>'+
    		      '<th>教室2</th>'+
    		      '<th>詳細</th>'+
    		    '</tr>'+
    		    '<tr>'+
    		      '<td><input type="checkbox" name="hantei" value="check"></td>'+
    		      '<td>11111111</td>'+
    		      '<td><input type="text" value="DBA"></td>'+
    		      '<td>2015</td>'+
    		      '<td>前期</td>'+
    		      '<td>谷川</td>'+
    		      '<td>7-D</td>'+
    		      '<td>-</td>'+
    		      '<td><input type="button" value="詳細"></td>'+
    		    '</tr>'+
    		    '<tr>'+
    		      '<td><input type="checkbox" name="hantei" value="check"></td>'+
    		      '<td>11111112</td>'+
    		      '<td><input type="text" value="Java基礎"></td>'+
    		      '<td>2015</td>'+
    		      '<td>前期</td>'+
    		      '<td>谷川</td>'+
    		      '<td>8-C</td>'+
    		      '<td>-</td>'+
    		      '<td><input type="button" value="詳細"></td>'+
    		    '</tr>'+
    		  '</table>'+
    		  '<br>'+
    		    '<td>'+
    		      '<input type="reset" value="変更を破棄">'+
    		      '<button type="button">保存</button>'+  
    		    '</td>'+
    		  '</form>');
 
  });
});
