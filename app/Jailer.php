<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Jailer extends Model
{
    protected $fillable = [
        'name', 'is_active',
    ];

    public function detainees()
    {
        return $this->hasMany(Detainee::class);
    }
}
