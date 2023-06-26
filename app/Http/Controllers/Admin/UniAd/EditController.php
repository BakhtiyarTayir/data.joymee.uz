<?php

namespace App\Http\Controllers\Admin\UniAd;

use App\Http\Controllers\Controller;
use App\Models\AdsCategory;
use App\Models\Advertisement\Advertisement;
use App\Models\Category;
use App\Models\Post;
use App\Models\Tag;
use App\Models\UniAd;
use App\Models\UniCategoryBoard;

class EditController extends BaseController
{
    public function __invoke(UniAd $ads) {
        $ads_categories = UniCategoryBoard::all();
        return view('admin.ads.edit', compact('ads', 'ads_categories'));
    }
}
