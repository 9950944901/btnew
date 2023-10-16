<!DOCTYPE html>
<html>
<head>
    <title>School Management Software</title>
</head>
<body>
    <p>{{ $mailData['title'] }}</p>
    <a href="{{ url('/') }}">{{ url('/') }}</a>
    <p>{{ $mailData['body'] }}</p>
    <p>Don't share your account details!</p>
    <p>Thank you</p>
</body>
</html>