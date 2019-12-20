<!DOCTYPE html>
<meta charset="UTF-8">
<head>
    <!-- テーブル表示用jqGridの読み込み -->
    <link type="text/css" media="screen" href="jqGrid/jquery-ui.min.css" rel="stylesheet" />
    <link type="text/css" media="screen" href="jqGrid/jquery-ui.css" rel="stylesheet" />
    <link type="text/css" media="screen" href="jqGrid/css/ui.jqgrid.css" rel="stylesheet" />
    <meta charset="UTF-8">
<title> 学科・コース - Web出席管理システム</title>

<!-- 共通Layoutの読み込み -->
<?php
require('../Layout/Layout.php');
?>

<div class="titlebar">
    学科・コース管理
    <div class="buttonWrapper">
        <button onclick="openWin()" class="registration_b" type="button" name="registration">
            <input class="registration_b_img" type="image" src="../Layout/image/registration.png" alt="登録" />
                登録
        </button>
        <!-- 【ここから】新しいウィンドウでブラウザを起動し、ポップアップ表示 -->
        <script>
        var myWindow;
        function openWin() {
            myWindow = window.open('registration_popup.php', 'myWindow', 'top=100,left=700,width=500,height=800');
            // myWindow.document.write("教室データ登録<hr>");
        }
        </script>
        <!-- 【ここまで】新しいウィンドウでブラウザを起動し、ポップアップ表示 -->
    </div>
</div>

<!-- 検索項目 -->
<div class="searchbox">
    <form id="studentInfo">
        <div class="searchbox_txtwrapper">
            <p class="searchbox_txt1">検索項目</p>
            <p class="searchbox_txt2">学科名称
            <input type="text" class="subject_txtbox" name="subject_txtbox">
            <input type="text" class="subjectid_txtbox" name="subjectid_txtbox"></p>
            <p class="searchbox_txt3">コース名称
            <input type="text" class="course_txtbox" name="course_txtbox">
            <input type="text" class="courseid_txtbox" name="courseid_txtbox"></p>
            <p class="searchbox_txt3">修学年限
            <input type="text" class="studyyears_txtbox" name="studyyears_txtbox"></p>
            <button class="search_b" type="button" id="search_studentInfo" name="search">検索</button>
        </div>
    </form>
</div>

<!-- 検索結果表示 -->
<div class="searchresult">
    <table id="list">
    </table>
    <div id ="pager1"></div>
    <div id="statusbar"></div>
</div>

<!-- Layout.php終了タグ -->
        </div>
        </main>

    <script type="text/javascript" src="jqGrid/jquery-3.4.1.min.js" ></script>
    <script type="text/javascript" src="jqGrid/js/jquery.jqGrid.min.js" ></script>
    <script type="text/javascript" src="jqGrid/js/i18n/grid.locale-ja.js" ></script>
    <script type="text/javascript" src="jqGrid/jquery-ui.js"></script>
    <script type="text/javascript" src="jqGridSet.js"></script>
    <script type="text/javascript" src="js/db/course.js"></script>
    </body>
</html>
