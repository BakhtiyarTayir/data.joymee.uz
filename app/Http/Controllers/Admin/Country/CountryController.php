<?php

namespace App\Http\Controllers\Admin\Country;

use App\Http\Controllers\Controller;
use App\Models\Country;
use Illuminate\Http\Request;

class CountryController extends Controller
{
    public function index()
    {
        $countries = Country::all();

        return view('country.index', compact('countries'));
    }

    public function create()
    {
        return view('country.create');
    }

    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'country_name' => 'required',
            'country_alias' => 'required',
        ]);

        Country::create($validatedData);

        return redirect()->route('country.index')->with('success', 'Country created successfully.');
    }

    public function edit(Country $country)
    {
        return view('country.edit', compact('country'));
    }

    public function update(Request $request, Country $country)
    {
        $validatedData = $request->validate([
            'country_name' => 'required',
            'country_alias' => 'required',
        ]);

        $country->update($validatedData);

        return redirect()->route('country.index')->with('success', 'Country updated successfully.');
    }

    public function destroy(Country $country)
    {
        $country->delete();

        return redirect()->route('country.index')->with('success', 'Country deleted successfully.');
    }
}
