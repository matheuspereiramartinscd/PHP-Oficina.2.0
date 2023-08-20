<?php
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\OrcamentoController;
use App\Http\Controllers\PesquisaController;
use App\Http\Controllers\Controller;
use App\Http\Controllers\PostsController;

/**Rotas para a pagina de pesquisa e cadastro utilizando os controladores Pesquisa Controler e OrcamentoController
* @author Matheus Pereira Martins
* @version 1.0
* @since 20/08/2023
*/


Route::get('/', [PesquisaController::class,'index'])->name('search');
Route::resource('orcamentos', OrcamentoController::class);
