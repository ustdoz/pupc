<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Jailer extends Model
{
    protected $fillable = [
        'name', 
    ];

    public function detainees()
    {
        return $this->hasMany(Detainee::class);
    }
}
