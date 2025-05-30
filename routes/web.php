<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Models\User;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/users', [UserController::class, 'fetchAndStoreUsers'])->name('users.index');


