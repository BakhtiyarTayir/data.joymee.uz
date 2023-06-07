<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Http\Resources\UniAdResource;
use App\Models\Ads\UniAd;
use Illuminate\Http\Request;

class AdController extends Controller
{
    public function index(Request $request)
    {
        $ads = UniAd::paginate(10);

        return UniAdResource::collection($ads);
    }
}
