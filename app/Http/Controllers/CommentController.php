<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Comment;
use App\Models\BlogPost;
use Illuminate\Support\Facades\Validator;

class CommentController extends Controller
{

    public function index()
    {
        // $comment = Comment::with('user')->with('blogPost')->get();
        $comment = Comment::all();
        return response()->json($comment);
    }

    public function store(Request $request, BlogPost $post)
    {
        $validator = Validator::make($request->all(), [
            'content' => 'required|string',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }

        $comment = $post->comments()->create([
            'content' => $request->content,
            'user_id' => $request->user()->id,
        ]);

        return response()->json($comment, 201);
    }
}
