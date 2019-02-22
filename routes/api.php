<?php
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/


Route::group(['prefix' => 'auth'], function () {
    Route::post('login', 'Api\AuthController@login');
    Route::get('info', 'Api\AuthController@userInfo');
});


Route::group(['prefix' => 'post'], function () {
    Route::get('list', 'Api\PostController@list');
    Route::get('{post}/show', 'Api\PostController@show');
    Route::get('{post}/comment', 'Api\CommentController@list');
    Route::post('comment', 'Api\CommentController@store');
    Route::post('store', 'Api\PostController@store');
    Route::get('{post}/like', 'Api\LikeController@like');
});

Route::group(['prefix' => 'comment'], function () {
    Route::post('reply', 'Api\ReplyController@store');
});
