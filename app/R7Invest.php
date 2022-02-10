<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class R7Invest extends Model
{
    protected $table = 'r7_invest';

    protected $fillable = [
        'name', 'is_active', 
    ];
}
