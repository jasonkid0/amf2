<?php

namespace App\Model_Mechanic;

use Illuminate\Database\Eloquent\Model;
use App\Model_Mechanic\Testimonial;
use App\Model_Mechanic\Contact_Number;
use App\Model_Mechanic\Skill;
use App\User;
use DB;

class Mechanic extends Model
{
    public function testimonials()
    {
    	return $this->belongsToMany(User::class, 'testimonials')->withPivot('id','testimonial','rating')->withTimestamps()->orderBy('testimonials.created_at','desc');
    }

    public function testi()
    {
    	return $this->hasMany(Testimonial::class);
    }

    public static function getMechanicAverage()
    {
    	$mec = request('mec');
    	
    	return Testimonial::where('mechanic_id', $mec)->avg('rating');
    }

    public static function getAllMechanicAverage($mec)
    {
        
        return Testimonial::where('mechanic_id', $mec)->avg('rating');
    }

    public static function getAllMechanicTotal($mec)
    {
        
        return Testimonial::where('mechanic_id', $mec)->sum('rating');
    }

    public static function getAllMechanicComments($mec)
    {
        
        return Testimonial::where('mechanic_id', $mec)->whereNotNull('testimonial')->count('id');
    }

    public function mechanicNumbers()
    {
        return $this->hasMany(Contact_Number::class);
    }

    public function mechanicSkills()
    {
        return $this->hasMany(Skill::class);
    }

}
