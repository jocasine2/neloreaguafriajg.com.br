<style type="text/css">
.form-signin {
    max-width: 330px;
    padding: 15px;
    margin: 0 auto;
    background: #337ab7;
    color: #fff;
    border-radius: 10px;
}

.btn-primary {
    background-color: #53adfb;
}
</style>

    <div class="container">
      <form class="form-signin" method="POST" action="principal">
        <h2 class="form-signin-heading">Login</h2>
        <label for="inputEmail" class="sr-only">E-mail</label>
        <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required="" autofocus="">
        <label for="inputPassword" class="sr-only">Senha</label>
        <input type="password" id="inputPassword" class="form-control" placeholder="Password" required="">
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Lembrar-me
          </label>
        </div>
        <button  class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>
      </form>
    </div> <!-- /container -->
