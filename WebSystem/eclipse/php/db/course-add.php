<?php
// dbconnection.phpからdb情報を取得
require "dbconnection.php";

$oraid = return_oraid();
$orapw = return_orapw();
$oraConnString = return_oraConnString();
$oraLang = return_oraLang();

$conn = oci_connect($oraid, $orapw, $oraConnString, $oraLang);

// 接続ができない時にエラー表示
if (!$conn) {
 $e = oci_error();
 trigger_error(htmlentities($e['message'], ENT_QUOTES), E_USER_ERROR);
}

$sqlString = "INSERT INTO m_subject VALUES ('S04','総合情報メデ')";
$sqlString2 = "INSERT INTO m_course VALUES ('C004', 'ITスペシャルサ', 'ST', '3', 'S01')";

// 一つ目のsqlStringの実行
$statementId = oci_parse($conn, $sqlString);
$r = oci_execute($statementId, OCI_NO_AUTO_COMMIT);

// SQL文がおかしい時
if(!$r){
    $e = oci_error($statementId);
    trigger_error(htmlentities($e['message']), E_USER_ERROR);
}

// 二つ目のsqlStringの実行
$statementId2 = oci_parse($conn, $sqlString2);
$r = oci_execute($statementId2, OCI_NO_AUTO_COMMIT);

// SQL文がおかしい時
if(!$r){
    $e = oci_error($statementId2);
    oci_rollback($conn); // 一つ目と二つ目のSQL文の実行をキャンセル(ロールバック)
    trigger_error(htmlentities($e['message']), E_USER_ERROR);
}

$r = oci_commit($conn);
if(!$r) {
    $e = oci_error($conn);
    trigger_error(htmlentities($e['message']), E_USER_ERROR);
}

// リソースの開放
oci_free_statement($statementId);
//oci_free_statement($statementId2);

// db接続終了
oci_close($conn);

?>
