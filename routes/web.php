<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/
use App\Http\Controllers\QuizQController;
Route::get('/', [QuizQController::class, 'showQuiz'])->name('showQuiz');
Route::post('/save-result', [QuizQController::class, 'saveResult'])->name('showQuiz');


