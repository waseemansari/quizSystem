<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserResult extends Model
{
    use HasFactory;
    protected $fillable = [
        'question_ans_id',
        'user_id',
        'result'
    ];
}
