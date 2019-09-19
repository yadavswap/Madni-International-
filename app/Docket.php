<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Docket extends Model
{
    public function senderAddress(){
        return $this->belongsTo('App\SenderAddress');
    }

    public function receiverAddress(){
        return $this->belongsTo('App\ReceiverAddress');
    }

    public function deliveryAddress(){
        return $this->belongsTo('App\DeliveryAddress');
    }
}
