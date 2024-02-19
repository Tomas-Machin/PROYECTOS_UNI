package aplicacion;
import dominio.ModeloOrdenador;
import dominio.OfertaOrdenador;
public class Principal{
    public void inicio(){
        ModeloOrdenador portatil = new ModeloOrdenador();
        portatil.setIdentificadorDeModelo("HP");
        portatil.setMemoriaRam("16 gb");
        portatil.setDiscoDuro("256 gb");
        System.out.println(portatil);
        OfertaOrdenador oferta = new OfertaOrdenador();
        oferta.setPrecioInicial(1000);
        oferta.setDescuento(100);
        System.out.println(oferta);
        oferta.setTieneOrdenadorOfertado(portatil);
    }
}