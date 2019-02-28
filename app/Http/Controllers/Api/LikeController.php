<?php

namespace App\Http\Controllers\Api;

use App\Model\Comment;
use App\Model\Like;
use App\Model\Post;
use App\Model\Reply;
use App\Http\Controllers\Controller;

class LikeController extends Controller
{
    private $like = null;

    public function __construct()
    {
        $this->middleware('auth:api');
        $like = new Like();
        $like->user_id = auth('auth:api')->user()->id;
    }

    public function postLike(Post $post)
    {
        $post->likes()->save($this->like);
        return response()->json(['msg' => 'success.', 'code' => 1]);
    }

    public function commentLike(Comment $comment)
    {
        $comment->likes()->save($this->like);
        return response()->json(['msg' => 'success.', 'code' => 1]);
    }

    public function postUnlike(Post $post)
    {
        $post->likes()->destory($this->like);
        return response()->json(['msg' => 'success.', 'code' => 1]);
    }

    public function CommentUnlike(Comment $comment)
    {
        $comment->likes()->destroy($this->like);
        return response()->json(['msg' => 'success.', 'code' => 1]);
    }

    public function replyLike(Reply $reply)
    {
        $reply->likes()->save($this->like);
        return response()->json(['msg' => 'success.', 'code' => 1]);
    }

    public function replyUnlike(Reply $reply)
    {
        $reply->likes()->destory($this->like);
        return response()->json(['msg' => 'success.', 'code' => 1]);
    }

}
