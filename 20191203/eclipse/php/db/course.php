<?php
$text = $_POST['a'];
$if = 1;
$oraid = 'web';
$orapw = 'oic';
$oraConnString = '172.24.39.108:1521/Attendances.srv.oic';
$oraLang = 'AL32UTF8';
$oraConn = oci_connect($oraid, $orapw, $oraConnString, $oraLang);
if (!$oraConn) {
 $e = oci_error();
 trigger_error(htmlentities($e['message'], ENT_QUOTES), E_USER_ERROR);
}
$sqlString = 'SELECT m_s.m_subject_id,m_s.m_subject_name,m_c.m_course_id,m_c.m_course_name,m_c.m_course_takingmodelname,m_c.m_course_studyyears FROM m_subject m_s join m_course m_c on m_s.m_subject_id = m_c.m_subject_id';
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
