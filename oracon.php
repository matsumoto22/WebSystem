<?php


//�N���X�}�X�^�̏ꍇ�@(PHP��apache���C���X�g�[�����Ă�)
$conn = oci_connect('���[�U�[��', '�p�X���[�h', 'localhost/�ڑ���');
if (!$conn) {
    $e = oci_error();
    trigger_error(htmlentities($e['message'], ENT_QUOTES), E_USER_ERROR);
}

$stid = oci_parse($conn, 'SELECT * FROM m_class');//SQL��
oci_execute($stid);

echo "<table border='1'>\n";//�e�[�u���쐬

while ($row = oci_fetch_array($stid, OCI_ASSOC+OCI_RETURN_NULLS)) {
    echo "<tr>\n";
    foreach ($row as $item) {
        echo "    <td>" . ($item !== null ? htmlentities($item, ENT_QUOTES) : "&nbsp;") . "</td>\n";
    }
    echo "</tr>\n";
}
echo "</table>\n";

?>