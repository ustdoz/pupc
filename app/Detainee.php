<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

class Detainee extends Model
{
    protected $fillable = [
    	'first_name', 'middle_name', 'last_name', 'birth_date', 'detained_date', 'commitment_date', 'released_date',
    	'gender', 'violation', 'released_blotter_number', 'jailer_id', 'released_date_court', 'released_date_erogue', 'remarks',
    ];

    protected $dates = [
    	'birth_date', 'detained_date', 'commitment_date', 'released_date',
    	'released_date_court', 'released_date_erogue',
    ];

    protected $appends = [
    	'full_name', 'age', 'is_male', 'is_female',
    ];

    protected function fixDate($value)
    {
    	return $value ? Carbon::createFromFormat('m/d/Y', $value)->format('Y-m-d') : null;
    }

	public function jailer()
	{
		return $this->beLongsTo(Jailer::class)->withDefault();
	}

	public function setBirthDateAttribute($value)
	{
		$this->attributes['birth_date'] = $this->fixDate($value);
	}

	public function setDetainedDateAttribute($value)
	{
		$this->attributes['detained_date'] = $this->fixDate($value);
	}

	public function setCommitmentDateAttribute($value)
	{
		$this->attributes['commitment_date'] = $this->fixDate($value);
	}

	public function setReleasedDateAttribute($value)
	{
		$this->attributes['released_date'] = $this->fixDate($value);
	}

	public function setReleasedDateCourtAttribute($value)
	{
		$this->attributes['released_date_court'] = $this->fixDate($value);
	}

	public function setReleasedDateErogueAttribute($value)
	{
		$this->attributes['released_date_erogue'] = $this->fixDate($value);
	}

	public function getAgeAttribute()
	{
		if (!$this->attributes['birth_date']) {
			return 'N/A';
		}

		return Carbon::createFromFormat('Y-m-d', $this->attributes['birth_date'])->diff(Carbon::now())->format('%y');
	}

	public function getFullNameAttribute()
	{
		return implode(' ', [$this->attributes['first_name'], $this->attributes['middle_name'], $this->attributes['last_name']]);
	}

	public function getIsMaleAttribute()
	{
		return ($this->attributes['gender'] == 'male');
	}

	public function getIsFemaleAttribute()
	{
		return ($this->attributes['gender'] == 'female');
	}
}
