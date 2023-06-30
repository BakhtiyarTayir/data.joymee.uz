<?php

namespace App\Http\Controllers\Admin\Country;

use App\Http\Controllers\Controller;
use App\Models\Country;
use Illuminate\Http\Request;

class StoreController extends Controller
{
    public function __invoke(Request $request)
    {
        $validatedData = $request->validate([
            'country_name' => 'required',
            'country_alias' => 'required',
        ]);

        Country::create($validatedData);

        return redirect()->route('country.index')->with('success', 'Country created successfully.');

    }
}
