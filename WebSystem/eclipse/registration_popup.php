<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8"/>
  <link rel="stylesheet" href="css/popup.css">
  <title>学科・コース管理（ポップアップ）</title>
</head>
<body>
  <p class="thema">学科・コースデータ登録</p>
  <div class="themavar"></div>
  <div class="textwrap">
    <div class="choiceframe">
  <div class="datachoice">
  <p>登録データ選択</p>
  <form name="courseInfo" id="courseInfo" method="post" action="#">
    <input type="radio" name="number" value="学科" id="radio-0" checked onClick="changeDisabled()" required><label for="radio-0">学科</label>
  <br>
    <input type="radio" name="number" value="コース" id="radio-1" onClick="changeDisabled()"><label for="radio-1">コース</label>
  </div>
    </div>
  <br>

  <script type="text/javascript">

  function changeDisabled() {
      if ( document.courseInfo["number"][0].checked ) {
          document . courseInfo["subject_id"] . disabled = false;
          document . courseInfo["subject_name"] . disabled = false;
          document . courseInfo["course_id"] . disabled = true;
          document . courseInfo["course_name"] . disabled = true;
          document . courseInfo["studyyears"] . disabled = true;
          document . courseInfo["takingmodelname"] . disabled = true;
      } else {
          document . courseInfo["subject_id"] . disabled = true;
          document . courseInfo["subject_name"] . disabled = true;
          document . courseInfo["course_id"] . disabled = false;
          document . courseInfo["course_name"] . disabled = false;
          document . courseInfo["studyyears"] . disabled = false;
          document . courseInfo["takingmodelname"] . disabled = false;
      }
  }
  window.onload = changeDisabled;

  </script>
  <p>学科</p>
  <p>学科番号<input type="text" name="subject_id" id="subject_id"></p>
  <p>学科名称<input type="text" name="subject_name"id="subject_name"></p>
  <p>コース</p>
  <p>コース番号<input type="text" name="course_id" id="course_id"></p>
  <p>コース名称<input type="text" name="course_name" id="course_name"></p>
  <p>修学年限<input type="text" neme="studyyears" id="studyyears"></p>
  <p>履修モデル名称<input type="text" name="takingmodelname" id="takingmodelname"></p>
  </form>

</div>
  <button type="button">登録</button>
</body>

<script type="text/javascript" src="jqGrid/jquery-3.4.1.min.js" ></script>
<script type="text/javascript" src="jqGrid/js/jquery.jqGrid.min.js" ></script>
<script type="text/javascript" src="jqGrid/js/i18n/grid.locale-ja.js" ></script>
<script type="text/javascript" src="jqGrid/jquery-ui.js"></script>
<script type="text/javascript" src="js/db/registrationLoad.js" ></script>
</html>
