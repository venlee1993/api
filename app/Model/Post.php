<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    protected $guarded = [];

    public function comments()
    {
        return $this->hasMany(Comment::class);
    }

    public function column()
    {
        return $this->belongsTo(Column::class);
    }

    public function likeable()
    {
        return $this->morphMany(Like::class, 'likeable');
    }
}
