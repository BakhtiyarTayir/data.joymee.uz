<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Http\Resources\UniAdResource;
use App\Models\Ads\UniAd;
use App\Models\CategoryBoard\UniCategoryBoard;
use Illuminate\Http\Request;

class AdController extends Controller
{
    public function index(Request $request)
    {
        $ads = UniAd::paginate(10);

        return UniAdResource::collection($ads);
    }
    public function getAdsByCategory(Request $request, UniCategoryBoard $category)
    {

//        dd($category);

        $ads = UniAd::where('ads_id_cat', $category->category_board_id)->get();

        return response()->json($ads);
    }
}
