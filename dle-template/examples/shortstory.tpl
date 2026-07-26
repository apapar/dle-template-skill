<!-- shortstory.tpl — one card in a news listing.
     Every tag below is documented in references/raw/40-short-story.md -->

<article class="post">

	<h2 class="post__title">
		[full-link]{title}[/full-link]
	</h2>

	<div class="post__meta">
		<span class="post__date">{date}</span>
		<span class="post__author">{author}</span>
		<span class="post__cat">{link-category}</span>

		<!-- marker shown only while the item still counts as new -->
		[new]<span class="badge badge--new">New</span>[/new]
	</div>

	<div class="post__body">
		{short-story}
	</div>

	<div class="post__footer">
		<!-- [declination] picks the right plural form for the number -->
		<span class="post__views">{views} [declination={views}]view|s||s[/declination]</span>
		<span class="post__comments">{comments-num} [declination={comments-num}]comment|s||s[/declination]</span>

		[full-link]<span class="post__more">Read more</span>[/full-link]
	</div>

</article>
