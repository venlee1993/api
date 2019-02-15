<?php

namespace App\Http\Controllers\Api;

use App\Model\Post;
use App\Http\Controllers\Controller;

class PostController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:api')->except(['list']);
    }

    public function list()
    {
        $post = Post::where('status', 1)->with('column')->take(10)->get();
        return response()->json($post);
    }

    public function show(Post $post)
    {
        return response()->json($post);
    }

    public function store()
    {
        $user_id = auth('api')->user()->id;
        $params  = request(['column_id', 'title', 'tag', 'content']);
        Post::create(array_merge($params, compact('user_id')));
        return response()->json(['msg' => 'pulish success.', 'code' => 1], 201);
    }
}
