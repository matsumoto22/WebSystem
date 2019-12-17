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
  <div class="textwrap_all">
    <div class="choiceframe">
  <p class="datachoice_txt">登録データ選択</p>
  <form name="courseInfo" id="courseInfo" method="post" action="#">
    <label for="radio-0"><input type="radio" name="number" value="学科" id="radio-0" checked onClick="changeDisabled()" required>学科</label>
  <br>
    <label for="radio-1"><input type="radio" name="number" value="コース" id="radio-1" onClick="changeDisabled()">コース</label>
    </div>
  <br>

  <script type="text/javascript">

  function changeDisabled() {
      if ( document.courseInfo["number"][0].checked ) {
          document . courseInfo["subject_id"] . disabled = true;
          document . courseInfo["subject_name"] . disabled = false;
          document . courseInfo["course_id"] . disabled = true;
          document . courseInfo["course_name"] . disabled = true;
          document . courseInfo["studyyears"] . disabled = true;
          document . courseInfo["takingmodelname"] . disabled = true;
      } else {
          document . courseInfo["subject_id"] . disabled = true;
          document . courseInfo["subject_name"] . disabled = true;
          document . courseInfo["course_id"] . disabled = true;
          document . courseInfo["course_name"] . disabled = false;
          document . courseInfo["studyyears"] . disabled = false;
          document . courseInfo["takingmodelname"] . disabled = false;
      }
  }
  window.onload = changeDisabled;

  </script>
  <div class="textwrap_part">
    <p class="subject_txt">学科</p>
    <div class="subjectwrap_txt">
      <p class="subject_id_txt">学科番号<input type="text" name="subject_id" id="subject_id"></p>
      <p class="subject_name_txt">学科名称<input type="text" name="subject_name"id="subject_name"></p>
    </div>
    <p class="course_txt">コース</p>
    <div class="coursewrap_txt">
      <p class="course_id_txt">コース番号<input type="text" name="course_id" id="course_id"></p>
      <p class="course_name_txt">コース名称<input type="text" name="course_name" id="course_name"></p>
      <p class="studyyears_txt">修学年限<input type="text" neme="studyyears" id="studyyears"></p>
      <p class="takingmodelname_txt">履修モデル名称<input type="text" name="takingmodelname" id="takingmodelname"></p>
    </div>
  </form>
  </div>
</div>
  <button type="button" class="registration_b">登録</button>
</body>

<script type="text/javascript" src="jqGrid/jquery-3.4.1.min.js" ></script>
<script type="text/javascript" src="jqGrid/js/jquery.jqGrid.min.js" ></script>
<script type="text/javascript" src="jqGrid/js/i18n/grid.locale-ja.js" ></script>
<script type="text/javascript" src="jqGrid/jquery-ui.js"></script>
<script type="text/javascript" src="js/db/registrationLoad.js" ></script>
</html>
