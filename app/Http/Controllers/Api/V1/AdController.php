<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Http\Resources\UniAd\UniAdResource;
use App\Models\UniAd;
use App\Models\UniCategoryBoard;
use Illuminate\Http\Response;
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

        $ads = UniAd::where('ads_id_cat', $category->category_board_id)->get();

        if ($ads->isEmpty()) {
            return response()->json(['message' => 'Объявления не найдены'], Response::HTTP_NOT_FOUND);
        }

        return response()->json($ads);
    }
}
