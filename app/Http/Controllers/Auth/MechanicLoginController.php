<?php

namespace App\Http\Controllers\Auth;

use Auth;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class MechanicLoginController extends Controller
{

	public function __construct()
	{
		$this->middleware('guest:mechanic', ['except' => ['logout']]);
	}

    public function LoginForm()
    {
    	return view('auth.mechanic');
    }

    public function Login(Request $request)
    {

    	$this->validate($request, [
    		'email' => 'required|email',
    		'password' => 'required|min:6'
    	]);

    	if (Auth::guard('mechanic')->attempt(['email' => $request->email, 'password' => $request->password], $request->remember)) {
    		return redirect()->intended(route('mechanic.dashboard'));
    	}

    	return redirect()->back()->withInput($request->only('email','password'));
    }

    public function logout()
    {
        Auth::guard('mechanic')->logout();

        return redirect('/');
    }
    
}
