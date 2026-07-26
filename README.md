<div align="center">

# 🧩 DLE Template Skill

**Design, edit, and debug [DataLife Engine (DLE)](https://dle-news.com) templates with the correct tags — an AI agent skill bundled with the official DLE documentation, fully offline.**

![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)
![DataLife Engine 20.0](https://img.shields.io/badge/DataLife%20Engine-20.0-blue)
![Format: Agent Skills](https://img.shields.io/badge/format-Agent%20Skills-8A2BE2)
![Docs: offline](https://img.shields.io/badge/docs-offline-success)

**Languages:** [English](#-english) · [فارسی](#-فارسی) · [Русский](#-русский)

</div>

---

<a name="english"></a>
## 🇬🇧 English

### DataLife Engine template & tag assistant

An **agent skill** (Agent Skills format) that turns any compatible AI assistant into a DataLife Engine template expert. It teaches the assistant how DLE `.tpl` files and template tags work, and forces it to look things up in the bundled official documentation instead of guessing — so you get templates that actually work.

### ✨ Features

- **Correct tag handling** for both DLE tag families: output tags `{name}` and conditional block tags `[name]...[/name]`.
- **A routing table** that maps every template task (main.tpl, short/full story, comments, profile, search, static pages, PM, RSS, etc.) to the right documentation file.
- **The complete official DLE 20.0 documentation** bundled offline under `references/` — all 70 published topics plus a tag index of 421 tags.
- **Working examples** under `examples/` — a minimal `main.tpl` and `shortstory.tpl` whose every tag is verified against the docs.
- **Broad coverage:** SEF URLs, additional fields (xfields), category configuration, and the module-development API.

### 📁 Structure

```text
dle-template-skill/            # this repository
├── README.md
├── LICENSE
└── dle-template/              # ← the skill folder (copy this one)
    ├── SKILL.md               # skill entry point (instructions + routing table)
    ├── examples/
    │   ├── main.tpl           # minimal main layout with all required tags
    │   └── shortstory.tpl     # news listing card
    └── references/
        ├── tag-index.md       # index of ~410 tags → source file
        └── raw/               # 70 official DLE documentation topics
```

> **Note on file numbering:** files in `references/raw/` keep the official DLE topic numbers, and DLE's own documentation skips 1, 4, 5, 16, 35, 36 and 71 — so **all 70 published topics are included**. A gap in the numbers is not a missing file.

### 🚀 How to use it as a skill

1. Clone or download this repository:

   ```bash
   git clone https://github.com/apapar/dle-template-skill.git
   ```

2. Copy the **`dle-template/`** folder into your agent's skills directory (for tools that support the Agent Skills format, this is usually a `skills/` folder):

   ```bash
   cp -r dle-template-skill/dle-template ~/.claude/skills/
   ```

3. The assistant loads `SKILL.md` automatically when your task matches its description (building, editing, or debugging DLE templates or tags).

You can also just open `dle-template/SKILL.md` and `dle-template/references/` and use them as a plain offline DLE reference.

### 🤝 Contributing

Pull requests are welcome — especially fixes to tag definitions, new examples, or documentation updates for newer DLE versions.

### 📄 License & credits

The skill wrapper (`SKILL.md`, the examples and the indexes) is released under the **[MIT License](LICENSE)**.
The documentation under `references/` belongs to the **DataLife Engine** authors (SoftNews Media Group) and is included here for offline reference only; all rights to it remain with the original authors.

---

<div dir="rtl">

<a name="فارسی"></a>
## 🇮🇷 فارسی

### دستیار طراحی تمپلیت و تگ‌های دیتالایف انجین

یک **agent skill** (با فرمت Agent Skills) که هر دستیار هوش مصنوعیِ سازگار را به یک متخصص تمپلیت دیتالایف انجین تبدیل می‌کند. به دستیار یاد می‌دهد که فایل‌های `.tpl` و تگ‌های تمپلیت DLE چطور کار می‌کنند و مجبورش می‌کند به‌جای حدس زدن، موضوع را در مستندات رسمیِ همراه پیدا کند — تا تمپلیتی بگیری که واقعاً کار کند.

### ✨ امکانات

- **مدیریت درستِ تگ‌ها** در هر دو خانوادهٔ DLE: تگ‌های خروجی `{name}` و تگ‌های شرطی/بلوکی `[name]...[/name]`.
- **یک جدول مسیریابی** که هر کار تمپلیت (main.tpl، شورت/فول استوری، کامنت‌ها، پروفایل، جستجو، صفحات ثابت، پیام خصوصی، RSS و…) را به فایل درستِ مستندات وصل می‌کند.
- **کل مستندات رسمی DLE نسخهٔ ۲۰.۰** به‌صورت آفلاین در پوشهٔ `references/` — هر ۷۰ موضوع منتشرشده به‌همراه ایندکسی از ۴۲۱ تگ.
- **نمونه‌های آماده** در پوشهٔ `examples/` — یک `main.tpl` و `shortstory.tpl` مینیمال که تمام تگ‌هایشان با مستندات تطبیق داده شده است.
- **پوشش گسترده:** SEF URLها، فیلدهای اضافی (xfields)، تنظیمات دسته‌بندی و API توسعهٔ ماژول.

### 📁 ساختار

<div dir="ltr">

```text
dle-template-skill/            # این ریپازیتوری
├── README.md
├── LICENSE
└── dle-template/              # ← پوشهٔ اسکیل (همین را کپی کن)
    ├── SKILL.md               # نقطهٔ ورود اسکیل (دستورالعمل + جدول مسیریابی)
    ├── examples/
    │   ├── main.tpl           # قالب اصلی مینیمال با همهٔ تگ‌های ضروری
    │   └── shortstory.tpl     # کارت نمایش خبر در لیست
    └── references/
        ├── tag-index.md       # ایندکس حدود ۴۱۰ تگ → فایل مرجع
        └── raw/               # ۷۰ موضوع از مستندات رسمی DLE
```

</div>

> **نکته دربارهٔ شماره‌گذاری فایل‌ها:** فایل‌های `references/raw/` شمارهٔ موضوعات رسمی DLE را نگه داشته‌اند و خودِ مستندات رسمی DLE شماره‌های ۱، ۴، ۵، ۱۶، ۳۵، ۳۶ و ۷۱ را ندارد — پس **هر ۷۰ موضوعِ منتشرشده کامل موجود است**. جای خالی در شماره‌ها به معنای فایل گم‌شده نیست.

### 🚀 نحوهٔ استفاده به‌عنوان اسکیل

۱. این ریپازیتوری را clone یا دانلود کن:

<div dir="ltr">

```bash
git clone https://github.com/apapar/dle-template-skill.git
```

</div>

۲. پوشهٔ **`dle-template/`** را داخل پوشهٔ skills دستیارت کپی کن (برای ابزارهایی که فرمت Agent Skills را پشتیبانی می‌کنند، معمولاً پوشه‌ای به نام `skills/`):

<div dir="ltr">

```bash
cp -r dle-template-skill/dle-template ~/.claude/skills/
```

</div>

۳. دستیار وقتی کارِ تو با توضیحاتِ اسکیل بخواند (ساخت، ویرایش یا دیباگِ تمپلیت یا تگ DLE)، خودش `SKILL.md` را بارگذاری می‌کند.

همچنین می‌توانی مستقیم `dle-template/SKILL.md` و پوشهٔ `references/` را باز کنی و به‌عنوان یک مرجع آفلاینِ معمولیِ DLE استفاده کنی.

### 🤝 مشارکت

ما از توسعه و بروزرسانی استقبال می‌کنیم، به‌ویژه اصلاح تعریف تگ‌ها، مثال‌های تازه، یا به‌روزرسانی مستندات برای نسخه‌های جدیدتر دیتالایف انجین.

### 📄 لایسنس و اعتبار

خودِ اسکیل (`SKILL.md`، نمونه‌ها و ایندکس‌ها) تحت لایسنس **[MIT](LICENSE)** منتشر شده است.
مستنداتِ داخل `references/` متعلق به سازندگان **DataLife Engine** (SoftNews Media Group) است و صرفاً برای مرجعِ آفلاین اینجا قرار گرفته؛ تمامی حقوق آن متعلق به صاحبان اصلی است.

</div>

---

<a name="русский"></a>
## 🇷🇺 Русский

### Помощник по шаблонам и тегам DataLife Engine

**Навык для ИИ-агента** (в формате Agent Skills), который превращает любого совместимого ИИ-ассистента в э��сперта по шаблонам DataLife Engine. Он объясняет ассистенту, как работают файлы `.tpl` и теги шаблонов DLE, и заставляет его сверяться с приложенной официальной документацией вместо догадок — чтобы вы получали рабочие шаблоны.

### ✨ Возможности

- **Правильная работа с тегами** обоих семейств DLE: теги вывода `{name}` и условные блочные теги `[name]...[/name]`.
- **Таблица маршрутизации**, которая связывает каждую задачу по шаблонам (main.tpl, короткая/полная новость, комментарии, профиль, поиск, статические страницы, ЛС, RSS и т.д.) с нужным файлом документации.
- **Полная официальная документация DLE 20.0** офлайн в папке `references/` — все 70 опубликованных тем и индекс из 421 тега.
- **Готовые примеры** в папке `examples/` — минимальные `main.tpl` и `shortstory.tpl`, все теги в них сверены с документацией.
- **Широкий охват:** SEF-ссылки, дополнительные поля (xfields), настройка категорий и API для разработки модулей.

### 📁 Структура

```text
dle-template-skill/            # этот репозиторий
├── README.md
├── LICENSE
└── dle-template/              # ← папка навыка (копируйте её)
    ├── SKILL.md               # точка входа навыка (инструкции + таблица маршрутизации)
    ├── examples/
    │   ├── main.tpl           # минимальный основной шаблон со всеми обязательными тегами
    │   └── shortstory.tpl     # карточка новости в списке
    └── references/
        ├── tag-index.md       # индекс ~410 тегов → исходный файл
        └── raw/               # 70 тем официальной документации DLE
```

> **О нумерации файлов:** файлы в `references/raw/` сохраняют официальные номера тем DLE, а сама официальная документация пропускает номера 1, 4, 5, 16, 35, 36 и 71 — так что **все 70 опубликованных тем включены**. Пропуск в нумерации не означает отсутствующий файл.

### 🚀 Как использовать как навык

1. Клонируйте или скачайте этот репозиторий:

   ```bash
   git clone https://github.com/apapar/dle-template-skill.git
   ```

2. Скопируйте папку **`dle-template/`** в каталог навыков вашего агента (для инструментов с поддержкой формата Agent Skills это обычно папка `skills/`):

   ```bash
   cp -r dle-template-skill/dle-template ~/.claude/skills/
   ```

3. Ассистент автоматически загрузит `SKILL.md`, когда ваша задача совпадёт с его описанием (создание, редактирование или отладка шаблонов или тегов DLE).

Также можно просто открыть `dle-template/SKILL.md` и `references/` и использовать их как обычный офлайн-справочник по DLE.

### 🤝 Участие

Pull-запросы приветствуются — особенно исправления определений тегов, новые примеры или обновления документации для новых версий DLE.

### 📄 Лицензия и авторство

Сама обёртка навыка (`SKILL.md`, примеры и индексы) распространяется по лицензии **[MIT](LICENSE)**.
Документация в `references/` принадлежит авторам **DataLife Engine** (SoftNews Media Group) и включена здесь только для офлайн-справки; все права на неё остаются у первоначальных авторов.
