package grupo02;
import java.sql.*;
/**
 * worldConnect worldConexion = new worldConnect();
      --> long tiempoConsulta1 = worldConexion.medirTiempoConsulta("SELECT * FROM country;");
 * @author ppere
 */
public class worldConnect {
    String url = "jdbc:mysql://localhost:3306/world";  
    String usuario; 
    String password; 
    Statement statement;
    ResultSet resultado;
    Connection conexion;
    
    public long medirTiempoConsulta(String consulta, String usuario2, String password2) {
        long tiempo = 0;
        usuario = usuario2;
        password = password2;

        try {

            conexion = DriverManager.getConnection(url, usuario, password);
            statement = conexion.createStatement();
            long inicio = System.nanoTime();
            resultado = statement.executeQuery(consulta);
            long fin = System.nanoTime();
            tiempo = fin - inicio;

            System.out.println("Tiempo de ejecución de la consulta: " + tiempo + " ms");

        } catch (SQLException e) {
            System.err.println("Error al conectar a la base de datos: " + e.getMessage());
        }

        return tiempo;
    }
    
}
