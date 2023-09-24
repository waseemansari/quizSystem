<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use App\Models\{
    User,
    Question,
    QuestionAns,
    UserResult,
    rightAns,
};

class QuizQController extends Controller
{
    public function showQuiz(Request $request) {
       $questionList = Question::with('QuestionAns')->inRandomOrder()->limit(10)->get();
       return view('welcome',compact('questionList'));
    }
    public function saveResult(Request $request) {
        $user =  User::create(['name'=>$request->username]);
        foreach($request->ans as $key=>$value){
            $userAns = 'true';
            $ans = rightAns::where('question_ans_id',$value)->count();
            if($ans==0){
                $userAns = 'false';
            }
            UserResult::create([
                'question_ans_id'=>$value,
                'user_id'=>$user->id,
                'result'=>$userAns
            ]);
        }
        $wrong = UserResult::where('user_id',$user->id)->where('result','false')->count();
        $right = UserResult::where('user_id',$user->id)->where('result','true')->count();
        $username = $request->username;
        return view('result',compact('wrong','right','username'));
    
     }
    
}
