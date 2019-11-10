<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Volumn extends Model
{
    public function docket(){
        return $this->belongsTo('\App\Docket');
    }
}
