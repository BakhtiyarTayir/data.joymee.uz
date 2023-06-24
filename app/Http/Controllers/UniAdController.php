<?php

namespace App\Http\Controllers;

use App\Http\Requests\CreateUniAdRequest;
use App\Http\Requests\UpdateUniAdRequest;
use App\Http\Controllers\AppBaseController;
use App\Repositories\UniAdRepository;
use Illuminate\Http\Request;
use Flash;

class UniAdController extends AppBaseController
{
    /** @var UniAdRepository $uniAdRepository*/
    private $uniAdRepository;

    public function __construct(UniAdRepository $uniAdRepo)
    {
        $this->uniAdRepository = $uniAdRepo;
    }

    /**
     * Display a listing of the UniAd.
     */
    public function index(Request $request)
    {
        $uniAds = $this->uniAdRepository->paginate(10);

        return view('uni_ads.index')
            ->with('uniAds', $uniAds);
    }

    /**
     * Show the form for creating a new UniAd.
     */
    public function create()
    {
        return view('uni_ads.create');
    }

    /**
     * Store a newly created UniAd in storage.
     */
    public function store(CreateUniAdRequest $request)
    {
        $input = $request->all();

        $uniAd = $this->uniAdRepository->create($input);

        Flash::success('Uni Ad saved successfully.');

        return redirect(route('uniAds.index'));
    }

    /**
     * Display the specified UniAd.
     */
    public function show($id)
    {
        $uniAd = $this->uniAdRepository->find($id);

        if (empty($uniAd)) {
            Flash::error('Uni Ad not found');

            return redirect(route('uniAds.index'));
        }

        return view('uni_ads.show')->with('uniAd', $uniAd);
    }

    /**
     * Show the form for editing the specified UniAd.
     */
    public function edit($id)
    {
        $uniAd = $this->uniAdRepository->find($id);

        if (empty($uniAd)) {
            Flash::error('Uni Ad not found');

            return redirect(route('uniAds.index'));
        }

        return view('uni_ads.edit')->with('uniAd', $uniAd);
    }

    /**
     * Update the specified UniAd in storage.
     */
    public function update($id, UpdateUniAdRequest $request)
    {
        $uniAd = $this->uniAdRepository->find($id);

        if (empty($uniAd)) {
            Flash::error('Uni Ad not found');

            return redirect(route('uniAds.index'));
        }

        $uniAd = $this->uniAdRepository->update($request->all(), $id);

        Flash::success('Uni Ad updated successfully.');

        return redirect(route('uniAds.index'));
    }

    /**
     * Remove the specified UniAd from storage.
     *
     * @throws \Exception
     */
    public function destroy($id)
    {
        $uniAd = $this->uniAdRepository->find($id);

        if (empty($uniAd)) {
            Flash::error('Uni Ad not found');

            return redirect(route('uniAds.index'));
        }

        $this->uniAdRepository->delete($id);

        Flash::success('Uni Ad deleted successfully.');

        return redirect(route('uniAds.index'));
    }
}
