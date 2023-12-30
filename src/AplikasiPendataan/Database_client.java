package AplikasiPendataan;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class Database_client {

    private static Connection Database_client;
    private static String password;

    public static Connection getKoneksi() {
        if (Database_client == null) {
            try {
                String url = new String();
                String user = new String();
                url = "jdbc:mysql://localhost:3306/cucuwo";
                user = "root";
                password = "";
                DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
                Database_client = DriverManager.getConnection(url, user, password);
                JOptionPane.showMessageDialog(null, "Koneksi Database Berhasil");
            } catch (SQLException ex) {
                JOptionPane.showMessageDialog(null, "Koneksi Database Tidak Berhasil");
            }
        }
        return Database_client;
    }
}
