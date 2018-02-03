<?php

namespace App\Http\Controllers\Mechanic;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Location;
use App\Model_Mechanic\Mechanic;
use App\Model_Mechanic\Mechanic_Rating;
use App\Model_Mechanic\Testimonial;
use Auth;

class MechanicController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth:web');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('pages_mechanic.index');
    }

    public function Profile($mec)
    {
        //$position = Location::get('122.54.165.105');


        $mechanic_profile = Mechanic::find($mec);

        return view('pages_mechanic.profile', compact('mechanic_profile','position'));
    }

    public function store(Request $request, Mechanic $mec)
    {
        // Make new testimonial
        $comment = new Testimonial;
        $comment->rating = $request->rating;
        $comment->testimonial = $request->testimonial;
        $comment->user_id = Auth::id();

        $mec->testi()->save($comment);          
    
        return back();
    }

    public function edit(Testimonial $testi)
    {
        return view('pages_mechanic.edit_testimonial', compact('testi'));
    }
}
