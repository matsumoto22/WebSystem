
<?php
//データベース接続
$server = "localhost";
$userName = "root";
$password = "";
$dbName = "testtable";

$mysqli = new mysqli($server, $userName, $password,$dbName);

if ($mysqli->connect_error){
    echo $mysqli->connect_error;
    exit();
}else{
    $mysqli->set_charset("UTF8");
}

$sql = "SELECT * FROM m_classroomform;";

$result = $mysqli -> query($sql);

//クエリー失敗
if(!$result) {
    echo $mysqli->error;
    exit();
}

//レコード件数
$row_count = $result->num_rows;

//連想配列で取得
while($row = $result->fetch_array(MYSQLI_ASSOC)){
    $rows[] = $row;
}

//結果セットを解放
$result->free();

// データベース切断
$mysqli->close();

?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>テーブルサンプル</title>
</head>
<body>
  <?php
  //htmlファイルを読み込み
   include('Layout.html');
  ?>
<form action="room.php" method="post">
<table border="0">
  <tr>
  <tr>
    <td><input type="radio" name="radio" value="selecttype" checked="checked">教室タイプから探す
    <select name="roomtype">
<?php
foreach($rows as $row){

?>

	<option value="<?php echo $row['m_classroomform_name'];?>"><?php echo $row['m_classroomform_name']; ?></option>
<?php
}
?>
	</select>
	</tr>

	  <tr>
    <td><input type="radio" name="radio" value="selectAdmission">入学年度
    <select name="Admission">
    	<option value="2019" selected>2019</option>
    	<option value="2018">2018</option>
    	<option value="2017">2017</option>
    	<option value="2016">2016</option>
    	<option value="2015">2015</option>
    	<option value="2014">2014</option>
    	<option value="2013">2013</option>
    	<option value="2012">2012</option>
    	<option value="2011">2011</option>
    </select>年度
	</tr>
    </td>
      <tr>
    <td></td>
    <td>
      <input type="submit" name="send" value="絞り込み">
      <input type="reset" value="リセット">
    </td>
  </tr>
  </tr>
</table>
</form>
<?php
if(isset($_POST['send']))
{
echo $_POST['roomtype'];
include 'roomtable.php';
}

?>
</body>
</html>
