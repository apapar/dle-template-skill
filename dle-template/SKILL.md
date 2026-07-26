---
name: dle-template
description: DataLife Engine (DLE) template design and tag usage. Use whenever the user is building, editing, or debugging a DLE template (.tpl files like main.tpl, shortstory.tpl, fullstory.tpl), asks about DLE template tags ({content}, {custom}, {tags}, [available], [category], [group], etc.), wants to design a DLE theme/layout, works with DLE short/full story tags, comments, user profile, or any DLE CMS feature — even if they don't explicitly say "DLE" but mention .tpl files, {custom} blocks, or DataLife Engine. Also covers DLE SEF URLs, xfields, category config, and module development API.
---

# DLE Template Skill

Design DataLife Engine (DLE) templates and use DLE's template tags correctly. The official documentation is bundled offline under `references/` so you can answer accurately without the web.

## How DLE templates work (read this first)

DLE separates layout into `.tpl` files. Every page is assembled from a **main layout** (`main.tpl`) plus content blocks. There are two families of template tags:

- **Output tags** `{name}` — the engine replaces them with content. e.g. `{content}`, `{custom ...}`, `{tags}`, `{login}`.
- **Conditional block tags** `[name]...[/name]` and `[not-name]...[/not-name]` — show/hide their inner text based on a condition. e.g. `[category=1,2]...[/category]`, `[group=1]...[/group]`, `[available=main]...[/available]`.

Block tags frequently take parameters: `[name=VALUE]`. Many can be inverted with `not-`, and several accept comma-separated lists of values. Get this distinction right — it's the #1 source of template bugs.

## The mandatory lookup step

**Before using any DLE tag you're not 100% sure about, look it up.** You have two lookup tools:

1. **`references/tag-index.md`** — an index of all 421 template tags mapped to the file that documents them. Read this first when you need to find where a tag is defined. Search it for the tag name.

2. **`references/raw/`** — 70 official doc topics, one file each (e.g. `40-short-story.md`, `41-full-story.md`). Read the specific file the index points you to, *not* everything.

Never invent a tag's parameters from memory. DLE tags have many optional parameters (the `{custom}` tag alone has 15+), and guessing produces templates that silently fail.

If a detail is genuinely not covered by the bundled docs, say so explicitly instead of filling the gap with a guess. The `references/raw/` filenames use the official topic numbers exactly as DLE publishes them, and DLE's own numbering skips 1, 4, 5, 16, 35, 36, and 71 — so all 70 published topics are present. A gap in the numbers is not a missing file.

## Routing table — which file to read for which task

Read the file(s) in the right column before producing output for that task. The `NN-` prefix is the official topic number; ignore it when reasoning about order.

| If the task is about… | Read this file(s) in `references/raw/` |
|---|---|
| Overall page layout, `main.tpl`, global tags `{AJAX}`/`{info}`/`{content}`/`{custom}`/`[available]`/`[category]`/`[group]` | `09-main-and-global-template-tags.md` |
| The `main.tpl` file itself, all of its tags | `38-main-website-template.md` |
| Short story listing (`shortstory.tpl`) | `40-short-story.md` |
| Full story page (`fullstory.tpl`) | `41-full-story.md` |
| Comments (`comments.tpl`) | `42-comments.md` |
| Comment submission form (`addcomments.tpl`) | `45-comment-submission-form.md` |
| User profile (`userinfo.tpl` / `profile_popup.tpl`) | `51-user-profile.md`, `52-user-profile-card.md` |
| Login/authorization panel (`login.tpl`) | `39-authorization-panel-on-the-website.md` |
| Registration (`registration.tpl`) | `50-registration-on-the-website.md` |
| Search (`searchresult.tpl`, `search_form`) | `53-search-form.md`, `54-search-results.md`, `55-quick-search-results.md` |
| Static pages (`static.tpl`) | `60-static-pages.md`, `23-static-pages.md` |
| Category menu (`catmenu.tpl`) | `43-category-menu.md` |
| Personal messages (`pm.tpl`) | `61-personal-messages.md`, `12-personal-messages.md` |
| Voting/polls | `63-voting-on-the-website.md`, `46-polls-in-news.md`, `22-polls.md` |
| Top news, related news, speedbar, RSS, tag cloud | `64-top-news.md`, `65-related-news.md`, `68-speedbar-module.md`, `69-rss-news-feed.md`, `70-rss-informer.md`, `62-tag-cloud.md` |
| Additional fields / xfields | `26-additional-fields.md` |
| SEF URLs and URL patterns | `13-sef-urls-and-configuration.md` |
| File downloads/attachments | `44-file-downloads.md` |
| News preview, prev/next navigation | `48-news-preview.md`, `49-previous-and-next-pages-for-news.md` |
| Statistics page, info/errors, password recovery, feedback | `56-website-statistics.md`, `57-information-and-error-output.md`, `59-password-recovery.md`, `58-e-mail-sending-form.md` |
| Site shutdown page, ban / access denied page | `66-temporary-website-shutdown.md`, `67-user-ban-or-access-denied-to-the-website.md` |
| Favorites/bookmarks | `11-favorites-bookmarks.md` |
| Tags used inside news *content* (BBCode-like, e.g. `[hide]`, `[page]`) | `10-tags-used-when-writing-news.md` |
| Adding/editing news forms and their tags | `47-adding-news.md`, `17-adding-news.md`, `18-editing-news.md` |
| Developing custom modules / API | `72-developing-and-connecting-modules.md`, `74-api-for-module-development.md`, `73-connecting-modules-in-the-admin-panel.md` |
| Plugin system, cron, RSS export | `21-plugin-system.md`, `75-running-functions-via-cron.md`, `76-rss-export.md` |
| Categories, user groups, advertising (admin side) | `25-category-configuration.md`, `24-user-groups.md`, `29-advertising-management.md` |
| Mobile/smartphone templates | `14-smartphone-support.md` |
| Install, update, requirements, general orientation | `06-script-installation.md`, `07-script-update.md`, `77-system-requirements.md`, `08-getting-started-and-templates.md`, `37-general-information.md` |

