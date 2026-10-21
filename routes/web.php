<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AlumniController;

/*
|--------------------------------------------------------------------------
| Web Routes - Paguyuban Lembar Data Alumni AAL
|--------------------------------------------------------------------------
*/

Route::get('/', [AlumniController::class, 'index'])->name('alumni.index');
Route::resource('alumni', AlumniController::class);
