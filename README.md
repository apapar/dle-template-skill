# DLE Template Skill

> An AI agent skill that helps you design, edit, and debug **DataLife Engine (DLE)** templates using the correct template tags — bundled with the full official DLE documentation offline.

**Languages:** [English](#english) · [فارسی](#فارسی) · [Русский](#русский)

---

<a name="english"></a>
## 🇬🇧 English

### DLE Template Skill — DataLife Engine template & tag assistant

An **agent skill** (Agent Skills format) that turns any compatible AI assistant into a DataLife Engine template expert. It teaches the assistant how DLE `.tpl` files and template tags work, and forces it to look up the bundled official documentation instead of guessing — so you get templates that actually work.

### ✨ Features

- Correct handling of the two DLE tag families: output tags `{name}` and conditional block tags `[name]...[/name]`.
- A routing table that maps every template task (main.tpl, short/full story, comments, profile, search, static pages, PM, RSS, etc.) to the right documentation file.
- The **full official DLE 20.0 documentation** bundled offline under `references/` (70 topics + a tag index of ~410 tags).
- Covers SEF URLs, additional fields (xfields), category config, and the module-development API.

### 📁 Structure

```
dle-template/
├── SKILL.md                 # Skill entry point (instructions + routing table)
└── references/
    ├── tag-index.md         # Index of ~410 tags → source file
    └── raw/                 # 70 official DLE documentation topics
```

### 🚀 How to use it as a skill

1. Download or clone this repository.
2. Copy the `dle-template/` folder into your agent's skills directory (for tools that support the Agent Skills format, this is usually a `skills/` folder).
3. The assistant loads `SKILL.md` automatically when your task matches its description (building/editing/debugging DLE templates or tags).

You can also just open `SKILL.md` and `references/` and use them as a normal offline DLE reference.

### 🤝 Contributing

Pull requests are welcome — especially fixes to tag definitions, new examples, or documentation updates for newer DLE versions.

### 📄 License & credits

The documentation under `references/` belongs to the **DataLife Engine** authors (SoftNews Media Group) and is included here for offline reference only. The skill wrapper (`SKILL.md`, indexes) is provided for the community.

---

<div dir="rtl">

<a name="فارسی"></a>
## 🇮🇷 فارسی

### اسکیل تمپلیت DLE — دستیار طراحی تمپلیت و تگ‌های دیتالایف انجین

یک **agent skill** (با فرمت Agent Skills) که هر دستیار هوش مصنوعیِ سازگار را به یک متخصص تمپلیت دیتالایف انجین تبدیل می‌کند. به دستیار یاد می‌دهد فایل‌های `.tpl` و تگ‌های تمپلیت DLE چطور کار می‌کنند و مجبورش می‌کند به‌جای حدس زدن، مستندات رسمیِ همراه را بخواند — تا تمپلیتی بگیری که واقعاً کار کند.

### ✨ امکانات

- مدیریت درستِ دو خانوادهٔ تگِ DLE: تگ‌های خروجی `{name}` و تگ‌های شرطی/بلوکی `[name]...[/name]`.
- یک جدول مسیریابی که هر کار تمپلیت (main.tpl، شورت/فول استوری، کامنت‌ها، پروفایل، جستجو، صفحات ثابت، پیام خصوصی، RSS و…) را به فایل درستِ مستندات وصل می‌کند.
- **کل مستندات رسمی DLE نسخهٔ ۲۰.۰** به‌صورت آفلاین در پوشهٔ `references/` (۷۰ موضوع + ایندکسِ حدود ۴۱۰ تگ).
- پوشش SEF URLها، فیلدهای اضافی (xfields)، تنظیمات دسته‌بندی و API توسعهٔ ماژول.

### 📁 ساختار

```
dle-template/
├── SKILL.md                 # نقطهٔ ورود اسکیل (دستورالعمل + جدول مسیریابی)
└── references/
    ├── tag-index.md         # ایندکس حدود ۴۱۰ تگ → فایل مرجع
    └── raw/                 # ۷۰ موضوع از مستندات رسمی DLE
```

### 🚀 نحوهٔ استفاده به‌عنوان اسکیل

۱. این ریپازیتوری را دانلود یا clone کن.

۲. پوشهٔ `dle-template/` را داخل پوشهٔ skills دستیارت کپی کن (برای ابزارهایی که فرمت Agent Skills را پشتیبانی می‌کنند، معمولاً پوشه‌ای به نام `skills/`).

۳. دستیار وقتی کارِ تو با توضیحاتِ اسکیل بخواند (ساخت/ویرایش/دیباگِ تمپلیت یا تگ DLE)، خودش `SKILL.md` را بارگذاری می‌کند.

همچنین می‌توانی مستقیم `SKILL.md` و پوشهٔ `references/` را باز کنی و به‌عنوان یک مرجع آفلاینِ معمولیِ DLE استفاده کنی.

### 🤝 مشارکت

ما از توسعه و بروزرسانی استقبال میکنیم به‌ویژه اصلاح تعریف تگ‌ها، مثال‌های تازه، یا به‌روزرسانی مستندات برای نسخه‌های جدیدتر دیتالایف انجین .

### 📄 لایسنس و اعتبار

مستنداتِ داخل `references/` متعلق به سازندگان **DataLife Engine** (SoftNews Media Group) است و صرفاً برای مرجعِ آفلاین اینجا قرار گرفته. خودِ اسکیل (`SKILL.md` و ایندکس‌ها) برای جامعهٔ کاربری ارائه شده .

</div>

---

<a name="русский"></a>
## 🇷🇺 Русский

### DLE Template Skill — помощник по шаблонам и тегам DataLife Engine

**Навык для ИИ-агента** (в формате Agent Skills), который превращает любого совместимого ИИ-ассистента в эксперта по шаблонам DataLife Engine. Он объясняет ассистенту, как работают файлы `.tpl` и теги шаблонов DLE, и заставляет его сверяться с приложенной официальной документацией вместо догадок — чтобы вы получали рабочие шаблоны.

### ✨ Возможности

- Правильная работа с двумя семействами тегов DLE: теги вывода `{name}` и условные блочные теги `[name]...[/name]`.
- Таблица маршрутизации, которая связывает каждую задачу по шаблонам (main.tpl, короткая/полная новость, комментарии, профиль, поиск, статические страницы, ЛС, RSS и т.д.) с нужным файлом документации.
- **Полная официальная документация DLE 20.0** офлайн в папке `references/` (70 тем + индекс ~410 тегов).
- Охватывает SEF-ссылки, дополнительные поля (xfields), настройку категорий и API для разработки модулей.

### 📁 Структура

```
dle-template/
├── SKILL.md                 # Точка входа навыка (инструкции + таблица маршрутизации)
└── references/
    ├── tag-index.md         # Индекс ~410 тегов → исходный файл
    └── raw/                 # 70 тем официальной документации DLE
```

### 🚀 Как использовать как навык

1. Скачайте или клонируйте этот репозиторий.
2. Скопируйте папку `dle-template/` в каталог навыков вашего агента (для инструментов с поддержкой формата Agent Skills это обычно папка `skills/`).
3. Ассистент автоматически загрузит `SKILL.md`, когда ваша задача совпадёт с его описанием (создание/редактирование/отладка шаблонов или тегов DLE).

Также можно просто открыть `SKILL.md` и `references/` и использовать их как обычный офлайн-справочник по DLE.

### 🤝 Участие

Pull-запросы приветствуются — особенно исправления определений тегов, новые примеры или обновления документации для новых версий DLE.

### 📄 Лицензия и авторство

Документация в `references/` принадлежит авторам **DataLife Engine** (SoftNews Media Group) и включена сюда только для офлайн-справки. Сама обёртка навыка (`SKILL.md`, индексы) предоставлена для сообщества.
