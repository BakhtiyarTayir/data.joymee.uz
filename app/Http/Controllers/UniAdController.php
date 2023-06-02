<?php

namespace App\Http\Controllers;

use App\Http\Resources\UniAdResource;
use App\Models\UniAd;
use Illuminate\Http\Request;

class UniAdController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $ads = UniAd::all();
        return UniAdResource::collection($ads);
//        return view('ads.index', compact('ads'));
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
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(UniAd $uni_ad)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(UniAd $uni_ad)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, UniAd $uni_ad)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(UniAd $uni_ad)
    {
        //
    }
}
