<?php

use App\Http\Controllers\Web\AuthController;
use App\Http\Controllers\Web\BlogPostController;
use App\Http\Controllers\Web\CommentController;
use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

// Authentication routes
Route::get('register', [AuthController::class, 'showRegistrationForm'])->name('register.form');
Route::post('register', [AuthController::class, 'register']);
Route::get('login', [AuthController::class, 'showLoginForm'])->name('login');
Route::post('login', [AuthController::class, 'login']);
Route::post('logout', [AuthController::class, 'logout'])->name('logout');

// Blog Post routes
Route::middleware('auth:sanctum')->group(function () {
    Route::get('posts', [BlogPostController::class, 'index'])->name('posts.index');
    Route::get('posts/create', [BlogPostController::class, 'create'])->name('posts.create');
    Route::post('posts', [BlogPostController::class, 'store'])->name('posts.store');
    Route::get('posts/{post}', [BlogPostController::class, 'show'])->name('posts.show');
    Route::get('posts/{post}/edit', [BlogPostController::class, 'edit'])->name('posts.edit');
    Route::put('posts/{post}', [BlogPostController::class, 'update'])->name('posts.update');
    Route::delete('posts/{post}', [BlogPostController::class, 'destroy'])->name('posts.destroy');

    // Comment routes
    Route::post('posts/{post}/comments', [CommentController::class, 'store'])->name('comments.store');
});
