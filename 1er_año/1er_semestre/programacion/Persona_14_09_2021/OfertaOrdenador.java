    // paso 2
public class OfertaOrdenador{
    private int precioInicial;
    private int descuento;
    // paso 5
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
    //paso 2
    public int calcularPrecioFinal(){
        return getPrecioInicial() - getDescuento();
    }
}