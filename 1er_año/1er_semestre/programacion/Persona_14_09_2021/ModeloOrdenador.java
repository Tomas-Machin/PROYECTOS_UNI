public class ModeloOrdenador{   // ejercicio 14
        // paso 1 
        private String identificadorDeModelo;
        private String memoriaRam;
        private String discoDuro;
        private OfertaOrdenador tieneOrdenadorOfertado;
        // paso 3
        private String marca;
        private String modeloDeProcesador;
        private String nombre;
        // paso 4
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
        
        public String getMarca(){
            return marca;
        }
        public void setMarca(String marca){
            this.marca = marca;
        }
        
        public String getModeloDeProcesador(){
            return modeloDeProcesador;
        }
        public void setModeloDeProcesador(String modeloDeProcesador){
            this.modeloDeProcesador = modeloDeProcesador;
        }
        
        public String getNombre(){
            return nombre;
        }
        public void setNombre(String nombre){
            this.nombre = nombre;
        }
        
        public OfertaOrdenador getTieneOrdenadorOfertado(){
            return tieneOrdenadorOfertado;
        }
        public void setTieneOrdenadorOfertado(OfertaOrdenador tieneOrdenadorOfertado){
            this.tieneOrdenadorOfertado = tieneOrdenadorOfertado;
        }
}