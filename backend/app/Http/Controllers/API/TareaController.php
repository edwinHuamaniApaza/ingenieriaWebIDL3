<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
Use App\Models\Tarea;
Use Log;

class TareaController extends Controller
{

    public function getAll(){
      $data = Tarea::get();
      return response()->json($data, 200);
    }

    public function create(Request $request){


      $data['titulo'] = $request['titulo'];
      $data['descripcion'] = $request['descripcion'];
      $data['completado'] = $request['completado'];
     
      


      Tarea::create($data);
      return response()->json([
          'message' => "Successfully created",
          'success' => true
      ], 200);
    }

    public function delete($id){
      $res = Tarea::find($id)->delete();
      return response()->json([
          'message' => "Successfully deleted",
          'success' => true
      ], 200);
    }

    public function get($id){
      $data = Tarea::find($id);
      return response()->json($data, 200);
    }

    public function update(Request $request,$id){

     
      $data['titulo'] = $request['titulo'];
      $data['descripcion'] = $request['descripcion'];
      $data['completado'] = $request['completado'];

      Tarea::find($id)->update($data);
      return response()->json([
          'message' => "Successfully updated",
          'success' => true
      ], 200);
    }
}
