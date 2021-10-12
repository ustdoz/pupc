<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ChiefPolice extends Model
{
    protected $table = 'chief_police';

    protected $fillable = [
        'name', 
    ];
}
