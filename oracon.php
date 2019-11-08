<?php


//クラスマスタの場合　(PHPやapacheをインストールしてね)
$conn = oci_connect('ユーザー名', 'パスワード', 'localhost/接続先');
if (!$conn) {
    $e = oci_error();
    trigger_error(htmlentities($e['message'], ENT_QUOTES), E_USER_ERROR);
}

$stid = oci_parse($conn, 'SELECT * FROM m_class');//SQL文
oci_execute($stid);

echo "<table border='1'>\n";//テーブル作成

while ($row = oci_fetch_array($stid, OCI_ASSOC+OCI_RETURN_NULLS)) {
    echo "<tr>\n";
    foreach ($row as $item) {
        echo "    <td>" . ($item !== null ? htmlentities($item, ENT_QUOTES) : "&nbsp;") . "</td>\n";
    }
    echo "</tr>\n";
}
echo "</table>\n";

?>