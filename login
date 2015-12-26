2.	Login form
 
ON BACK BUTTON:
new welcome().setVisible(true);
this.setVisible(false);
ON LOGIN BUTTON:
String ed=ei.getText();
        String pw=new String(pd.getPassword());
        try {
      Class.forName("com.mysql.jdbc.Driver");
     Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mobile","root","raveena");. 
 Statement stmt=conn.createStatement();
String sql="Select PWD from register where EMAIL='"+ed+"';";
ResultSet rs=stmt.executeQuery(sql);
while (rs.next()){
String p=rs.getString("PWD");
if(p.equals(pw)){
            new select_items().setVisible(true);
            this.setVisible(false);
        }
        else dp.setText("INCORRECT ID OR PASSWORD");
}
rs.close();
    stmt.close();
     conn.close();  
        }
        catch(Exception e){dp.setText("WRONG PASSWORD");}
IMPORTED PACKAGES:
import java.sql.*;

