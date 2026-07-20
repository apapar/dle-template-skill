---
name: dle-template
description: DataLife Engine (DLE) template design and tag usage. Use whenever the user is building, editing, or debugging a DLE template (.tpl files like main.tpl, shortstory.tpl, fullstory.tpl), asks about DLE template tags ({content}, {custom}, {tags}, [available], [category], [group], etc.), wants to design a DLE theme/layout, works with DLE short/full story tags, comments, user profile, or any DLE CMS feature — even if they don't explicitly say "DLE" but mention .tpl files, {custom} blocks, or DataLife Engine. Also covers DLE SEF URLs, xfields, category config, and module development API.
---

# DLE Template Skill

Design DataLife Engine (DLE) templates and use DLE's template tags correctly. The full official documentation is bundled offline under `references/` so you can answer accurately without the web.

## How DLE templates work (read this first)

DLE separates layout into `.tpl` files. Every page is assembled from a **main layout** (`main.tpl`) plus content blocks. There are two families of template tags:

- **Output tags** `{name}` — the engine replaces them with content. e.g. `{content}`, `{custom ...}`, `{tags}`, `{login}`.
- **Conditional block tags** `[name]...[/name]` and `[not-name]...[/not-name]` — show/hide their inner text based on a condition. e.g. `[category=1,2]...[/category]`, `[group=1]...[/group]`, `[available=main]...[/available]`.

Block tags frequently take parameters: `[name=VALUE]`. They can be inverted with `not-` and combined with `|` (any match) or `,` (all match). Get this distinction right — it's the #1 source of template bugs.

## The mandatory lookup step

**Before using any DLE tag you're not 100% sure about, look it up.** You have two lookup tools:

1. **`references/tag-index.md`** — an index of all ~410 template tags mapped to the file that documents them. Read this first when you need to find where a tag is defined. Search it for the tag name.

2. **`references/raw/`** — the 71 official doc topics, one file each (e.g. `40-short-story.md`, `41-full-story.md`). Read the specific file the index points you to, *not* everything.

Never invent a tag's parameters from memory. DLE tags have many optional parameters (the `{custom}` tag alone has 20+), and guessing produces templates that silently fail.

## Routing table — which file to read for which task

Read the file(s) in the right column before producing output for that task. The `NN-` prefix is just a sort key; ignore it.

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
| Search (`searchresult.tpl`, `search_form`) | `53-search-form.md`, `54-search-results.md` |
| Static pages (`static.tpl`) | `60-static-pages.md` |
| Category menu (`catmenu.tpl`) | `43-category-menu.md` |
| Personal messages (`pm.tpl`) | `61-personal-messages.md` |
| Voting/polls | `63-voting-on-the-website.md`, `46-polls-in-news.md` |
| Top news, related news, speedbar, RSS, tag cloud | `64-top-news.md`, `65-related-news.md`, `68-speedbar-module.md`, `69-rss-news-feed.md`, `62-tag-cloud.md` |
| Additional/xfields | `26-additional-fields.md` |
| SEF URLs and URL patterns | `13-sef-urls-and-configuration.md` |
| File downloads/attachments | `44-file-downloads.md` |
| Statistics page, info/errors, password recovery, feedback | `56-website-statistics.md`, `57-information-and-error-output.md`, `59-password-recovery.md`, `58-e-mail-sending-form.md` |
| Tags used inside news *content* (BBCode-like, e.g. `[hide]`, `[page]`) | `10-tags-used-when-writing-news.md` |
| Developing custom modules / API | `72-developing-and-connecting-modules.md`, `74-api-for-module-development.md`, `73-connecting-modules-in-the-admin-panel.md` |
| Plugin system, cron, RSS export | `21-plugin-system.md`, `75-running-functions-via-cron.md`, `76-rss-export.md` |
| Categories, user groups, advertising, polls config (admin side) | `25-category-configuration.md`, `24-user-groups.md`, `29-advertising-management.md`, `22-polls.md` |

If the topic isn't in the table, open `references/tag-index.md` and search for the tag/keyword — it lists the source file for every tag.

## Workflow when designing a template

1. Identify which `.tpl` file the user is working on (or which page type). If unclear, ask: "Is this for the main layout, a short story list, the full article page, a profile, etc.?"
2. Read the matching file(s) from the routing table above. Do this **before** writing any tag.
3. For any tag you plan to emit, confirm its exact name and parameters against the doc — especially `{custom}` (parameters), `[available=X]` (valid section values), and short/full-story field tags like `{title}`, `{short-story}`, `[full-link]`, etc.
4. Produce the `.tpl` markup. Preserve the tag syntax exactly: curly braces for outputs, square brackets for blocks, no extra spaces inside `{content}`.
5. Briefly note which tags do what, so the user can tweak confidently.

## Output conventions

- Default to writing valid `.tpl` files using the exact tag spellings from the docs.
- When showing a `{custom ...}` block, only include the parameters relevant to the user's goal — don't dump all 20+. Mention that others exist.
- For conditional blocks, prefer showing the `[not-X]` inverse too when the layout likely needs an else-branch.
- If a user asks for a tag that doesn't exist in DLE, say so and point to the closest real one from the index — don't fabricate.

## Notes & gotchas

- `{custom}` is powerful but each use adds a DB query; warn the user when they stack many on one page.
- `[available]` accepts a fixed set of section codes (`main`, `cat`, `showfull`, `userinfo`, `register`, `static`, `search`, …) listed in `09-main-and-global-template-tags.md`. Combine with `|` (any) — there is no AND, and `,` inside `[available]` is **not** valid for sections (commas are valid for `[category]` and `[group]`).
- `{THEME}` is the path to the active template folder; always use it to prefix asset URLs in `main.tpl`.
- Place `{AJAX}` right after `<body>` and `{info}` right before `{content}` — this ordering matters for error display.
- Cache parameters accept duration suffixes: `30m`, `2h`, `1d`.

When in doubt about any of the above, the authoritative answer is in the bundled `references/` docs — read them rather than guessing.
