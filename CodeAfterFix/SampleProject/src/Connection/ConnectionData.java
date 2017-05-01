package Connection;

import com.mysql.jdbc.Driver;

/**
 * Created by caesar on 4/30/17.
 */
public interface ConnectionData {
    String driver="com.mysql.jdbc.Driver";
    String connection_url="jdbc:mysql://localhost:3306/sse_assignment_1";
    String username="root";
    String password="toor";
}
