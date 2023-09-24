<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    use HasFactory;
    protected $fillable = [
        'title',
        'status'
    ];
    public function QuestionAns(){
        return $this->hasMany(QuestionAns::class)->select('id','title','question_id');
    }
}
