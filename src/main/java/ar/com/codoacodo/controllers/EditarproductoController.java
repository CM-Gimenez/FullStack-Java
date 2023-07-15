package ar.com.codoacodo.controllers;

import java.io.IOException;
import java.sql.SQLException;

import ar.com.codoacodo.dao.DAO;
import ar.com.codoacodo.dao.impl.MysqlDaoImpl;
import ar.com.codoacodo23069.Producto;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/EditarProductoController")
public class EditarproductoController extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String id = (req.getParameter("id"));
        
        
        DAO dao = new MysqlDaoImpl();

        try {
            Producto producto = dao.getById(Long.parseLong(id));

            req.setAttribute("producto", producto);

            System.out.println(producto.toString());
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (NumberFormatException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        getServletContext().getRequestDispatcher("/editar.jsp").forward(req, resp);
    }
    

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        String id = req.getParameter("id");
        String newTitulo = req.getParameter("nombre");
        double newPrecio = Double.parseDouble(req.getParameter("precio"));
        String newImagen = req.getParameter("imagen");
        String newAutor = req.getParameter("autor");
        
        
       
        DAO dao = new MysqlDaoImpl();

        try {
            Producto newProducto =dao.getById(Long.parseLong(id));
            newProducto.setTitulo(newTitulo);
            newProducto.setPrecio(newPrecio);
            newProducto.setImagen(newImagen);
            newProducto.setAutor(newAutor);

            dao.update(newProducto);
            System.out.println(newProducto.toString());
            getServletContext().getRequestDispatcher("/ListadoProductosController").forward(req, resp);


        } catch (Exception e) {
            e.printStackTrace();
        }
        

        
    }

    

    
}
