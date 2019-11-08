<%@page import="model.MenuTable"%>
<%@page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>テーブルサンプル</title>
<style type="text/css">
.side-menu {
 	position: fixed;
	top: 20vh;
	right:0;
	z-index:1;
}
</style>
</head>
<body>
<div class="side-menu">
  <ul class="menu">
    <li><a href="menu.html">授業管理</a></li>
    <li><a href="classmate.html">生徒管理</a></li>
    <li><a href="teacher.html">教員管理</a></li>
    <li><a href="room.html">教室管理</a></li>
    <li><a href="syusseki.html">出席管理</a></li>
    <li><a href="gakka.html">学科・コース管理</a></li>
  </ul>
</div>
<input type="button" value="授業の新規作成">
<form action="" method="">
<table border="0">
  <tr>
    <tr><td><input type="radio" name="radio" value="select" checked="checked">条件を指定<br></td></tr>
	<tr>
	<td>年度</td>
	<td>
	<select name="年度">
	<option value="1">1999</option>
	<option value="2" selected>2000</option>
	<option value="3">2001</option>
	</select>年</td>
	</tr>
	<tr>
	<td>種別</td>
	<td>
	<select name="種別">
	<option value="1">就職関連</option>
	<option value="2" selected>プログラミング</option>
	<option value="3">その他</option>
	</select></td>
	</tr>
	<tr>
	<td>実施クラス</td>
	<td>
	<select name="クラス">
	<option value="1">1-A</option>
	<option value="2" selected>1-B</option>
	<option value="3">1-C</option>
	</select><br>
	<select name="期間">
	<option value="1">前期</option>
	<option value="2" selected>後期</option>
	<option value="3">通年</option>
	</select>
	</td>
    </tr>
    <tr>
     <td><input type="radio" name="radio" value="select">授業番号直接入力<br>
     <input type="text" value="">
     </td>
    </tr>
    
    <tr>
     <td>
      <br>
      <input type="submit" value="絞り込み">
      <input type="reset" value="リセット">
     </td>
    </tr>

</table>
 <%  MenuTable hoge = new MenuTable();
  hoge.setId(1);
  hoge.setHoge("test");
  request.setAttribute("hoge", hoge);%>
  <div>id:${hoge.id}</div>
  <div>hoge:${hoge.hoge}</div>
  <!-- if文 -->
  <div>id=1の時：${hoge.id == 1 ? 'True' : 'False'}</div>
  <div>id=2の時：${hoge.id == 2 ? 'True' : 'False'}</div>

</body>
</html>