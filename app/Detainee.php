<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Detainee extends Model
{
    protected $fillable = [
    	'first_name', 'middle_name', 'last_name', 'birth_date', 'detained_date', 'released_date', 
    ];

    protected $dates = [
    	'birth_date', 'detained_date', 'released_date', 
    ];
}
