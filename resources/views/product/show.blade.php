<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <a href="{{route('home')}}" >Главная</a>
    <a href="{{route('about')}}" >О нас</a>
    <a href="/contacts" >Контакты</a>
    <a href="/products" >Каталог</a>
    <br>

    <h2>{{$product->name}}</h2>
    <p>{{$product->price}}</p>
    <p>{{$product->description}}</p>

    @foreach ($product->features as $feature)
        <div>
            <p>{{$feature->name}}</p>
            <p>{{$feature->pivot->value}} {{$feature->unit}}</p>
        </div>
    @endforeach
</body>
</html>