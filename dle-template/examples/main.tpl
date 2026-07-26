<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- REQUIRED: outputs title, meta tags and DLE's own scripts/styles -->
	{headers}

	<link rel="stylesheet" href="{THEME}/css/style.css">
</head>
<body>

<!-- REQUIRED: must come early, right after <body> -->
{AJAX}

<header class="site-header">
	<a class="logo" href="/"><img src="{THEME}/images/logo.svg" alt=""></a>

	<!-- login / registration panel (login.tpl) -->
	<div class="user-panel">{login}</div>

	<!-- category menu (catmenu.tpl) -->
	<nav class="main-nav">{catmenu}</nav>
</header>

<!-- breadcrumbs; empty on the main page -->
[not-available=main]
<div class="breadcrumbs">{speedbar}</div>
[/not-available]

<div class="layout">

	<main class="layout__content">

		<!-- Example: a promo block shown only on the main page.
		     Only the parameters actually needed are used here;
		     see 09-main-and-global-template-tags.md for the rest. -->
		[available=main]
		<section class="promo">
			{custom name="promo" template="custom" limit="4" order="date" sort="desc" cache="30m"}
		</section>
		[/available]

		<!-- REQUIRED: service messages and errors, placed before {content} -->
		{info}

		<!-- REQUIRED: the actual page body for every section -->
		{content}

	</main>

	<aside class="layout__sidebar">

		<!-- The search form itself is a separate template (search.tpl,
		     tags {searchtable} / {searchfield} — see 53-search-form.md).
		     main.tpl only hosts the documented global modules below. -->
		<div class="widget">{calendar}</div>

		<div class="widget">
			<h3>Top news</h3>
			{topnews}
		</div>

		<!-- shown only to registered groups; IDs are comma-separated -->
		[group=3,4,5]
		<div class="widget">
			<a class="btn" href="/index.php?do=addnews">Add news</a>
		</div>
		[/group]

		<div class="widget">{vote}</div>

	</aside>

</div>

<footer class="site-footer">
	<p>&copy; My DLE site</p>
</footer>

</body>
</html>
