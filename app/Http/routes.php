<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', function()
{
    return View::make('pages.main');
	
});

Route::get('/welcome', function()
{
    return View::make('pages.welcome');
	
});

Route::get('/resume', function()
{
    return View::make('pages.resume');
	
});

Route::get('/portfolio', 'PortfolioController@allSimplified');

Route::get('/project/{id?}', 'PortfolioController@project');

Route::get('/blog', 'BlogController@post');
Route::get('/post/{id?}', 'BlogController@post');
Route::get('/posts-tag/{tag_id}', 'BlogController@postsByTag');
Route::post('/posts-search', ['as' => 'search-post', 'uses' => 'BlogController@postsBySearch']);

Route::get('/contactme',['as' => 'contactme', function()
{
    return View::make('pages.contactme');
	
}]);

Route::post('/contact', ['as' => 'contact-me', 'uses' => 'ContactController@send']);


//Route::get('/portfolio', 'PortfolioController@all');
Route::get('/categories', 'BlogController@all');








