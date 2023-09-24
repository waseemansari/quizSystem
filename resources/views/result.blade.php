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
  <h1 class="text-center">Quiz Result</h1>
  <div class="row">
    <div class="col p-3 "></div>
    <div class="col p-3 bg-primary text-white">
        User Name {{$username}}<br>
        Wrong Ans {{$wrong}}  <br>  
        Right Ans {{$right}}
    </div>
    <div class="col p-3 "></div>
  </div>
</div>

</body>
</html>
