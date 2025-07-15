import re
import os
import requests


# 使用 API 获取数据
def fetch_commands_from_api(lang="en"):
    url = "https://labex.io/api/v2/courses/linux-commands-cheatsheet/labs"
    if lang != "en":
        url += f"?lang={lang}"
    print(f"Fetching commands from {url}...")
    try:
        response = requests.get(url, timeout=10)
        response.raise_for_status()  # Will raise an HTTPError for bad responses (4xx or 5xx)
        api_data = response.json()
    except requests.exceptions.RequestException as e:
        print(f"Error fetching data from API: {e}")
        return []

    commands = []
    for stage in api_data.get("stages", []):
        category = stage.get("name")
        for lab in stage.get("labs", []):
            lab_name = lab.get("name")
            lab_alias = lab.get("alias")

            if not all([lab_name, lab_alias]):
                continue

            command_name = ""
            # Parse command name from lab name, ONLY for English
            if lang == "en":
                command_parts = lab_name.split()
                if len(command_parts) > 1 and command_parts[0] == "Linux":
                    command_name = command_parts[1]
                else:
                    command_name = lab_name  # Fallback to full name

            commands.append(
                {
                    "category": category,
                    "name": command_name,
                    "alias": lab_alias,
                    "link": f"https://labex.io/tutorials/{lab_alias}",
                    "description": lab.get("description"),
                }
            )
    return commands


