package dominio; 
public class ModeloOrdenador {
    private String identificadorDeModelo;
    private String memoriaRam;
    private String discoDuro;
    
    public String getIdentificadorDeModelo(){
        return identificadorDeModelo;
    }
    public void setIdentificadorDeModelo(String identificadorDeModelo){
        this.identificadorDeModelo = identificadorDeModelo;
    }
    
    public String getMemoriaRam(){
        return memoriaRam;
    }
    public void setMemoriaRam(String memoriaRam){
        this.memoriaRam = memoriaRam;
    }
    
    public String getDiscoDuro(){
        return discoDuro;
    }
    public void setDiscoDuro(String discoDuro){
        this.discoDuro = discoDuro;
    }
    // paso 4   
    public String toString(){ // equivalente a en vez de toString llamarlo como quiera
        String informacionModelo = "el modelo es " + identificadorDeModelo;
        informacionModelo += "/nLa ram es " + memoriaRam;
        informacionModelo += "/nEl disco duro es " + discoDuro;
        return informacionModelo;
    }
    
}