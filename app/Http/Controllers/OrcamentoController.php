<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Orcamento;

class OrcamentoController extends Controller
{

    public function index(Request $request)
    {

        

        $orcamento = Orcamento::all();
        return view('welcome', compact('orcamento'));
    }


    

    /**
    * Mostra o formulário utilizado para cadastrar orçamentos
    *
    * @author Matheus Pereira Martins
    */
    public function create()
    {
        return view('create');
    }

   /**
    * Utilizado para salvar os dados obtidos no formulário na database.
    *
    * @author Matheus Pereira Martins
    */
    public function store(Request $request)
    {



        $storeData = $request->validate([
            'cliente' => 'required|max:255',
            'vendedor' => 'required|max:255',
            'descricao' => 'required|max:255',
            'data' => 'required|date_format:Y/m/d',
            'hora' => 'required|date_format:H:i',
            'valor' => 'required|numeric',
        ],
        [
            'cliente.required' => 'Você precisa digitar o nome do cliente',
            'vendedor.required' => 'Você precisa digitar o nome do vendedor',
            'descricao.required' => 'Você precisa digitar uma descricao válida',
            'data.required' => 'Você precisa digitar a data do orçamento no formato ano/mês/dia',
            'hora.required' => 'Você precisa digitar a hora do orçamento no formato hora:minutos',
            'valor.required' => 'Você precisa digitar o valor do orçamento'


        ]
    
    );
        $orcamento = Orcamento::create($storeData);
        return back()->with('success', 'Orçamento cadastrado com sucesso!');
        
    }

    





    /**
    * Utilizado para editar os dados salvos na database.
    *
    * @author Matheus Pereira Martins
    */
    public function edit(string $id)
    {
        $orcamento = Orcamento::findOrFail($id);
        return view('edit', compact('orcamento'));
    }

    /**
    * Utilizado para editar os dados salvos na database.
    *
    * @author Matheus Pereira Martins
    */
    public function update(Request $request, string $id)
    {
        $updateData = $request->validate([
            'cliente' => 'required|max:255',
            'vendedor' => 'required|max:255',
            'descricao' => 'required|max:255',
            'data' => 'required|date_format:Y/m/d',
            'hora' => 'required|date_format:H:i',
            'valor' => 'required|numeric',
        ],
        [
            'cliente.required' => 'Você precisa digitar o nome do cliente',
            'vendedor.required' => 'Você precisa digitar o nome do vendedor',
            'descricao.required' => 'Você precisa digitar uma descricao válida',
            'data.required' => 'Você precisa digitar a data do orçamento no formato ano/mês/dia',
            'hora.required' => 'Você precisa digitar a hora do orçamento no formato hora:minutos',
            'valor.required' => 'Você precisa digitar o valor do orçamento',

        ]
    
    );

        Orcamento::whereId($id)->update($updateData);
        return redirect('/')->with('completed', 'Orcamento has been updated');
    }
    
    public function redirect(){
        return redirect('/')->with('completed', 'Orcamento has been updated');
    }

    /**
    * Utilizado para deletar os dados salvos na database.
    *
    * @author Matheus Pereira Martins
    */
    public function destroy(string $id)
    {
        $orcamento = Orcamento::findOrFail($id);
        $orcamento->delete();
        return redirect('/')->with('completed', 'Orcamento has been deleted');
    }
}
