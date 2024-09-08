<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Show Blog Post</title>
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="{{ asset('css/custom.css') }}">
</head>

<body>
    <div class="container">
        <div class="blog-post">
            <h1 class="post-title">{{ $post->title }}</h1>
            <a href="{{ url('posts') }}" class="btn" style="float: right;bottom: 37px;position: relative;color: #fff;background-color: #777777;">Back</a>
            <p class="post-meta">by {{ $authorName->name }} | {{ $authorName->created_at->format('F j, Y') }}</p>
            <div class="post-content">
                <p>{{ $post->content }}</p>
            </div>
        </div>

        <div class="comments-section">
            <div class="comment-form">
                <form action="{{ route('comments.store', $post) }}" method="POST">
                    @csrf
                    <div class="form-group">
                        <label for="content">
                            <h2 class="comments-title" style="margin: 0;">Post Comment</h2>
                        </label>
                        <textarea id="content" name="content" rows="4" required></textarea>
                        @error('content') <span>{{ $message }}</span> @enderror
                    </div>
                    <div style="text-align: end;">
                        <button type="submit" class="submit-btn">Post Comment</button>
                    </div>
                </form>
            </div>
            @if ($post->comments->count())
            <h2 class="comments-title" style="margin: 0;">Comments</h2>
            @foreach ($post->comments as $comment)
            <div class="comment">
                <p class="comment-author">{{ $comment->user->name }}</p>
                <p class="comment-date">{{ $comment->created_at->format('F j, Y') }}</p>
                <p class="comment-text">{{ $comment->content }}</p>
            </div>
            @endforeach
            @endif
        </div>
    </div>
</body>

</html>