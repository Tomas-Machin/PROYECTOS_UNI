package grupo02;

import java.sql.*;

public class sakilaConnect {
    String url = "jdbc:mysql://localhost:3306/sakila"; // URL de la base de datos
    String usuario; // Usuario de la base de datos
    String password; // Contraseña de la base de datos
    Statement statement;
    ResultSet resultado;
    Connection conexion;

    /**
     * sakilaConnect miConexion = new sakilaConnect();
      --> long tiempoConsulta1 = miConexion.medirTiempoConsulta("SELECT actor_id, first_name,last_name FROM actor;");
     -->long tiempoConsulta2 = miConexion.medirTiempoConsulta("SELECT count(*) FROM actor;");
     * @param consulta
     * @param usuario1
     * @param password1
     * @return 
     */
    

    public long medirTiempoConsulta(String consulta, String usuario1, String password1) {
        long tiempo = 0;
        usuario = usuario1;
        password = password1;
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
    
    public void cerrarConexion() throws SQLException{
        statement.close();
        conexion.close();
    }
}