# 使用 TailwindCSS 和 Google Fonts 渲染为 HTML
def render_html(commands, lang="en"):
    # 计算命令总数
    total_commands = len(commands)
    # 多语言文本
    translations = {
        "en": {
            "title": "Linux Commands Cheat Sheet PDF - 2025 | LabEx",
            "description": "A full list of essential Linux commands with detailed explanations and examples. Download the best linux commands cheat sheet PDF for beginners and advanced users.",
            "keywords": "Linux commands, Linux cheat sheet, linux commands cheat sheet pdf, command-line guide, Linux tips, Linux reference, Linux tutorials",
            "og_title": "Linux Commands Cheat Sheet PDF - 2025 | LabEx",
            "og_description": "A full list of essential Linux commands with detailed explanations and examples. Download the best linux commands cheat sheet PDF for beginners and advanced users.",
            "twitter_title": "Linux Commands Cheat Sheet PDF - 2025 | LabEx",
            "twitter_description": "A comprehensive Linux commands cheat sheet with detailed explanations and examples. Download the best linux commands reference PDF for beginners and advanced users.",
            "h1": "Linux Commands Cheat Sheet",
            "h1_sub": f"A clean and minimal guide to {total_commands} Linux commands",
            "download_pdf": "Download PDF",
            "add_to_bookmarks": "Add to Bookmarks",
            "copyright": f"&copy; 2025 <a href='https://labex.io'>LabEx</a>. All rights reserved.",
        },
        "zh": {
            "title": "Linux 命令大全速查表 PDF - 2025 | LabEx",
            "description": "一份包含详细解释和示例的 Linux 命令大全。为初学者和高级用户提供最佳的 Linux 命令速查表 PDF 下载。",
            "keywords": "Linux 命令，Linux 速查表，linux 命令速查表 pdf, 命令行指南，Linux 技巧，Linux 参考，Linux 教程",
            "og_title": "Linux 命令大全速查表 PDF - 2025 | LabEx",
            "og_description": "一份包含详细解释和示例的 Linux 命令大全。为初学者和高级用户提供最佳的 Linux 命令速查表 PDF 下载。",
            "twitter_title": "Linux 命令大全速查表 PDF - 2025 | LabEx",
            "twitter_description": "一份包含详细解释和示例的综合性 Linux 命令速查表。为初学者和高级用户提供最佳的 Linux 命令参考 PDF 下载。",
            "h1": "Linux 命令大全速查表",
            "h1_sub": f"一份包含 {total_commands} 个 Linux 命令的极简指南",
            "download_pdf": "下载 PDF",
            "add_to_bookmarks": "添加到书签",
            "copyright": f"&copy; 2025 <a href='https://labex.io'>LabEx</a>. 版权所有。",
        },
        "ja": {
            "title": "Linux コマンドチートシート PDF - 2025 | LabEx",
            "description": "詳細な説明と例を含む必須 Linux コマンドの完全なリスト。初心者から上級者向けの最高の Linux コマンドチートシート PDF をダウンロードしてください。",
            "keywords": "Linux コマンド，Linux チートシート，linux コマンド チートシート pdf, コマンドラインガイド，Linux ヒント，Linux リファレンス，Linux チュートリアル",
            "og_title": "Linux コマンドチートシート PDF - 2025 | LabEx",
            "og_description": "詳細な説明と例を含む必須 Linux コマンドの完全なリスト。初心者から上級者向けの最高の Linux コマンドチートシート PDF をダウンロードしてください。",
            "twitter_title": "Linux コマンドチートシート PDF - 2025 | LabEx",
            "twitter_description": "詳細な説明と例を含む包括的な Linux コマンドチートシート。初心者から上級者向けの最高の Linux コマンドリファレンス PDF をダウンロードしてください。",
            "h1": "Linux コマンドチートシート",
            "h1_sub": f"{total_commands} 個の Linux コマンドをまとめたクリーンでミニマルなガイド",
            "download_pdf": "PDF をダウンロード",
            "add_to_bookmarks": "ブックマークに追加",
            "copyright": f"&copy; 2025 <a href='https://labex.io'>LabEx</a>. 無断複写・転載を禁じます。",
        },
        "ko": {
            "title": "리눅스 명령어 치트 시트 PDF - 2025 | LabEx",
            "description": "자세한 설명과 예제가 포함된 필수 리눅스 명령어 전체 목록. 초보자와 고급 사용자를 위한 최고의 리눅스 명령어 치트 시트 PDF 를 다운로드하세요.",
            "keywords": "리눅스 명령어, 리눅스 치트 시트, 리눅스 명령어 치트 시트 pdf, 명령줄 가이드, 리눅스 팁, 리눅스 참조, 리눅스 튜토리얼",
            "og_title": "리눅스 명령어 치트 시트 PDF - 2025 | LabEx",
            "og_description": "자세한 설명과 예제가 포함된 필수 리눅스 명령어 전체 목록. 초보자와 고급 사용자를 위한 최고의 리눅스 명령어 치트 시트 PDF 를 다운로드하세요.",
            "twitter_title": "리눅스 명령어 치트 시트 PDF - 2025 | LabEx",
            "twitter_description": "자세한 설명과 예제가 포함된 포괄적인 리눅스 명령어 치트 시트. 초보자와 고급 사용자를 위한 최고의 리눅스 명령어 참조 PDF 를 다운로드하세요.",
            "h1": "리눅스 명령어 치트 시트",
            "h1_sub": f"{total_commands}개의 리눅스 명령어에 대한 깔끔하고 최소한의 가이드",
            "download_pdf": "PDF 다운로드",
            "add_to_bookmarks": "북마크에 추가",
            "copyright": f"&copy; 2025 <a href='https://labex.io'>LabEx</a>. 모든 권리 보유.",
        },
    }
    t = translations.get(lang, translations["en"])
    html_template = f"""
    <!DOCTYPE html>
    <html lang="{lang}">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>{t['title']}</title>
        <meta
        name="description"
        content="{t['description']}"
        />
        <meta
        name="keywords"
        content="{t['keywords']}"
        />
        <meta name="author" content="labex.io" />
        <meta name="robots" content="index, follow" />
        <link rel="canonical" href="https://linux-commands.labex.io" />

        <!-- Open Graph Tags -->
        <meta
        property="og:title"
        content="{t['og_title']}"
        />
        <meta
        property="og:description"
        content="{t['og_description']}"
        />
        <meta property="og:type" content="website" />
        <meta property="og:url" content="https://linux-commands.labex.io" />
        <meta
        property="og:image"
        content="https://linux-commands.labex.io/assets/og-image.png"
        />
        <meta property="og:site_name" content="Linux Commands Cheat Sheet" />

        <!-- Twitter Card Tags -->
        <meta name="twitter:card" content="summary_large_image" />
        <meta
        name="twitter:title"
        content="{t['twitter_title']}"
        />
        <meta
        name="twitter:description"
        content="{t['twitter_description']}"
        />
        <meta
        name="twitter:image"
        content="https://linux-commands.labex.io/assets/og-image.png"
        />

        <script src="https://cdn.tailwindcss.com"></script>
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
        href="https://fonts.googleapis.com/css2?family=IBM+Plex+Mono&family=Parkinsans:wght@300..800&display=swap"
        rel="stylesheet"
        />
        <!-- Google tag (gtag.js) -->
        <script async src="https://www.googletagmanager.com/gtag/js?id=G-ZFCX52ZJTZ"></script>
        <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){{{{dataLayer.push(arguments);}}}}
        gtag('js', new Date());

        gtag('config', 'G-ZFCX52ZJTZ');
        </script>
        
        <style>
            :root {{{{
                --theme-color: #2E7EEE;
                counter-reset: command-counter;
            }}}}
            body {{{{
                font-family: "IBM Plex Mono", monospace;
                font-weight: 400;
                font-style: normal;
            }}}}
            nav {{{{
                background-color: #f8fafc;
                padding: 0.75rem 1rem;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
                overflow-x: auto;
                white-space: nowrap;
            }}}}
            nav ul {{{{
                display: inline-flex;
                gap: 1rem;
                margin: 0;
                padding: 0;
                list-style: none;
            }}}}
            nav li a {{{{
                display: inline-block;
                font-size: 0.875rem;
                font-weight: 600;
                color: #1f2937;
                padding: 0.5rem 1rem;
                border: 1px solid #e5e7eb;
                border-radius: 0.375rem;
                background-color: #ffffff;
                white-space: nowrap;
                transition: all 0.3s ease-in-out;
            }}}}
            nav li a:hover {{{{
                color: #ffffff;
                background-color: var(--theme-color);
                border-color: var(--theme-color);
            }}}}
            .card {{{{
                position: relative;
                counter-increment: command-counter;
            }}}}
            .card::before {{{{
                content: counter(command-counter);
                position: absolute;
                top: -10px;
                left: -10px;
                width: 28px;
                height: 28px;
                padding: 0 6px;
                background: var(--theme-color);
                color: white;
                border-radius: 50%;
                display: flex;
                align-items: center;
                justify-content: center;
                font-size: 0.875rem;
                font-weight: 600;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
                z-index: 1;
            }}}}
            .card:hover {{{{
                border-color: var(--theme-color);
            }}}}
        </style>
        <script>
        function addToBookmarks() {{{{
            if (window.sidebar && window.sidebar.addPanel) {{{{ // Firefox
                window.sidebar.addPanel(document.title, window.location.href, '');
            }}}} else if (window.external && ('AddFavorite' in window.external)) {{{{ // IE
                window.external.AddFavorite(window.location.href, document.title);
            }}}} else {{{{ // Chrome, Safari, Opera, etc.
                alert('Press ' + (navigator.userAgent.toLowerCase().indexOf('mac') != -1 ? 'Command/Cmd' : 'CTRL') + ' + D to bookmark this page.');
            }}}}
        }}}}
        </script>
    </head>
    <body class="bg-gray-100 text-gray-800">
        <header class="bg-[#2E7EEE] text-white py-16">
            <div class="container mx-auto text-center">
                <h1 class="text-4xl font-extrabold">{t['h1']}</h1>
                <p class="mt-2 text-lg">{t['h1_sub']}</p>
                <img src="/assets/labex-logo-white.svg" alt="LabEx Logo" class="mx-auto mt-8">
                <a
                href="/assets/linux-commands-cheat-sheet.pdf"
                download
                class="inline-flex items-center mt-6 px-6 py-3 bg-white text-[#2E7EEE] font-semibold rounded-lg hover:bg-gray-100 transition-colors duration-200"
                >
                <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5 mr-2"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="currentColor"
                >
                    <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="2"
                    d="M12 10v6m0 0l-3-3m3 3l3-3m2 8H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z"
                    />
                </svg>
                {t['download_pdf']}
                </a>
            </div>
        </header>
        <nav>
            <div class="container mx-auto">
                <ul>
                    <li>
                        <a onclick="addToBookmarks()" class="inline-flex">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 mr-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 5a2 2 0 012-2h10a2 2 0 012 2v16l-7-3.5L5 21V5z" />
                        </svg>
                        {t['add_to_bookmarks']}
                        </a>
                    </li>
                    {{nav_links}}
                </ul>
            </div>
        </nav>
        <main class="container mx-auto p-8">
            {{categories}}
        </main>
        <footer class="bg-[#2E7EEE] text-white py-6">
            <div class="container mx-auto text-center">
                <p class="text-sm">{t['copyright']}</p>
            </div>
        </footer>
    </body>
    </html>
    """

    nav_link_template = """
    <li>
        <a href="#{category_id}">{category}</a>
    </li>
    """

    category_template = """
    <section id="{category_id}" class="mb-12">
        <h2 class="text-2xl font-semibold text-gray-700 mb-6">{category}</h2>
        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
            {commands}
        </div>
    </section>
    """

    command_template = """
    <a href="{link}" target="_blank" class="card block bg-white shadow-lg rounded-lg p-6 hover:shadow-xl hover:bg-gray-50 transition-all duration-200 border-2 border-transparent">
        <div class="flex items-center">
            <svg width="24px" height="24px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" class="mr-3">
            <path d="M13 16H18" stroke="#2E7EEE" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M6 8L10 12L6 16" stroke="#2E7EEE" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M2 18V6C2 4.89543 2.89543 4 4 4H20C21.1046 4 22 4.89543 22 6V18C22 19.1046 21.1046 20 20 20H4C2.89543 20 2 19.1046 2 18Z" stroke="#2E7EEE" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
            </svg>
            <h3 class="text-xl font-extrabold text-gray-900">{name}</h3>
        </div>
        <p class="text-sm text-gray-600 mt-2">{description}</p>
    </a>
    """

    # Organize commands by category
    categories = {}
    for command in commands:
        categories.setdefault(command["category"], []).append(command)

    # Generate navigation links
    nav_links = ""
    for category in categories.keys():
        category_id = category.lower().replace(" ", "-")
        nav_links += nav_link_template.format(
            category=category, category_id=category_id
        )

    # Generate categories and commands
    rendered_categories = ""
    for category, cmds in categories.items():
        category_id = category.lower().replace(" ", "-")
        rendered_commands = "".join(
            [
                command_template.format(
                    name=cmd["name"], link=cmd["link"], description=cmd["description"]
                )
                for cmd in cmds
            ]
        )
        rendered_categories += category_template.format(
            category=category, category_id=category_id, commands=rendered_commands
        )

    return html_template.format(
        nav_links=nav_links,
        categories=rendered_categories,
    )


