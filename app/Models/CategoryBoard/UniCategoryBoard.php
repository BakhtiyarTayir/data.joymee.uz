<?php

namespace App\Models\CategoryBoard;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UniCategoryBoard extends Model
{
    use HasFactory;
    protected $guarded = false;
    protected $table = 'uni_category_board';
}
