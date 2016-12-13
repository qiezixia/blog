<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/

Route::group(['middleware' => ['web']], function () {
    Route::get('/', 'Home\IndexController@index');
    Route::get('/cate/{cate_id}', 'Home\IndexController@cate');
//    Route::get('/a/{article_id}', 'Home\IndexController@article');
    Route::get('/a/{article_id}', 'Home\IndexController@article');

    Route::any('admin/login', 'Admin\LoginController@login');
    Route::get('admin/code', 'Admin\LoginController@code');

    Route::post('/comment','Home\CommentController@comment');

    //点赞路由
    Route::post('/dianzan','Home\CommentController@dianzan');

});


Route::group(['middleware' => ['web','admin.login'],'prefix'=>'admin','namespace'=>'Admin'], function () {
    Route::get('/', 'IndexController@index');
    Route::get('info', 'IndexController@info');
    Route::get('quit', 'LoginController@quit');
    Route::any('pass', 'IndexController@pass');

    Route::resource('category','CategoryController');
    Route::post('changeorder', 'CategoryController@changeOrder');

    Route::resource('article','ArticleController');
    Route::any('upload','CommonController@upload');

    Route::resource('link','LinkController');
    Route::post('link/changeorder','LinkController@changeOrder');


    Route::resource('navs','NavsController');
    Route::post('navs/changeorder','NavsController@changeOrder');

    Route::get('config/putfile','ConfigController@putFile');
    Route::resource('config','ConfigController');
    Route::post('config/changeorder','ConfigController@changeOrder');
    Route::post('config/changecontent','ConfigController@changeContent');

    //搜索文章
    Route::any('/search','ArticleController@search');



});