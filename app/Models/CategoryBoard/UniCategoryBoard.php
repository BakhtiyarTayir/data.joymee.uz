<?php

namespace App\Models\CategoryBoard;

use App\Models\Ads\UniAd;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UniCategoryBoard extends Model
{
    use HasFactory;
    protected $guarded = false;
    protected $table = 'uni_category_board';

    public function uniAd()
    {
        return $this->hasMany(UniAd::class, 'ads_id_cat', 'category_board_id');
    }
}
