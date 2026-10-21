<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AlumniController;

/*
|--------------------------------------------------------------------------
| API Routes - Paguyuban Lembar Data Alumni AAL
|--------------------------------------------------------------------------
*/

Route::apiResource('alumni', AlumniController::class);
