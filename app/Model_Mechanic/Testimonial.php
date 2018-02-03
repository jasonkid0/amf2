<?php

namespace App\Model_Mechanic;

use Illuminate\Database\Eloquent\Model;
use App\Model_Mechanic\Mechanic;
use App\Model_Mechanic\Testimonial;

class Testimonial extends Model
{
	protected $fillable = [
		'testimonial',
		'rating'
	];

    public function mechanic()
    {
    	return $this->hasMany(Mechanic::class);
    }

}
