<?php

namespace App\Http\Model;

use Illuminate\Database\Eloquent\Model;

class Config extends Model
{
    protected $table='Config';
    protected $primaryKey='conf_id';
    public $timestamps=false;
    protected $guarded=[];
}
