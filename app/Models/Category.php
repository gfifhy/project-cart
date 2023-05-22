<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Concerns\HasUuids;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;

    protected $fillable = [
        'id',
        'name',
        'category_id'
    ];
    public function children()
    {
        return $this->hasMany(Category::class, 'category_id');
    }

    public function descendants()
    {
        return $this->children()->with('descendants');
    }

    public function getAllChildrenIds()
    {
        $childrenIds = $this->descendants->pluck('id')->toArray();
        return array_merge([$this->id], $childrenIds);
    }
}
