<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Http\Requests\UniAd\StoreRequest;
use App\Http\Requests\UniAd\UpdateRequest;
use App\Http\Resources\UniAd\UniAdResource;
use App\Models\Ads\UniAd;
use App\Models\CategoryBoard\UniCategoryBoard;
use Illuminate\Http\Request;

class UniAdController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $ads = UniAd::paginate(10);

        return UniAdResource::collection($ads);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreRequest $request)
    {
        $data = $request->validated();
        $ads = UniAd::create($data);

        return UniAdResource::make($ads);
    }

    /**
     * Display the specified resource.
     */
    public function show(UniAd $uniAd)
    {
        return UniAdResource::make($uniAd);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(UniAd $uniAd)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateRequest $request, UniAd $uniAd)
    {
        $data = $request->validated();
        $uniAd->update($data);
        $uniAd->fresh();

        return UpdateRequest::make($uniAd);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(UniAd $uniAd)
    {
        $uniAd->delete();
        return response()->json([
            'message' => 'done'
        ]);
    }


}
