public class Principal{
    public static void main(String[] args){
    ModeloOrdenador Pavillon = new ModeloOrdenador();
    ModeloOrdenador Vaio = new ModeloOrdenador();
    // paso 6
    Pavillon.setIdentificadorDeModelo("Pavillon");
    Pavillon.setMemoriaRam("8 GB Ram");
    Pavillon.setDiscoDuro("500 GB");
    Pavillon.setMarca("HP");
    Pavillon.setModeloDeProcesador("Intel Core i3-3217U");
    Pavillon.setNombre("HP Pavillon");
    System.out.println(Pavillon.getNombre() + " de modelo " + Pavillon.getIdentificadorDeModelo() + " de la marca " + Pavillon.getMarca()
    + " tiene: una memoria de " + Pavillon.getMemoriaRam() + " una capacidad de " + Pavillon.getDiscoDuro() + " y un procesador de " 
    + Pavillon.getModeloDeProcesador());
    
    Vaio.setIdentificadorDeModelo("Vaio");
    Vaio.setMemoriaRam("4 GB Ram");
    Vaio.setDiscoDuro("128 GB");
    Vaio.setMarca("Sony");
    Vaio.setModeloDeProcesador("Intel Core i5-4200U");
    Vaio.setNombre("Sony Vaio");
    System.out.println(Vaio.getNombre() + " de modelo " + Vaio.getIdentificadorDeModelo() + " de la marca " + Vaio.getMarca() 
    + " tiene: una memoria de " + Vaio.getMemoriaRam() + " una capacidad de " + Vaio.getDiscoDuro() + " y un procesador de " 
    + Vaio.getModeloDeProcesador());
    
    OfertaOrdenador lol = new OfertaOrdenador();
    Pavillon.setTieneOrdenadorOfertado(lol);
    
    }
}
