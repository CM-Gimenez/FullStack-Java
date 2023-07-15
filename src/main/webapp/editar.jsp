<%@ page import="ar.com.codoacodo23069.Producto" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <jsp:include page="meta.jsp"></jsp:include>
</head>
<body>
    <jsp:include page="navbar.jsp"></jsp:include>
    <div class="container">
    <div class="container text-center">
        <h1>Agregar un nuevo Art&iacute;culo</h1>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <section>
                    
                    <!--<%=request.getContextPath()%> se convierte en el contexto
                    /web-app
                    -->
                    <% 
                    //bajo el dato del request, que guardo el controller
                    Producto prod = (Producto)request.getAttribute("producto");
                    {
                    %>
                    <form method="post" action="<%=request.getContextPath()%>/EditarProductoController?id=<%=prod.getId()%>">
                        <div class="mb-3">
                            <label for="exampleFormControlInput1" 
                                class="form-label">ID</label>
                            <input name="id" 
                                type="text" 
                                class="form-control" 
                                id="tituloid"
                                value ="<%=prod.getId()%>"
                                disabled>
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlInput1" 
                                class="form-label">Nombre</label>
                            <input name="nombre" 
                                type="text" 
                                class="form-control" 
                                id="tituloid"
                                value ="<%=prod.getTitulo()%>">
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlTextarea1" 
                                class="form-label">Precio
                            </label>
                            <input name="precio" 
                                type="number" 
                                class="form-control" 
                                id="precioid"
                                value="<%=prod.getPrecio()%>">
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlTextarea1" 
                                class="form-label">Im&aacute;gen
                            </label>
                            <input name="imagen" 
                                type="text" 
                                class="form-control" 
                                id="imagenid"
                                value ="<%=prod.getImagen()%>">
                        </div>
                       
                        <div class="mb-3">
                            <label for="autor" 
                                class="form-label">Autor
                            </label>
                            <input name="autor" 
                                type="text" 
                                class="form-control" 
                                id="autorid" 
                                value ="<%=prod.getAutor()%>">
                        </div>
                        <div class="container text-center">
                            <button class="btnalta">
                                Editar Registro
                            </button>
                        </div>
                    </form>
                    <% } %>
                </section>
            </div>
        </div>
    </div>



        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>

</html>