<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\TareaController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});



Route::prefix('tarea')->group(function () {
    Route::get('/',[ TareaController::class, 'getAll']);
    Route::post('/',[ TareaController::class, 'create']);
    Route::delete('/{id}',[ TareaController::class, 'delete']);
    Route::get('/{id}',[ TareaController::class, 'get']);
    Route::put('/{id}',[ TareaController::class, 'update']);
});

