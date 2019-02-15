<?php

namespace App\Http\Controllers\Api;

use App\Model\Reply;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class Replycontroller extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:api');
    }

    public function store()
    {
        $user_id = auth('api')->user()->id;
        $params = request(['post_id', 'comment_id', 'replied_id', 'content']);
        Reply::create(array_merge($params, compact('user_id')));
        return response()->json(['msg' => 'reply success.', 'code' => 1]);
    }
}
