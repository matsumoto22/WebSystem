package model;

public class DQ1_MONSTER {

  private String id;
  private String name;
  private int atk;
  private int def;
  private int gold;
  private int exp;
  private int hp;

  public DQ1_MONSTER(String id, String name, int atk,int def,int gold,int exp,int hp) {
    this.id = id;
    this.name = name;
    this.atk = atk;
    this.def = def;
    this.gold =gold;
    this.exp = exp;
    this.hp = hp;
  }

  public String getId() {
    return id;
  }

  public String getName() {
    return name;
  }

  public int getAtk() {
    return atk;
  }

  public int getDef() {
		return def;
	}
  public int getGold() {
		return gold;
	}
  public int getExp() {
		return exp;
	}
  public int getHp() {
		return hp;
	}
  public void setName(String name) {
	    this.name = name;
	  }
  public void setId(String id) {
	    this.id = id;
	  }

}