If the topic isn't in the table, open `references/tag-index.md` and search for the tag/keyword — it lists the source file for every tag.

## Working examples

`examples/` contains minimal but valid starting points you can adapt:

- `examples/main.tpl` — the required skeleton of a main layout, with every mandatory tag in the right place.
- `examples/shortstory.tpl` — a clean news-listing card.

Use them as structural references. Always verify any tag you add on top of them against `references/`.

## Workflow when designing a template

1. Identify which `.tpl` file the user is working on (or which page type). If unclear, ask: "Is this for the main layout, a short story list, the full article page, a profile, etc.?"
2. Read the matching file(s) from the routing table above. Do this **before** writing any tag.
3. For any tag you plan to emit, confirm its exact name and parameters against the doc — especially `{custom}` (parameters), `[available=X]` (valid section values), and short/full-story field tags like `{title}`, `{short-story}`, `[full-link]`.
4. Produce the `.tpl` markup. Preserve the tag syntax exactly: curly braces for outputs, square brackets for blocks, no extra spaces inside `{content}`.
5. Briefly note which tags do what, so the user can tweak confidently.

## Output conventions

- Default to writing valid `.tpl` files using the exact tag spellings from the docs.
- When showing a `{custom ...}` block, only include the parameters relevant to the user's goal — don't dump all of them. Mention that others exist.
- For conditional blocks, prefer showing the `[not-X]` inverse too when the layout likely needs an else-branch.
- If a user asks for a tag that doesn't exist in DLE, say so and point to the closest real one from the index — don't fabricate.

## Notes & gotchas

- **Mandatory tags in `main.tpl`:** `{headers}` (inside `<head>`), `{AJAX}` (preferably right after `<body>`), `{info}`, and `{content}`. Missing any of them breaks the page. If you move script loading with `{jsfiles}`, `{AJAX}` must come *after* `{jsfiles}`.
- `{THEME}` is the path to the active template folder; always use it to prefix asset URLs in `main.tpl`.
- `{custom}` is powerful but each use adds a DB query; warn the user when they stack many on one page.
- **`[available=X]` section codes** are the values documented for the `available` parameter in `09-main-and-global-template-tags.md`: `main`, `date`, `cat`, `showfull`, `search`, `xfsearch`, `userinfo`, `register`, `stats`, `pm`, `feedback`, `favorites`, `newposts`, `addnews`, `lastnews`, `lastcomments`, `lostpassword`, `static`, `catalog`, `alltags`, `tags`, `allnews`. `available="global"` (used in `{custom}`) means every section.
- **Combining sections:** several sections are listed with `|`, e.g. `[available=userinfo|register|main]...[/available]`, and `[not-available=userinfo|register|main]` is the inverse (everywhere *except* those sections).
- **Separator meaning differs per tag — don't mix them up:**
  - `[custom=block1,block2]` requires **all** listed blocks to have content; `[custom=block1|block2]` requires **any one** of them.
  - `[category=1,2,3,7-10]` and `[group=1,2,3]` accept comma-separated ID lists and dash ranges.
  - `{custom}` selection parameters accept lists and ranges too, plus the inverse forms `idexclude` and `categoryexclude`, and `subcat="yes"` / `subcat="only"`.
- Conditions can be nested, e.g. `[available=cat]` → `[category=1]` → `[page-count=1]`, which is how "first page of one specific category" blocks are built (see `09-main-and-global-template-tags.md`).
- Device/section helpers documented in topic 9 are easy to miss: `[smartphone]`, `[tablet]`, `[desktop]`, `[android]`, `[ios]`, `[logged]`, `{customcomments ...}`, `{catmenu ...}` parameters, `cache-id`, and `[script]...[/script]` for injecting JS safely.
- `[declination=X]word|endings[/declination]` handles plural forms and pairs well with `{comments-num}` or `{views}`.
- Cache parameters accept duration suffixes: `30m`, `2h`, `1d`.

When in doubt about any of the above, the authoritative answer is in the bundled `references/` docs — read them rather than guessing.
