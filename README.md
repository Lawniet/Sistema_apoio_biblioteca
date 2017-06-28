<!DOCTYPE html>
<html>
    <head>
        <title>Sistema de apoio à biblioteca</title>
                <script src="https://code.jquery.com/jquery-3.1.1.js"></script>
        <!-- Latest compiled and minified CSS --> <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

 <!-- Latest compiled and minified JavaScript --> <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script> 

<style>
.navbar-toggle {
  border: none;
  background: transparent !important;
}
.navbar-toggle:hover {
  background: transparent !important;
}
.navbar-toggle .icon-bar {
  width: 22px;
  transition: all 0.2s;
}
.navbar-toggle .top-bar {
  transform: rotate(45deg);
  transform-origin: 10% 10%;
}
.navbar-toggle .middle-bar {
  opacity: 0;
}
.navbar-toggle .bottom-bar {
  transform: rotate(-45deg);
  transform-origin: 10% 90%;
}
.navbar-toggle.collapsed .top-bar {
  transform: rotate(0);
}
.navbar-toggle.collapsed .middle-bar {
  opacity: 1;
}
.navbar-toggle.collapsed .bottom-bar {
  transform: rotate(0);
} 
</style>

    </head>
    <body>
        <div class="container">
  <!-- Static navbar -->
  <nav class="navbar navbar-default">
    <div class="container-fluid">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
          <span class="sr-only">painel de navegação</span>
          <span class="icon-bar top-bar"></span>
          <span class="icon-bar middle-bar"></span>
          <span class="icon-bar bottom-bar"></span>
        </button>
        <a class="navbar-brand" href="#">Sistema de Apoio à Biblioteca</a>
      </div>
      <div id="navbar" class="navbar-collapse collapse">
        <ul class="nav navbar-nav">
          <li class="active"><a href="file:///E:/Trabalho%20de%20BD2/site/html/principal.html">Principal</a></li>
          <li><a href="#">Sobre</a></li>
          <li><a href="#">Contato</a></li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Ver <span class="caret"></span></a>
            <ul class="dropdown-menu" role="menu">
              <li><a href="file:///E:/Trabalho%20de%20BD2/site/html/bib.html">Ver a biblioteca</a></li>
              <li><a href="#">ver minhas pendências</a></li>
              <li><a href="#">fazer um empréstimo</a></li>
              <li class="divider"></li>
              <li class="dropdown-header">Empréstimos</li>
              <li><a href="#">pendencias</a></li>
              <li><a href="#">histórico</a></li>
            </ul>
          </li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
          <li class="active"><a href="file:///E:/Trabalho%20de%20BD2/site/html/login.html">Login <span class="sr-only">(current)</span></a></li>
          <li><a href="#">SAB</a></li>
          <li><a href="#">.FAQ</a></li>
        </ul>
      </div><!--/.nav-collapse -->
    </div><!--/.container-fluid -->
  </nav>

  <!-- Main component for a primary marketing message or call to action -->
  <div class="jumbotron">
    <h1>Sistema de apoio à biblioteca</h1>
    <p>Site operacional do Sistema de Apoio à Biblioteca (SAB) desenvolvido para a disciplina de Banco de Dados 2 ministrada pelo professor Raimundo Cláudio da Silva Vasconcelos.</p>
    <p>
      <a class="btn btn-lg btn-primary" href="../../components/#navbar" role="button">Verificar lista de livros &raquo;</a>
    </p>
  </div>
</div> <!-- /container -->
    </body>
</html>
