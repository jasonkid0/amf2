<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Model_Mechanic\Mechanic;

use DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $mechanics = Mechanic::paginate(5);

        return view('home', compact('mechanics'));
    }

    public function searchMechanic(Request $request)
    {
        $q = $request->q;
        if($q != ""){
        $mechanics = Mechanic::where ( 'name', 'LIKE', '%' . $q . '%' )->orWhere ( 'email', 'LIKE', '%' . $q . '%' )
        ->orWhere ( 'address', 'LIKE', '%' . $q . '%' )->paginate (5)->setPath ( '' );
        $pagination = $mechanics->appends ( array (
                    'q' => $request->q
            ) );
        if (count ( $mechanics ) > 0)
            return view ( 'home' )->withMechanics($mechanics);
        }
       return redirect('home')->with('status', 'No nearby available mechanic found.');
    }
}
