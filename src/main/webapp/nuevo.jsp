<!DOCTYPE html>
<html lang="es">
<head>
    <jsp:include page="meta.jsp"></jsp:include>
</head>
<body>
    <jsp:include page="navbar.jsp"></jsp:include>
    <div class="container divBody">
    <div class="container-fluid text-center">
        <h1>Agregar un nuevo Art&iacute;culo</h1>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <section>
                    
                    <!--<%=request.getContextPath()%> se convierte en el contexto
                    /web-app
                    -->
                    <form method="post" action="<%=request.getContextPath()%>/AltaProductoController">
                        <div class="mb-3">
                            <label for="exampleFormControlInput1" 
                                class="form-label">Nombre</label>
                            <input name="nombre" 
                                type="text" 
                                class="form-control" 
                                id="exampleFormControlInput1"
                                placeholder="Nombre"
                                maxlength="50">
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlTextarea1" 
                                class="form-label">Precio
                            </label>
                            <input name="precio" 
                                type="number" 
                                class="form-control" 
                                id="exampleFormControlTextarea1">
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlTextarea1" 
                                class="form-label">Im&aacute;gen
                            </label>
                            <input name="imagen" 
                                type="file" 
                                class="form-control" 
                                id="exampleFormControlTextarea1">
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlTextarea1" 
                                class="form-label">C&oacute;digo
                            </label>
                            <input name="codigo" 
                                type="text" 
                                class="form-control" 
                                id="exampleFormControlTextarea1" 
                                maxlength="7">
                        </div>
                        <div class="mb-3">
                            <label for="autor" 
                                class="form-label">Autor
                            </label>
                            <input name="autor" 
                                type="text" 
                                class="form-control" 
                                id="autor" 
                                maxlength="50">
                        </div>
                        <div class="container text-center">
                            <button class="btnalta">
                                Dar de alta
                            </button>
                        </div>
                    </form>
                </section>
            </div>
        </div>
    </div>



        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>

</html>