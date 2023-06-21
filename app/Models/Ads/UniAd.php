<?php

namespace App\Models\Ads;

use App\Models\CategoryBoard\UniCategoryBoard;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UniAd extends Model
{
    use HasFactory;

    protected $guarded = false;

    public const UPDATED_AT = 'ads_update';
    public const CREATED_AT = 'ads_datetime_add';

    public function category()
    {
        return $this->belongsTo(UniCategoryBoard::class, 'category_board_id', 'ads_id_cat');
    }
}
