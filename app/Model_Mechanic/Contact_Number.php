<?php

namespace App\Model_Mechanic;

use Illuminate\Database\Eloquent\Model;
use App\Model_Mechanic\Contact_Number;
use App\Model_Mechanic\Mechanic;

class Contact_Number extends Model
{
	protected $table = 'contact_numbers';

    protected $fillable = [
    	'contact_number'
    ];

    public function mechanicContact()
    {
    	return $this->belongsTo(Mechchanic::class);
    }
}
