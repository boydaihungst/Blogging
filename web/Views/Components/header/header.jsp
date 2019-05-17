<%@page import="Utils.Const"%>
<link  href="Views/Components/header/header.css" rel="stylesheet" type="text/css">
<header>
    <div class="title-section">
        <div class="title text-capital bold primary">blogging about my life</div>
        <div class="sub-title primary">Welcome to my blog</div>
    </div>
    <nav>
        <ul>
            <li class="text-capital ${isHome}">
                <a href="home">my blog</a>
            </li>
            <li class="text-capital ${isAbout}">
                <a href="about-me">about me</a>
            </li>
        </ul>
    </nav>
</header>