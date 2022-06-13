<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Supplier extends Model
{
    public function medicines() {
        return $this->hasMany('App\Medicine', 'supplier_id', 'id');
    }

    use SoftDeletes;
}