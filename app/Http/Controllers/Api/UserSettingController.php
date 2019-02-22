<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;

class UserSettingController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth:api');
    }

    public function info()
    {
        $info = request()->only(['name', 'work']);
        auth('api')->user()->update($info);
        return response()->json(['msg' => 'success.', 'code' => 1]);
    }

    public function upload()
    {
        $avatar = request()->file('avatar');

        if ($avatar && $avatar->isValid()) {
            $originalName = $avatar->getClientOriginalName();
            //扩展名
            $ext = $avatar->getClientOriginalExtension();
            //MimeType
            $type = $avatar->getClientMimeType();
            //临时绝对路径
            $realPath = $avatar->getRealPath();
            $filename = uniqid() . '.' . $ext;
            $bool = Storage::disk('uploads')->put($filename, file_get_contents($realPath));
            //判断是否上传成功
            if ($bool) {
                return response()->json(['msg' => 'success.', 'code' => 1]);
            }

            return response()->json(['msg' => 'failed.', 'code' => 0]);
        }

    }
}
