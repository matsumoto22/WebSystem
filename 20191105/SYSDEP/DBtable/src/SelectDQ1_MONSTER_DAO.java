import java.util.List;

import model.DQ1_MONSTER;
import dao.DQ1_MONSTER_DAO;

public class SelectDQ1_MONSTER_DAO{
  public static void main(String[] args) {

    // employeeテーブルの全レコードを取得
    DQ1_MONSTER_DAO monsDAO = new DQ1_MONSTER_DAO();
    List<DQ1_MONSTER> monsList = monsDAO.findAll();

    // 取得したレコードの内容を出力
    for (DQ1_MONSTER dq1mons : monsList) {
      System.out.println("ID:" + dq1mons.getId());
      System.out.println("名前:" + dq1mons.getName());
      System.out.println("HP:" + dq1mons.getHp());
      System.out.println("攻撃力:" + dq1mons.getAtk());
      System.out.println("守備力:" + dq1mons.getDef());
      System.out.println("ゴールド:" + dq1mons.getGold());
      System.out.println("経験値:" + dq1mons.getExp()+"\n");
    }
  }
}