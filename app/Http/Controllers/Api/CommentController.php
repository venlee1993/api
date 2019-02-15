<?php

namespace App\Http\Controllers\Api;

use App\Model\Comment;
use App\Model\Post;
use App\Http\Controllers\Controller;

class CommentController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth:api')->except(['list']);
    }

    public function list(Post $post)
    {
        $comments = $post->comments()->with('user', 'replies', 'replies.user','replies.replyer')->get();
        return response()->json($comments);
    }

    public function store()
    {
        $user_id = auth('api')->user()->id;
        $payload = request(['content', 'post_id']);

        Comment::create(array_merge($payload, compact('user_id')));
        return response()->json(['msg' => 'comment success.', 'code' => 200]);
    }
}
