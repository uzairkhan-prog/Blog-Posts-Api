<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\BlogPost;
use Illuminate\Support\Facades\Validator;

class BlogPostController extends Controller
{

    public function index()
    {
        $posts = BlogPost::with('user')->get();
        return response()->json($posts);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'title' => 'required|string|max:255',
            'content' => 'required|string',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }

        $post = BlogPost::create([
            'title' => $request->title,
            'content' => $request->content,
            'user_id' => $request->user_id,
        ]);

        return response()->json($post, 201);
    }

    public function show(BlogPost $post)
    {
        return response()->json($post);
    }

    public function update(Request $request, BlogPost $post)
    {
        $validator = Validator::make($request->all(), [
            'title' => 'sometimes|required|string|max:255',
            'content' => 'sometimes|required|string',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }

        $post->update($request->only('title', 'content'));

        return response()->json($post, 200);
    }

    public function destroy(BlogPost $post)
    {
        $post->delete();

        return response()->json(null, 204);
    }
}
