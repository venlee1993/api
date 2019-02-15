<?php


namespace App\Http\Controllers\Api;


use App\Http\Controllers\Controller;

class AuthController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:api', ['except' => ['login']]);
    }

    public function login()
    {
        $credentials = request(['email', 'password']);
        $token = auth('api')->attempt($credentials);
        if (!$token) {
            return response()->json(['error' => 'login error'], 401);
        }
        return $this->respondWithToken($token);
    }

    public function logout()
    {
        auth('api')->logout();
        return response()->json(['msg' => 'logout success']);
    }

    private function respondWithToken($token)
    {
        return response()->json([
            'access_token' => 'Bearer' .' ' . $token,
            'user'         => auth('api')->user(),
            'expires_in'   => auth('api')->factory()->getTTL() * 60
        ], 201);
    }

    public function refresh()
    {
        return $this->respondWithToken(auth('api')->refresh());
    }

    public function userInfo()
    {
        $user = auth('api')->user();
        return response()->json($user);
    }
}