<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Municipio
 *
 * @property $id
 * @property $name
 *
 * @property Persona[] $personas
 * @package App
 * @mixin \Illuminate\Database\Eloquent\Builder
 */
class Municipio extends Model
{
    
    static $rules = [
		'name' => 'required',
    ];

    protected $perPage = 20;

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['name'];


    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function personas()
    {
        return $this->hasMany('App\Models\Persona', 'municipio_id', 'id');
    }
    

}
