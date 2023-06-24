<?php

namespace App\Repositories;

use App\Models\UniCategoryBoard;
use App\Repositories\BaseRepository;

class UniCategoryBoardRepository extends BaseRepository
{
    protected $fieldSearchable = [
        
    ];

    public function getFieldsSearchable(): array
    {
        return $this->fieldSearchable;
    }

    public function model(): string
    {
        return UniCategoryBoard::class;
    }
}
