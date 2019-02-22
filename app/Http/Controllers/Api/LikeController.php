<?php

namespace App\Http\Controllers\Api;

use App\Model\Comment;
use App\Model\Like;
use App\Model\Post;
<<<<<<< HEAD
use App\Model\Reply;
=======
use Illuminate\Http\Request;
>>>>>>> d1b73981f49d801a423fc5ce86758231d2e43e52
use App\Http\Controllers\Controller;

class LikeController extends Controller
{
<<<<<<< HEAD
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
=======
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

>>>>>>> d1b73981f49d801a423fc5ce86758231d2e43e52
}
