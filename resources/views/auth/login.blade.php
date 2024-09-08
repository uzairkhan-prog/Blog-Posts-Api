<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
    <link rel="stylesheet" href="{{ asset('css/form.css') }}">
</head>

<body>
    <div class="container">
        <div class="c1">

            <div class="c11">
                <h1 class="mainhead">BLOG LOGIN</h1>
            </div>
            <div>
                <a href="{{ url('register') }}">
                    <h1 class="s2class"><span>Account Register</span></h1>
                    </h1>
                </a>
            </div>
        </div>
        <div class="c2">
            <form class="" action="{{ url('login') }}" method="POST">
                @csrf

                <h1 class="signup1">LOGIN</h1>
                <br><br><br><br>
                <input type="email" class="username" name="email" id="email" value="{{ old('email') }}" placeholder="Email*" required>
                @error('email') <span>{{ $message }}</span> @enderror

                <input type="password" class="username" name="password" id="password" required>
                @error('password') <span>{{ $message }}</span> @enderror

                <button type="submit" class="btn">Login</button>

                <br><br>
                <!-- <a href="">
                    <p class="signup2">Forget Password?</p>
                </a> -->
                <a>
                    <p class="signup2">Email: admin@gmail.com</p>
                    <p class="signup2">Password: 12345678</p>
                </a>
            </form>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="{{ asset('js/form.js') }}"></script>

</body>

</html>