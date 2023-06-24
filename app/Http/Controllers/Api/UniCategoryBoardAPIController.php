<?php

namespace App\Http\Controllers\API;

use App\Http\Requests\API\CreateUniCategoryBoardAPIRequest;
use App\Http\Requests\API\UpdateUniCategoryBoardAPIRequest;
use App\Models\UniCategoryBoard;
use App\Repositories\UniCategoryBoardRepository;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use App\Http\Controllers\AppBaseController;

/**
 * Class UniCategoryBoardAPIController
 */
class UniCategoryBoardAPIController extends AppBaseController
{
    private UniCategoryBoardRepository $uniCategoryBoardRepository;

    public function __construct(UniCategoryBoardRepository $uniCategoryBoardRepo)
    {
        $this->uniCategoryBoardRepository = $uniCategoryBoardRepo;
    }

    /**
     * Display a listing of the UniCategoryBoards.
     * GET|HEAD /uni-category-boards
     */
    public function index(Request $request): JsonResponse
    {
        $uniCategoryBoards = $this->uniCategoryBoardRepository->all(
            $request->except(['skip', 'limit']),
            $request->get('skip'),
            $request->get('limit')
        );

        return $this->sendResponse($uniCategoryBoards->toArray(), 'Uni Category Boards retrieved successfully');
    }

    /**
     * Store a newly created UniCategoryBoard in storage.
     * POST /uni-category-boards
     */
    public function store(CreateUniCategoryBoardAPIRequest $request): JsonResponse
    {
        $input = $request->all();

        $uniCategoryBoard = $this->uniCategoryBoardRepository->create($input);

        return $this->sendResponse($uniCategoryBoard->toArray(), 'Uni Category Board saved successfully');
    }

    /**
     * Display the specified UniCategoryBoard.
     * GET|HEAD /uni-category-boards/{id}
     */
    public function show($id): JsonResponse
    {
        /** @var UniCategoryBoard $uniCategoryBoard */
        $uniCategoryBoard = $this->uniCategoryBoardRepository->find($id);

        if (empty($uniCategoryBoard)) {
            return $this->sendError('Uni Category Board not found');
        }

        return $this->sendResponse($uniCategoryBoard->toArray(), 'Uni Category Board retrieved successfully');
    }

    /**
     * Update the specified UniCategoryBoard in storage.
     * PUT/PATCH /uni-category-boards/{id}
     */
    public function update($id, UpdateUniCategoryBoardAPIRequest $request): JsonResponse
    {
        $input = $request->all();

        /** @var UniCategoryBoard $uniCategoryBoard */
        $uniCategoryBoard = $this->uniCategoryBoardRepository->find($id);

        if (empty($uniCategoryBoard)) {
            return $this->sendError('Uni Category Board not found');
        }

        $uniCategoryBoard = $this->uniCategoryBoardRepository->update($input, $id);

        return $this->sendResponse($uniCategoryBoard->toArray(), 'UniCategoryBoard updated successfully');
    }

    /**
     * Remove the specified UniCategoryBoard from storage.
     * DELETE /uni-category-boards/{id}
     *
     * @throws \Exception
     */
    public function destroy($id): JsonResponse
    {
        /** @var UniCategoryBoard $uniCategoryBoard */
        $uniCategoryBoard = $this->uniCategoryBoardRepository->find($id);

        if (empty($uniCategoryBoard)) {
            return $this->sendError('Uni Category Board not found');
        }

        $uniCategoryBoard->delete();

        return $this->sendSuccess('Uni Category Board deleted successfully');
    }
}
