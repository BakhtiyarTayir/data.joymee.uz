<?php

namespace App\Http\Controllers\Admin\UniAd;

use App\Http\Controllers\Controller;
use App\Models\AdsCategory;
use App\Models\Category;
use App\Models\Tag;
use App\Models\UniCategoryBoard;
use Illuminate\Http\Request;

class CreateController extends BaseController
{
    public function __invoke() {
        $ads_categories = UniCategoryBoard::all();
        return view('admin.post.create', compact('ads_categories'));
    }
}
