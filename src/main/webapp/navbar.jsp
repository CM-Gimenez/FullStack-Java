<nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
      <a class="navbar-brand nav-link" href="<%=request.getContextPath()%>">
        <img src="./assets/codoacodo.png" alt="Logo" width="60" height="40"
            class="d-inline-block align-text-top text-light" />
        Inicio</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="nuevo.jsp">Nuevo</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="<%=request.getContextPath()%>/ListadoProductosController">Listado</a>
          </li>              
        </ul>
        <form class="d-flex" role="search" method="get" action="<%=request.getContextPath()%>/BuscarProductoController">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Buscar" name="id">
          <button class="btn btnsearch" type="submit">Buscar</button>
        </form>
      </div>
    </div>
  </nav>