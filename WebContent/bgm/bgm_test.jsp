<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Suizokutachi Project BGM</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #f0f0f0;
            font-family: Arial, sans-serif;
        }
        h1 {
            font-size: 3em;
            color: #333;
        }
        audio {
            display: none;
        }
    </style>
</head>
<body>

    <h1>Suizokutachi Project BGM</h1>

    <!-- BGMを埋め込む -->
    <audio id="bgm" autoplay loop>
        <source src="suizokutachiproject_bgm.wav" type="audio/wav">

    </audio>

    <script>
        // ページが読み込まれた際にオーディオが自動再生される
        window.onload = function() {
            var audio = document.getElementById("bgm");
            audio.play().catch(function(error) {
                console.log("オーディオ再生エラー: ", error);
            });
        };
    </script>

</body>
</html>
