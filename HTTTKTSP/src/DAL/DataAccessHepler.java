/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAL;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author DuyHuu
 */
public class DataAccessHepler {
    protected Connection con;
    String HostName = "localhost";
    String port = "1433";
    String dbName = "  ";
    String user = "sa";
    String pass = "12345";
    String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver"; 
    String URL = "jdbc:sqlserver://"+ HostName +":"+port+";database="+dbName;
    
    public void getConnect() {
        try {  
            Class.forName(driver);
            con = DriverManager.getConnection(URL, user, pass);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DataAccessHepler.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(DataAccessHepler.class.getName()).log(Level.SEVERE, null, ex);
        }
            
          
    }
    
    public void getClose(){
        try {
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(DataAccessHepler.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
