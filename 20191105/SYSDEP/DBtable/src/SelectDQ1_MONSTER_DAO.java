import java.util.List;

import model.DQ1_MONSTER;
import dao.DQ1_MONSTER_DAO;

public class SelectDQ1_MONSTER_DAO{
  public static void main(String[] args) {

    // employee�e�[�u���̑S���R�[�h���擾
    DQ1_MONSTER_DAO monsDAO = new DQ1_MONSTER_DAO();
    List<DQ1_MONSTER> monsList = monsDAO.findAll();

    // �擾�������R�[�h�̓��e���o��
    for (DQ1_MONSTER dq1mons : monsList) {
      System.out.println("ID:" + dq1mons.getId());
      System.out.println("���O:" + dq1mons.getName());
      System.out.println("HP:" + dq1mons.getHp());
      System.out.println("�U����:" + dq1mons.getAtk());
      System.out.println("�����:" + dq1mons.getDef());
      System.out.println("�S�[���h:" + dq1mons.getGold());
      System.out.println("�o���l:" + dq1mons.getExp()+"\n");
    }
  }
}