<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Concerns\HasUuids;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory, HasUuids;

    protected $fillable = [
        'id',
        'quantity',
        'product_id',
        'user_id',
        'status'
    ];

    public function product() {
        return $this->belongsTo(Product::class, 'product_id')->with('brand')->with('category');
    }
}
