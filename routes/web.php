<?php
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\OrcamentoController;
use App\Http\Controllers\PesquisaController;
use App\Http\Controllers\Controller;
use App\Http\Controllers\PostsController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/



Route::get('/', [PesquisaController::class,'index'])->name('search');
Route::resource('orcamentos', OrcamentoController::class);
