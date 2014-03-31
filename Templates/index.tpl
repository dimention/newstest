<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="{$dir}/css/metroui/css/metro-bootstrap.css">
    <link rel="stylesheet" href="{$dir}/css/metroui/css/metro-bootstrap-responsive.css">
    <link rel="stylesheet" href="{$dir}/css/metroui/min/iconFont.min.css">
    <link rel="stylesheet" href="{$dir}/css/metroui/docs/js/prettify/prettify.css">
    <script src="{$dir}/js/jquery.min.js"></script>
    <script src="{$dir}/js/ui/ui/jquery.ui.widget.js"></script>
    <script src="{$dir}/css/metroui/min/metro.min.js"></script>
    <script src="{$dir}/css/metroui/docs/js/prettify/prettify.js"></script>
    <script src="{$dir}/css/metroui/docs/js/docs.js"></script>
    <meta charset="utf-8"/>
    <title>Naujienų administravimas</title>
</head>
<body class="metro">

<div class="container">
    <div class="span5">
        <h2>Visos naujienos</h2>
    <div class="listview-outlook">
        {section name=i loop=$visi}
        <a href="#" class="list" data-value="{$visi[i].id}">
            <div class="list-content">
                <span class="list-title">{$visi[i].antraste}</span>
                <span class="list-subtitle">Pridėtas {$visi[i].data}</span>
                <span class="list-remark">{$visi[i].tekstas}</span>
            </div>
            <span><button class="button"><span class="icon-pen on-left"></span></button></span>
        </a>

<!--            <div class="balloon right">
                <div class="tab-control padding20" data-role="tab-control">
                    <p class="place-right tertiary-text">Comments are parsed with <a href="https://help.github.com/articles/github-flavored-markdown">GitHub Flavored Markdown</a></p>
                    <ul class="tabs">
                        <li class="active"><a href="#write">Write</a></li>
                        <li><a href="#preview">Preview</a></li>
                    </ul>

                    <div class="frames">
                        <div id="write" class="frame">
                            <textarea data-transform="input-control" placeholder="leave a comment"></textarea>
                        </div>
                        <div id="preview" class="frame">
                            This is preview :)
                        </div>
                    </div>
                </div>
            </div> -->
        {/section}
    </div>
    </div>
    <div class="span7">
        <div class="tab-control padding20" data-role="tab-control">
            <p class="place-right tertiary-text">Comments are parsed with <a href="https://help.github.com/articles/github-flavored-markdown">GitHub Flavored Markdown</a></p>
            <ul class="tabs">
                <li class="active"><a href="#write">Write</a></li>
                <li><a href="#preview">Preview</a></li>
            </ul>

            <div class="frames">
                <div id="write" class="frame">
                    <textarea data-transform="input-control" placeholder="leave a comment"></textarea>
                </div>
                <div id="preview" class="frame">
                    This is preview :)
                </div>
            </div>
        </div>
    </div>
    </div>
</div>

</body>
</html>