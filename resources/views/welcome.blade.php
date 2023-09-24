<!DOCTYPE html>
<html lang="en">
<head>
  <title>Quiz</title>
  <meta charset="utf-8">
  <meta name="csrf-token" content="{{ csrf_token() }}">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
  
<div class="container-fluid mt-3">
  <h1 class="text-center">Quiz System</h1>
  <div class="row">
    <div class="col p-3 "></div>
    <div class="col p-3 bg-primary text-white">
            <form id="myForm" name="myForm" method="post" action="{{url('save-result')}}" class="form-horizontal">
            <input name="_token" type="hidden" value="{{ csrf_token() }}"/>

                <div class="form-group">
                    <label>UserName</label>
                    <input type="text" class="form-control" id="username" name="username"
                            placeholder="Enter username" value="" required="required">
                </div>
                @php
                    foreach ($questionList as $question){
                @endphp
                <br><p>{{$question->title}}</p>
                @php
                    $i = 0;
                    foreach ($question->QuestionAns as $key){
                     
                @endphp
                    <div class="form-group">
                        <input type="checkbox" name="ans[]" value="{{$key->id}}">
                        <label>{{$key->title}}</label>
                    </div>
                @php
                $i++;
                    }
                @endphp
               
                @php
                    }
                @endphp
               <button type="submit" class="btn btn-dark">Submit Quiz</button>
            </form> 
    </div>
    <div class="col p-3 "></div>
  </div>
</div>

</body>
</html>
