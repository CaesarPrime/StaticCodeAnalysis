package Connection;

import java.sql.Connection;
import java.sql.DriverManager;

import com.mysql.jdbc.Driver;

/**
 * Created by caesar on 4/30/17.
 */
public class Connector implements ConnectionData{
    private static Connection con = null;


    static{
        try{
            System.out.print(driver);
            Class.forName(driver);
            con = DriverManager.getConnection(connection_url, username, password);
        }catch(Exception r){
            System.out.println("Connection error!" + r.toString());
        }
    }

    public static Connection getCon(){
        return con;
    }
}