# 在 render_html 函数后添加这两个新函数
def generate_sitemap(commands_by_lang):
    # 获取所有命令的链接
    def get_url_entries(commands_by_lang):
        entries = []
        # 添加主页
        for lang in commands_by_lang.keys():
            path = f"/{lang}" if lang != "en" else ""
            entries.append(
                f"""    <url>
        <loc>https://linux-commands.labex.io{path}/</loc>
        <lastmod>{{date}}</lastmod>
        <changefreq>daily</changefreq>
        <priority>1.0</priority>
    </url>"""
            )

        # 添加所有命令链接
        for lang, commands in commands_by_lang.items():
            for cmd in commands:
                if cmd["link"] and cmd["link"] != "#":
                    entries.append(
                        f"""    <url>
            <loc>{cmd["link"]}</loc>
            <lastmod>{{date}}</lastmod>
            <changefreq>monthly</changefreq>
            <priority>0.8</priority>
        </url>"""
                    )

        return "\\n".join(entries)

    sitemap_template = """<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
{entries}
</urlset>"""

    from datetime import datetime

    current_date = datetime.now().strftime("%Y-%m-%d")

    entries = get_url_entries(commands_by_lang)

    with open("sitemap.xml", "w", encoding="utf-8") as f:
        f.write(sitemap_template.format(entries=entries).format(date=current_date))

    print("Sitemap generated: sitemap.xml")


