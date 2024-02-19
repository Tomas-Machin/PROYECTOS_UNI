package dominio;

public class Persona{   // pasos 1-3 del ejercicio 8
  private int annoDeNacimiento = 0; 
  // ejercicio 9 parte 2
  private Localidad lugarDeNacimiento; // al imprimir esto cuando no tiene valor java le asigna un valor predeterminado null
  private String nombre; //poniendo public java podra acceder a ellos aun estando en diferentes carpetas
  public int getAnnoDeNacimiento(){
      return annoDeNacimiento;
  }
  public void setAnnoDeNacimiento(int annoDeNacimiento){
      this.annoDeNacimiento = annoDeNacimiento;
  }
  
  public Localidad getLugarDeNacimiento(){
      return lugarDeNacimiento;    
  }
  public void setLugarDeNacimiento(Localidad lugarDeNacimiento){
        this.lugarDeNacimiento = lugarDeNacimiento;
  }
  
  public String getNombre(){
      return nombre;
  }
  public void setNombre(String nombre){
      this.nombre = nombre;
  }
  
  public int calcularEdad(){ // paso 5 ejercicio 8
      int edadActual = 2021 - annoDeNacimiento;
      return edadActual;
      // se puede hacer: (return 2021 - annoDeNacimiento;) y asi ahorrar mas lineas
      
    }
  public String informacion(){
      String datos = nombre + " nacio el año " + annoDeNacimiento;
      datos = datos + " en " + lugarDeNacimiento.getNombre(); // tmb puedes saltarte lo de escribir infomracion = informacion pero en la linea de antes no hay ";"
      return datos;   
  }
}