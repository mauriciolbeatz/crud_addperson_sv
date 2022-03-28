<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Departamento
 *
 * @property $id
 * @property $name
 * @property $ISOCode
 *
 * @property Municipio[] $municipios
 * @package App
 * @mixin \Illuminate\Database\Eloquent\Builder
 */
class Departamento extends Model
{
    
    static $rules = [
		'name' => 'required',
		'ISOCode' => 'required',
    ];

    protected $perPage = 20;

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['name','ISOCode'];


    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function municipios()
    {
        return $this->hasMany('App\Models\Municipio', 'dep_id', 'id');
    }
    

}
