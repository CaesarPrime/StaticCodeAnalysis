package Login_Sources;

import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import Connection.*;
import org.apache.commons.codec.digest.DigestUtils;

import static org.apache.commons.codec.digest.DigestUtils.md5Hex;

/**
 * Created by caesar on 4/30/17.
 */
public class Login_Approvals {
    public static boolean validate(Login login){
        boolean status = false;

        try{
            Connection con = Connector.getCon();

            String username = login.getUsername();
            String password = login.getPassword();

            byte[] data = password.getBytes("UTF-8");
            String digest = md5Hex(data);

            System.out.println(digest);


            //PreparedStatement ps = con.prepareStatement("select 1 from Login where username = ?  and password = ? ") ;
            String qry = "select 1 from Login where username ='"+ username+"' and password = '"+password+"'";
            Statement st = con.createStatement();
            //ps.setString(1,username);
            //ps.setString(2, String.valueOf(digest));

            ResultSet rs = st.executeQuery(qry);

            System.out.println(String.valueOf(digest));
            status = rs.next();
            /*
            while(rs.next()){
                //move to the next page
            }
            */
            //st.close();
            rs.close();
            con.close();

        }catch(Exception e){
            System.out.println("Error!!" + e.toString());
        }
        return status;
    }
}