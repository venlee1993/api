<?php

namespace App\Http\Controllers\Api;

use App\Model\Comment;
use App\Model\Like;
use App\Model\Post;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class LikeController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:api');
    }

    public function postLike()
    {
        $post_id = request('post_id');
        $like_status = request('status');
        $user_id = auth('api')->user()->id;
        $model = new Post();
        $post = $model->where('id', $post_id)->first();
        if (!$like_status) {
            $post->likes()->destory(['user_id' => $user_id]);
        }
        $post->likes()->create(['user_id' => $user_id]);
        return response()->json(['msg' => 'success.', 'code' => 1]);
    }

    public function commentLike()
    {
        $comment_id = request('comment_id');
        $user_id = auth('api')->user()->id;
        $model = new Comment();
        $comment = $model->where('id', $comment_id)->first();
        $comment->likes()->create(['user_id' => $user_id]);
        return response()->json(['msg' => 'success.', 'code' => 1]);
    }

}
