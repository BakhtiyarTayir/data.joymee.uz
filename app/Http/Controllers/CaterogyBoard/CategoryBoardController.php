<?php

namespace App\Http\Controllers\CaterogyBoard;

use App\Http\Controllers\Controller;
use App\Http\Resources\CategoryBoardResource;
use App\Models\CategoryBoard\UniCategoryBoard;
use Illuminate\Http\Request;

class CategoryBoardController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
     $category_boards = UniCategoryBoard::all();
     return CategoryBoardResource::collection($category_boards);
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
    public function show(UniCategoryBoard $uniCategoryBoard)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(UniCategoryBoard $uniCategoryBoard)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, UniCategoryBoard $uniCategoryBoard)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(UniCategoryBoard $uniCategoryBoard)
    {
        //
    }
}
