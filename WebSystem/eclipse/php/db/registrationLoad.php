<?php
// dbconnection.phpからdb情報を取得
require "dbconnection.php"; // 他のphp呼び出しには宣言が必要
$oraid = return_oraid();
$orapw = return_orapw();
$oraConnString = return_oraConnString();
$oraLang = return_oraLang();

$if = 1;
$oraConn = oci_connect($oraid, $orapw, $oraConnString, $oraLang);
if (!$oraConn) {
 $e = oci_error();
 trigger_error(htmlentities($e['message'], ENT_QUOTES), E_USER_ERROR);
}

$sqlString =
'SELECT
m_subject_id
FROM
m_subject';

$statementId = oci_parse($oraConn, $sqlString);
oci_execute($statementId);
$array = array();
while ($row = oci_fetch_array($statementId, OCI_ASSOC+OCI_RETURN_NULLS)) {
 foreach ($row as $item) {
     $array = array_merge($array, array($item));
 }
}
// リソースの開放
oci_free_statement($statementId);

// db接続終了
oci_close($oraConn);
$json = json_encode($array, JSON_UNESCAPED_UNICODE);
echo $json;
?>
