<?php

namespace App\Model_Mechanic;

use Illuminate\Database\Eloquent\Model;
use App\Model_Mechanic\Skill;
use App\Model_Mechanic\Mechanic;

class Skill extends Model
{
    protected $fillable = [
    	'skill',
    	'amount'
    	
    ];

    public function mechanicSkill()
    {
    
    	return $this->belongsTo(Mechchanic::class);
    }


}
