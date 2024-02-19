package dominio;

public class OfertaOrdenador{
    private int precioInicial;
    private int descuento;
    private ModeloOrdenador tieneOrdenadorOfertado;
    
    public int getPrecioInicial(){
        return precioInicial;
    }
    public void setPrecioInicial(int precioInicial){
        this.precioInicial = precioInicial;
    }
    
    public int getDescuento(){
        return descuento;
    }
    public void setDescuento(int descuento){
        this.descuento = descuento;
    }
    
    public ModeloOrdenador getTieneOrdenadorOfertado(){
        return tieneOrdenadorOfertado;
    }
    public void setTieneOrdenadorOfertado(ModeloOrdenador tieneOrdenadorOfertado){
        this.tieneOrdenadorOfertado = tieneOrdenadorOfertado;
    }

    public int calcularPrecioFinal(){
        return precioInicial - descuento;
    }
    // paso 5
    public String toString(){
        String informacionOferta = "el siguiente ordenador esta de oferta/n " + tieneOrdenadorOfertado;// llama al metodo toString de ModeloOrdenador
        informacionOferta += "el precio inicial es " + precioInicial;
        informacionOferta += "/El descuento es de " + descuento;
        informacionOferta += "/El precio final es de " + calcularPrecioFinal();
        informacionOferta += "/";
        return informacionOferta;
    }
    
}
