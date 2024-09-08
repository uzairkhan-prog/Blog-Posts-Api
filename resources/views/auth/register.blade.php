<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
    <link rel="stylesheet" href="{{ asset('css/form.css') }}">
</head>

<body>
    <div class="container">
        <div class="c1">

            <div class="c11">
                <h1 class="mainhead">BLOG REGISTER</h1>
            </div>
            <div>
                <a href="{{ url('login') }}">
                    <h1 class="s1class"><span>Account Login</span>
                    </h1>
                </a>
            </div>
        </div>
        <div class="c2">
            <form class="" action="{{ url('register') }}" method="POST">
                @csrf
                <h1 class="signup1">REGISTER</h1>
                <br><br><br><br>
                <input type="text" class="username" name="name" id="name" value="{{ old('name') }}" placeholder="Username*" required>
                @error('name') <span>{{ $message }}</span> @enderror

                <input type="email" name="email" id="email" value="{{ old('email') }}" placeholder="Email*" class="username" required>
                @error('email') <span>{{ $message }}</span> @enderror

                <input type="password" name="password" id="password" class="username" placeholder="Password*" required>
                @error('password') <span>{{ $message }}</span> @enderror

                <input type="password" name="password_confirmation" id="password_confirmation" class="username" placeholder="password_confirmation*" required>
                @error('password') <span>{{ $message }}</span> @enderror

                <button type="submit" class="btn">REGISTER</button>
            </form>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="{{ asset('js/form.js') }}"></script>

</body>

</html>