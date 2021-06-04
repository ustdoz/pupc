<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

class Detainee extends Model
{
    protected $fillable = [
    	'first_name', 'middle_name', 'last_name', 'birth_date', 'detained_date', 'released_date', 
    ];

    protected $dates = [
    	'birth_date', 'detained_date', 'released_date', 
    ];

    protected $appends = [
    	'age',
    ];

	public function setBirthDateAttribute($value)
	{
		$this->attributes['birth_date'] = $value ? Carbon::createFromFormat('m/d/Y', $value)->format('Y-m-d') : null;
	}

	public function setDetainedDateAttribute($value)
	{
		$this->attributes['detained_date'] = $value ? Carbon::createFromFormat('m/d/Y', $value)->format('Y-m-d') : null;
	}

	public function setReleasedDateAttribute($value)
	{
		$this->attributes['released_date'] = $value ? Carbon::createFromFormat('m/d/Y', $value)->format('Y-m-d') : null;
	}

	public function getAgeAttribute()
	{
		if (!$this->attributes['birth_date']) {
			return 'N/A';
		}

		return Carbon::createFromFormat('Y-m-d', $this->attributes['birth_date'])->diff(Carbon::now())->format('%y');
	}
}
