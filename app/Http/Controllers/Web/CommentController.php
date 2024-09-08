<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Comment;
use App\Models\BlogPost;

class CommentController extends Controller
{
    public function store(Request $request, BlogPost $post)
    {
        $request->validate([
            'content' => 'required|string',
        ]);

        $post->comments()->create([
            'content' => $request->input('content'),
            'blog_post_id' => $post->id,
            'user_id' => auth()->id(),
        ]);

        return redirect()->route('posts.show', $post);
    }
}
