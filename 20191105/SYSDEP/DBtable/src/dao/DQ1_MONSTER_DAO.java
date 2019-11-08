package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.DQ1_MONSTER;

public class DQ1_MONSTER_DAO {
 
  public List<DQ1_MONSTER> findAll() {

    Connection conn = null;
    List<DQ1_MONSTER> monsList = new ArrayList<DQ1_MONSTER>();

    try {

      // JDBC Driver Read
      Class.forName("org.h2.Driver");

      // データベースへ接続
      conn = DriverManager.getConnection(
          "jdbc:h2:file:C:/Users/b7069/test", "sa", "");

      // SELECT文を準備
      String sql = "SELECT * FROM DQ1_MONSTER";
      PreparedStatement pStmt = conn.prepareStatement(sql);

      // SELECTを実行し、結果表を取得
      ResultSet rs = pStmt.executeQuery();


      while (rs.next()) {
        String id = rs.getString("ID");
        String name = rs.getString("NAME");
        int atk = rs.getInt("ATK");
        int def = rs.getInt("DEF");
        int gold = rs.getInt("GOLD");
        int exp = rs.getInt("EXP");
        int hp = rs.getInt("HP");
        DQ1_MONSTER add = new DQ1_MONSTER(id, name, atk,def,gold,exp,hp);
        monsList.add(add);
      }
    } catch (SQLException e) {
      e.printStackTrace();
      return null;
    } catch (ClassNotFoundException e) {
      e.printStackTrace();
      return null;
    } finally {
     
      //データベース切断
      if (conn != null) {
        try {
          conn.close();
        } catch (SQLException e) {
          e.printStackTrace();
          return null;
        }
      }
    }
    return monsList;
  }
  public boolean remove(String id){
	   Connection conn = null;
	   
	   try {
		   Class.forName("org.h2.Driver");

		      conn = DriverManager.getConnection(
		          "jdbc:h2:file:C:/Users/b7069/test", "sa", "");

		      String sql = "DELETE FROM DQ1_MONSTER WHERE ID=?";
		      PreparedStatement pStmt = conn.prepareStatement(sql);
		      
		      pStmt.setString(1, id);
		      int r = pStmt.executeUpdate();
		      
		      return(r>0);

	   } catch (Exception e) {
		      e.printStackTrace();
		      return false;
		
	   } finally {
		      if (conn != null) {
		        try {
		          conn.close();
		        } catch (SQLException e) {
		          e.printStackTrace();
		          return false;
		        }
		      }
   }
 }
  public boolean add(String id,String name){
	     Connection conn = null;
	     
	     try {
	     Class.forName("org.h2.Driver");

	        // データベースへ接続
	        conn = DriverManager.getConnection(
	            "jdbc:h2:file:C:/Users/B7069/test", "sa", "");

	        // DELETE文を準備
	        String sql = "INSERT INTO DQ1_MONSTER (ID, NAME) VALUES (?,?)";
	        PreparedStatement pStmt = conn.prepareStatement(sql);
	        
	        pStmt.setString(1, id);
	        pStmt.setString(2, name);
	        
	        int r = pStmt.executeUpdate();
	        
	        return(r>0);

	     } catch (Exception e) {
	        e.printStackTrace();
	        return false;
	  
	     } finally {
	        //データベース切断
	        if (conn != null) {
	          try {
	            conn.close();
	          } catch (SQLException e) {
	            e.printStackTrace();
	            return false;
	          }
	        }
	     }
	    }
 
  
}
