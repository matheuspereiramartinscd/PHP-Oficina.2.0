@extends('layout')



@section('content')




<style>

    .container{
        
    }
    .my-active span{
        background-color: #5cb85c !important;
        color: white !important;
        border-color: #5cb85c !important;
    }
    ul.pager>li {
        display: inline-flex;
        padding: 5px;
    }

    .custom{
        margin-top:30px;
      
    }

    .center{
        position:relative;
        padding-top:30px;
        left:35%;
    }
</style>

/**Pagina de pesquisa de orçamentos do sistema Oficina 2.0
* @author Matheus Pereira Martins
* @version 1.0
* @since 20/08/2023
*/

/**Formulário de pesquisa
* @author Matheus Pereira Martins
* @version 1.0
* @since 20/08/2023
*/
<div class="container custom ">

    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card ">
                <div class="card-header ">Pesquisar orçamentos</div>
                 <div class="card-body">
                    <form action="{{ route('search') }}" method="get">
                        <div class="row">
                            <div class="col-md-4">
                                <input type="text" class="form-control mb-3" placeholder="Digite o nome do cliente" name="q">
                            </div>
                            <div class="col-md-4">
                                <input type="text" class="form-control mb-3" placeholder="Digite o nome do vendedor" name="w">
                            </div>
                            <div class="col-md-2">
                                <input type="text" class="form-control mb-3" placeholder="Digite a data" name="e">
                            </div>
                            <div class="col-md-2">
                                <input type="submit" class="form-control mb-3" value="Procurar">
                            </div>
                       
                        
                    </form>
                    
                
                    /**Tabela com os resultados
                    * @author Matheus Pereira Martins
                    * @version 1.0
                    * @since 20/08/2023
                    */
                        <table style="width: 100%">
                        <thead>
                        <td>ID</td>
                        <td>Cliente</td>
                        <td>Vendedor</td>
                        <td>Descricao</td>
                        <td>Data</td>
                        <td>Hora</td>
                        <td>Valor orçado</td>
                        </thead>
                        <tbody>
                        
                            @foreach($users as $user)
                            <tr>
                            <td>{{$user->id}}</td>
                            <td>{{$user->cliente}}</td>
                            <td>{{$user->vendedor}}</td>
                            <td>{{$user->descricao}}</td>
                            <td>{{$user->data}}</td>
                            <td>{{$user->hora}}</td>
                            <td>R$ {{$user->valor}}</td>
                            <td class="text-center">
                            
                            @foreach($orcamento as $orcamentos)
                            @endforeach
                <a href="{{ route('orcamentos.edit', $orcamentos->id)}}" class="btn btn-primary btn-sm"">Editar</a>
                <form action="{{ route('orcamentos.destroy', $orcamentos->id)}}" method="post" style="display: inline-block">
                    @csrf
                    @method('DELETE')
              
                    <button class="btn btn-danger btn-sm"" type="submit">Deletar</button>
                   
                    @endforeach
                    
                  </form>
            </td>
                            </tr>
                     
                            
                        </tbody>
                    </table>
                    <div class="center">
                        {{  $users->withQueryString()->links() }}
</div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@push('script')
@endpush