def generate_robots_txt():
    robots_content = """User-agent: *
Allow: /

Sitemap: https://linux-commands.labex.io/sitemap.xml"""

    with open("robots.txt", "w", encoding="utf-8") as f:
        f.write(robots_content)

    print("Robots.txt generated: robots.txt")


# 修改主函数
if __name__ == "__main__":
    languages = ["en", "zh", "ja", "ko"]
    commands_by_lang = {}

    # 1. 获取英文版本作为基准
    print("Fetching English commands as baseline...")
    english_commands = fetch_commands_from_api("en")
    alias_to_name_map = {cmd["alias"]: cmd["name"] for cmd in english_commands}
    commands_by_lang["en"] = english_commands

    # 2. 获取其他语言版本
    for lang in languages:
        if lang == "en":
            continue
        print(f"\nFetching commands for {lang}...")
        lang_commands = fetch_commands_from_api(lang)
        for cmd in lang_commands:
            # 使用英文的 command_name
            cmd["name"] = alias_to_name_map.get(cmd["alias"], cmd["alias"])
        commands_by_lang[lang] = lang_commands

    # 3. 为每种语言生成 HTML 文件
    for lang, commands in commands_by_lang.items():
        if lang == "en":
            output_dir = "."
            output_file = "index.html"
        else:
            output_dir = lang
            output_file = f"{lang}/index.html"
            if not os.path.exists(output_dir):
                os.makedirs(output_dir)

        html_content = render_html(commands, lang)

        with open(output_file, "w", encoding="utf-8") as file:
            file.write(html_content)
        
        os.system(f"prettier --write {output_file}")
        print(f"HTML file generated: {output_file}")

    # 4. 生成 sitemap.xml 和 robots.txt
    print("\nGenerating sitemap and robots.txt...")
    generate_sitemap(commands_by_lang)
    generate_robots_txt()

    print("\nBuild process completed.")
