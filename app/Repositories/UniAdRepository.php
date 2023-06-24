<?php

namespace App\Repositories;

use App\Models\UniAd;
use App\Repositories\BaseRepository;

class UniAdRepository extends BaseRepository
{
    protected $fieldSearchable = [
        
    ];

    public function getFieldsSearchable(): array
    {
        return $this->fieldSearchable;
    }

    public function model(): string
    {
        return UniAd::class;
    }
}
