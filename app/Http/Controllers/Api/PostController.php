<?php

namespace App\Http\Controllers\Api;

use App\Model\Post;
use App\Http\Controllers\Controller;

class PostController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:api')->except(['list','show']);
    }

    public function list()
    {
        $post = Post::where('status', 1)->with('column')->orderBy('created_at', 'desc')->take(10)->get();
        return response()->json($post);
    }

    public function show($id)
    {
        $post = new Post();
        $data = $post->where('id', $id)->with('user')->first();
        return response()->json($data);
    }

    public function store()
    {
        $user_id = auth('api')->user()->id;
        $params = request(['column_id', 'title', 'tag', 'content']);
        $post = Post::create(array_merge($params, compact('user_id')));
        return response()->json(['msg' => 'pulish success.', 'code' => 1, 'post_id' => $post->id], 201);
    }
}
