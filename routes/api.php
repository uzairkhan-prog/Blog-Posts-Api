<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\BlogPostController;
use App\Http\Controllers\CommentController;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

Route::post('register', [AuthController::class, 'register']);
Route::post('login', [AuthController::class, 'login']);

Route::get('users', [AuthController::class, 'getUserssAPi']);
Route::get('login', [AuthController::class, 'showLoginForm'])->name('login');

Route::get('posts', [BlogPostController::class, 'index']);
Route::post('posts', [BlogPostController::class, 'store']);
Route::get('posts/{post}', [BlogPostController::class, 'show']);
Route::put('posts/{post}', [BlogPostController::class, 'update']);
Route::delete('posts/{post}', [BlogPostController::class, 'destroy']);

Route::post('posts/{post}/comments', [CommentController::class, 'store']);
Route::get('comments', [CommentController::class, 'index']);

// With Login Api's
// Route::middleware('auth:sanctum')->group(function () {
//     Route::get('posts', [BlogPostController::class, 'index']);
//     Route::post('posts', [BlogPostController::class, 'store']);
//     Route::get('posts/{post}', [BlogPostController::class, 'show']);
//     Route::put('posts/{post}', [BlogPostController::class, 'update']);
//     Route::delete('posts/{post}', [BlogPostController::class, 'destroy']);
//     Route::post('posts/{post}/comments', [CommentController::class, 'store']);
// });

