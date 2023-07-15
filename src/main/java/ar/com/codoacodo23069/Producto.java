//paquete: agrupo clases
package ar.com.codoacodo23069;

import java.time.LocalDate;//api de fecha de java

//la clase Producto (puede ser como un tipo de dato )
public class Producto {
    
    //atributos
    private long id;
    private String titulo;
    private double precio;
    private String imagen; // - 
    private LocalDate fecha;
    private String codigo;
    private String autor;


    //constructor/es
    /*public Producto(String titulo, String autor, double precio, String imagen, int id,String codigo) {
        //nace con estos valores
        this.id = id;

        init(titulo, autor, precio, imagen, codigo);
    }*/
    
    public Producto() {
        
    }        
    public Producto(String titulo, double precio, String imagen, String autor) {
        
        this.titulo = titulo;
        this.precio = precio;
        this.imagen = imagen;
        this.autor = autor;
    }

    public Producto(long id,String titulo, double precio, String imagen, String autor) {
        this.id = id;
        this.titulo = titulo;
        this.precio = precio;
        this.imagen = imagen;
        this.autor = autor;
    }



    public Producto(long id, String titulo, double precio, String imagen, LocalDate localDate, String codigo,
            String autor) {
        this.id = id;
        init(titulo, precio, imagen, codigo, autor);
    }

    //SOBRECARGA: constructor = POLIMORFISMO
    public Producto(String titulo, String autor, double precio, String imagen,String codigo) {
        init(titulo, precio, imagen, codigo, autor);
    }

    private void init(String titulo, double precio, String imagen, String codigo, String autor) {
        this.titulo = titulo;
        this.autor = autor;
        this.precio = precio;
        this.imagen = imagen;
        this.fecha = LocalDate.now();//definiendo la fehca de nacimiento
        this.codigo = codigo;
    }

    //metodos
    

    String obtenerImagen() {
       return this.imagen;
    }

    @Override
    public String toString() {
        return "Producto [id=" + id + ", titulo=" + titulo + ", precio=" + precio + ", imagen=" + imagen + ", autor="
                + autor + "]";
    }
    void mas10x100() {
        precio = precio * 1.1;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public LocalDate getFecha() {
        return this.fecha;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }
    
    //no implementamos el setter de fecha!!
}
