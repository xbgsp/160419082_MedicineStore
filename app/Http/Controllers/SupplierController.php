<?php

namespace App\Http\Controllers;

use App\Supplier;
use Illuminate\Http\Request;

class SupplierController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $listdata = Supplier::all();

        return view('supplier.index', compact('listdata'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view("supplier.create");
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = new Supplier;

        $file = $request->file('logo');
        $imgFolder = 'img';
        $imgFile = time()."_".$file->getClientOriginalName();
        $file->move($imgFolder, $imgFile);
        $data->logo=$imgFile;

        $data->name = $request->name;
        $data->address = $request->address;
        $data->save();
        return redirect('supplier')->with('status', 'Supplier is added');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Supplier  $supplier
     * @return \Illuminate\Http\Response
     */
    public function show(Supplier $supplier)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Supplier  $supplier
     * @return \Illuminate\Http\Response
     */
    public function edit(Supplier $supplier)
    {
        $data = $supplier;
        return view('supplier.edit', compact('data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Supplier  $supplier
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Supplier $supplier)
    {
        $supplier->name=$request->get('name');
        $supplier->address=$request->get('address');
        $supplier->save();
        return redirect()->route('supplier.index')->with('status', 'Supplier data is changed');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Supplier  $supplier
     * @return \Illuminate\Http\Response
     */
    public function destroy(Supplier $supplier)
    {
        $this->authorize('delete-permission', $supplier);

        try {
            $supplier->delete();
            return redirect()->route('supplier.index')->with('status', 'Data supplier berhasil dihapus');
        } catch (\PDOEXCEPTION $e) {
            $msg = "Data gagal dihapus. Pastikan data child sudah hilang atau tidak berhubungan";

            return redirect()->route('supplier.index')->with('error', $msg);
        }
    }

    public function softDeletes()
    {
        if ($supplier->trashed()) {
            
        }
    }

    public function getEditForm(Request $request)
    {
        $id=$request->get('id');
        $data=Supplier::find($id);
        return response()->json(array(
            'status'=>'oke',
            'msg'=>view('supplier.getEditForm', compact('data'))->render()
        ),200);
    }

    public function getEditForm2(Request $request)
    {
        $id=$request->get('id');
        $data=Supplier::find($id);
        return response()->json(array(
            'status'=>'oke',
            'msg'=>view('supplier.getEditForm2', compact('data'))->render()
        ),200);
    }

    public function saveData(Request $request)
    {
        $id=$request->get('id');
        $Supplier=Supplier::find($id);
        $Supplier->name=$request->get('name');
        $Supplier->address=$request->get('address');
        $Supplier->save();
        return response()->json(array(
            'status'=>'ok',
            'msg'=>'supplier data updated'
        ),200);
    }

    public function deleteData(Request $request)
    {
        try {
            $id=$request->get('id');
            $Supplier=Supplier::find($id);
            $Supplier->delete();
            return response()->json(array(
                'status'=>'ok',
                'msg'=>'supplier data deleted'
            ),200);
        }
        catch(\PDOException $e) {
            return response()->json(array(
                'status'=>'error',
                'msg'=>'supplier is not deleted. It may be used in the product'
            ),200);
        }
    }

    public function saveDataField(Request $request)
    {
        $id = $request->get('id');
        $fname = $request->get('fname');
        $value = $request->get('value');

        $Supplier = Supplier::find($id);
        $Supplier->$fname = $value;
        $Supplier->save();
        return response()->json(array(
            'status'=>'ok',
            'msg'=>'supplier data updated'
        ),200);
    }

    public function changeLogo(Request $request)
    {
        $id = $request->get('id');
        $file = $request->file('logo');
        $imgFolder = 'img';
        $imgFile = time()."_".$file->getClientOriginalName();
        $file->move($imgFolder, $imgFile);
        $Supplier = Supplier::find($id);
        $Supplier->logo = $imgFile;
        $Supplier->save();
        return redirect('supplier')->with('status', 'Supplier logo is changed');
    }
}
