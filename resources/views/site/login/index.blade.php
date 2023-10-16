<!DOCTYPE html>
<html>
  <title>Login</title>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="description">
  <meta content="" name="keywords">
  <link rel="icon" type="image/x-icon" href="{{ url('public/favicon.png') }}">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<body>
    <div class="container pb-5">
        <div class="row">
            <div class="col-md-12">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-md-5">
                            <div class="text-center">
                                <a href="{{ url('/') }}" >
                                <h2><img src="{{ url('public/school-logo.png') }}" style="width: 100%" alt=""></h2>
                                </a>
                            </div>
                                <div class="shadow-sm bg-light p-5 gggg" style="border:1px solid rgb(59, 58, 58);border-radius:10px">
                                 
                                  <h2 class="text-center text-effect">Sign In</h2>

                                    <form action="{{ route('ADMIN.Check.Data') }}" method="post">
                                        @csrf
                                        <div class="mb-3 mt-3">
                                            <label for="email">Email</label>
                                            <input type="email" class="form-control" placeholder="Enter email" name="email" value="{{ old('email') }}">
                                            @error('email')
                                             <span style="color: red">{{ $message }}</span>  
                                            @enderror
                                        </div>
                                        <div class="mb-3">
                                            <label for="pwd">Password</label>
                                            <input type="password" class="form-control" placeholder="Enter password" name="password">
                                            @error('password')
                                            <span style="color: red">{{ $message }}</span>  
                                            @enderror
                                        </div>
                                        @if ($message = Session::get('error'))
                                        <div class="alert alert-danger alert-block text-center p-0">  
                                            <strong>{{ $message }}</strong>
                                        </div>
                                        @endif
                                        
                                        <div class="text-center">
                                        <button type="submit" class="btn btn-primary">Sign In</button>
                                    </div>
                                    <div>
                                    <a href="{{ route('Admin.forgot') }}" style="float: right;">Forget password</a>
                                </div>
                                    </form>
                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<style>
    .text-effect{
    display: block;
    /* font-size: 130px; */
    color: #3871c1;
    text-align: center;
    text-shadow: 3px 3px 0 #fff, 4px 4px 0 rgba(0, 0, 0, 0.2);
    position: relative;
}
.gggg{
    color: #444;
    background: transparent;
    font-family: 'Archivo', sans-serif;
    border: 2px solid #ccc;
    border-radius: 0;
    position: relative;
    z-index: 1;
    transition: all 0.3s ease 0s;
}
.gggg:hover{
    color: #21cf02;
    background: transparent;
    border-color: #21cf02;
    animation: box 3s infinite;
}
.gggg:before,
.gggg:after{
    content: '';
    background-color: #21cf02;
    height: 4px;
    width: 10px;
    position: absolute;
    top: -3px;
    right: 10px;
    transition: all 0.5s ease 0s;
}
.gggg:after{
    top: auto;
    bottom: -3px;
    right: auto;
    left: 10px;
}
.gggg:hover:before{
    right: 85%;
    animation: move 1s infinite;
}
.gggg:hover:after{
    left: 80%;
    animation: move 1s infinite;
}
@keyframes move{
    0%{ transform: translateX(0); }
    50%{ transform: translateX(5px); }
    100%{ transform: translateX(0); }
}
@keyframes box{
    0%{ box-shadow: none; }
    50%{ box-shadow: 0 0 20px #21cf02; }
    100%{ box-shadow: none; }
}


</style>
</body>
</html>
