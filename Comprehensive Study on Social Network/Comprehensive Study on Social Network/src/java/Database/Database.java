/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Database;

 import java.sql.*;

/**
 *
 * @author istrox
 */
public class Database {
  public Database()
  {
      try
      {
         Class.forName("com.mysql.jdbc.Driver");
      }
      catch(Exception e)
      {
          
      }
  }
  public Connection connect()throws SQLException
  {
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mental_disorders_detection","root","");
  return con;
  }
  public ResultSet exquery(String query1)throws Exception
    {
       Connection con=connect();
       Statement st=con.createStatement();
       ResultSet rs=st.executeQuery(query1);
       return rs;
    }
    public int exupdate(String query2)throws Exception
    {
        Connection con=connect();
        Statement st=con.createStatement();
        int i=st.executeUpdate(query2);
        return i;
    }
  
    
}
    
