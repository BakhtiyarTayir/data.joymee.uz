<?php

namespace App\Http\Controllers\API;

use App\Http\Requests\API\CreateUniAdAPIRequest;
use App\Http\Requests\API\UpdateUniAdAPIRequest;
use App\Models\UniAd;
use App\Repositories\UniAdRepository;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use App\Http\Controllers\AppBaseController;

/**
 * Class UniAdAPIController
 */
class UniAdAPIController extends AppBaseController
{
    private UniAdRepository $uniAdRepository;

    public function __construct(UniAdRepository $uniAdRepo)
    {
        $this->uniAdRepository = $uniAdRepo;
    }

    /**
     * Display a listing of the UniAds.
     * GET|HEAD /uni-ads
     */
    public function index(Request $request): JsonResponse
    {
        $uniAds = $this->uniAdRepository->all(
            $request->except(['skip', 'limit']),
            $request->get('skip'),
            $request->get('limit')
        );

        return $this->sendResponse($uniAds->toArray(), 'Uni Ads retrieved successfully');
    }

    /**
     * Store a newly created UniAd in storage.
     * POST /uni-ads
     */
    public function store(CreateUniAdAPIRequest $request): JsonResponse
    {
        $input = $request->all();

        $uniAd = $this->uniAdRepository->create($input);

        return $this->sendResponse($uniAd->toArray(), 'Uni Ad saved successfully');
    }

    /**
     * Display the specified UniAd.
     * GET|HEAD /uni-ads/{id}
     */
    public function show($id): JsonResponse
    {
        /** @var UniAd $uniAd */
        $uniAd = $this->uniAdRepository->find($id);

        if (empty($uniAd)) {
            return $this->sendError('Uni Ad not found');
        }

        return $this->sendResponse($uniAd->toArray(), 'Uni Ad retrieved successfully');
    }

    /**
     * Update the specified UniAd in storage.
     * PUT/PATCH /uni-ads/{id}
     */
    public function update($id, UpdateUniAdAPIRequest $request): JsonResponse
    {
        $input = $request->all();

        /** @var UniAd $uniAd */
        $uniAd = $this->uniAdRepository->find($id);

        if (empty($uniAd)) {
            return $this->sendError('Uni Ad not found');
        }

        $uniAd = $this->uniAdRepository->update($input, $id);

        return $this->sendResponse($uniAd->toArray(), 'UniAd updated successfully');
    }

    /**
     * Remove the specified UniAd from storage.
     * DELETE /uni-ads/{id}
     *
     * @throws \Exception
     */
    public function destroy($id): JsonResponse
    {
        /** @var UniAd $uniAd */
        $uniAd = $this->uniAdRepository->find($id);

        if (empty($uniAd)) {
            return $this->sendError('Uni Ad not found');
        }
       
        $uniAd->delete();

        return $this->sendSuccess('Uni Ad deleted successfully');
    }
}
