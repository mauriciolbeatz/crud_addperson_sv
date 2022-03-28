<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Persona
 *
 * @property $id
 * @property $municipio_id
 * @property $name
 * @property $phone
 * @property $created_at
 * @property $updated_at
 *
 * @property Municipio $municipio
 * @package App
 * @mixin \Illuminate\Database\Eloquent\Builder
 */
class Persona extends Model
{
    
    static $rules = [
		'municipio_id' => 'required',
		'name' => 'required',
		'phone' => 'required',
    ];

    protected $perPage = 20;

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['municipio_id','name','phone'];


    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function municipio()
    {
        return $this->hasOne('App\Models\Municipio', 'id', 'municipio_id');
    }
    

}
