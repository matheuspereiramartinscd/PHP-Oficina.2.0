@extends('layout')
@section('content')
<style>
    .container {
      max-width: 450px;
    }
    .push-top {
      margin-top: 50px;
    }
</style>
/**Pagina de edição de orçamentos do sistema Oficina 2.0
* @author Matheus Pereira Martins
* @version 1.0
* @since 20/08/2023
*/

<div class="card push-top">
  <div class="card-header">
    Editar & Atualizar
  </div>
  <div class="card-body">
    @if ($errors->any())
      <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
              <li>{{ $error }}</li>
            @endforeach
        </ul>
      </div><br />
    @endif
      <form method="post" action="{{ route('orcamentos.update', $orcamento->id) }}">
          <div class="form-group">
              @csrf
              @method('PATCH')
              <label for="cliente">Nome</label>
              <input type="text" class="form-control" name="cliente"/>
          </div>
          <div class="form-group">
              <label for="vendedor">Vendedor</label>
              <input type="text" class="form-control" name="vendedor"/>
          </div>
          <div class="form-group">
              <label for="descricao">Descricao</label>
              <input type="text" class="form-control" name="descricao"/>
          </div>
          <div class="form-group">
              <label for="password">Data</label>
              <input type="text" class="form-control" name="data"/>
          </div>
          <div class="form-group">
              <label for="password">Hora</label>
              <input type="text" class="form-control" name="hora"/>
          </div>
          <div class="form-group">
              <label for="password">Valor orçado em R$</label>
              <input type="number" step="0.01"class="form-control" name="valor"/>
          </div>
          <button type="submit" class="btn btn-block btn-danger">Atualizar orçamento</button>
      </form>
  </div>
</div>
@endsection