<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    public function medicines() {
        return $this->hasMany('App\Medicine', 'category_id', 'id');
    }

    public function transaction() {
        return $this->hasMany('App\Transaction', 'transaction_id', 'id');
    }
}
