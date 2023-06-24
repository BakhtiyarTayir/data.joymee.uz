<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UniAd extends Model
{
    use HasFactory;
    protected $guarded = false;


    public function uniCategoryBoard() {
        return $this->belongsTo(UniCategoryBoard::class,  'category_board_id', 'ads_id_cat');
    }
}
