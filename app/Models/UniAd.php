<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UniAd extends Model
{
    use HasFactory;

    protected $guarded = false;

    protected $table = 'uni_ads';
    public const UPDATED_AT = 'ads_update';
    public const CREATED_AT = 'ads_datetime_add';

    protected $primaryKey = 'ads_id';


    public function category()
    {
        return $this->belongsTo(UniCategoryBoard::class, 'category_board_id', 'ads_id_cat');

    }

    public function uniCategoryBoard() {
        return $this->belongsTo(UniCategoryBoard::class,  'category_board_id', 'ads_id_cat');
    }
}
