<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="<?php bloginfo('html_type'); ?>; charset=<?php bloginfo('charset'); ?>" />
<title>お探しのページが見つかりませんでした</title>
<?php get_header(); ?>
</head>
<body>
<div>
 
<p>お探しのページが見つかりませんでした (404 Not Found)</p>
<p><?php get_sidebar(); ?>
お探しのページは存在しません。<br />
もしくは一時的にアクセスできないか、<br />
移動または削除された可能性があります。<br /> 
URLに間違いがないかご確認をお願いいたします。
<br>また、ひょっとしたら検索してみたらでてくるかもしれません。<br>横のサイドバーにて検索してください<br></p>
<p><a href="<?php bloginfo('url'); ?>"><?php bloginfo('name'); ?> のトップページに戻る</a></p>
</div>
<?php get_footer(); ?>
</body>
</html>