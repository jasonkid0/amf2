<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/home/search', 'HomeController@searchMechanic')->name('home.search');
Route::get('/user/logout', 'Auth\LoginController@userLogout')->name('user.logout');

Route::prefix('mechanic')->group(function(){
	Route::get('/login', 'Auth\MechanicLoginController@LoginForm')->name('mechanic.login');
	Route::post('/login', 'Auth\MechanicLoginController@Login')->name('mechanic.login.submit');
	Route::get('/', 'Mechanic\MechanicController@index')->name('mechanic.dashboard');
	//Accessible to user account
	Route::get('/profile/{mec}', 'Mechanic\MechanicController@Profile')->name('mechanic.profile');
	Route::post('/profile/{mec}/comment', 'Mechanic\MechanicController@store')->name('mechanic.profile.comment');
	Route::get('/testimonial/{testi}/edit', 'Mechanic\MechanicController@edit')->name('mechanic.comment.edit');
	Route::get('/logout', 'Auth\MechanicLoginController@logout')->name('mechanic.logout');
});
