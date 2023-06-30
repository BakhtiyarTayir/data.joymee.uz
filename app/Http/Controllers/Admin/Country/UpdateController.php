<?php

namespace App\Http\Controllers\Admin\Country;

use App\Http\Controllers\Controller;
use App\Models\Country;
use Illuminate\Http\Request;

class UpdateController extends Controller
{
    public function __invokeupdate(Request $request, Country $country)
    {
        $validatedData = $request->validate([
            'country_name' => 'required',
            'country_alias' => 'required',
        ]);

        $country->update($validatedData);

        return redirect()->route('country.index')->with('success', 'Country updated successfully.');
    }
}