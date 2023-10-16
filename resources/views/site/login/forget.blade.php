<!DOCTYPE html>
<html>
<title>Login</title>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="description">
<meta content="" name="keywords">
<link rel="icon" type="image/x-icon" href="{{ url('public/favicon.png') }}">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

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
                            <div>
                                <form action="{{ route('ADMIN.Forget') }}" method="post">
                                    @csrf
                                    @if ($message = Session::get('success'))
                                    <div class="alert alert-success alert-block text-center p-0">
                                        <strong>{{ $message }}</strong><br>
                                        <small>Page auto redirect after 10 seconds</small>
                                    </div>
                                    <script>
                                        setTimeout(function () {
                                            window.location.replace('{{ url('/') }}');
                                        }, 10000);
                                    </script>
                                    @endif
                                    @if ($message = Session::get('error'))
                                    <div class="alert alert-danger alert-block text-center p-0">
                                        <strong>{{ $message }}</strong>
                                    </div>
                                    @endif
                                    <div class="mb-3 mt-3">
                                        <label for="email">Enter your registered email</label>
                                        <input type="email" class="form-control" placeholder="Enter your register email" name="email"
                                            value="{{ old('email') }}">
                                        <a href="{{ route('Site.Login') }}" style="float: right;">Back</a>
                                        @error('email')
                                        <span style="color: red">{{ $message }}</span>
                                        @enderror
                                    </div>
                                    <div class="text-center">
                                        <button type="submit" class="btn btn-primary">Next</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>

</html>