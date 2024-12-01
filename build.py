import re
import os


# 解析 Markdown 文件
def parse_markdown(file_path):
    commands = []
    with open(file_path, "r", encoding="utf-8") as file:
        content = file.read()
        sections = re.split(r"^#\s", content, flags=re.M)[1:]  # 按一级标题分割
        for section in sections:
            category, *lines = section.splitlines()
            table_lines = [line for line in lines if "|" in line]
            if table_lines:
                for row in table_lines[2:]:  # 跳过表头
                    cols = [col.strip() for col in row.split("|")[1:-1]]
                    if len(cols) == 2:
                        command_link = re.search(r"\((.*?)\)", cols[0])
                        command_name = re.sub(r"\[|\]\(.*?\)", "", cols[0]).strip()
                        commands.append(
                            {
                                "category": category.strip(),
                                "name": command_name,
                                "link": command_link.group(1) if command_link else "#",
                                "description": cols[1],
                            }
                        )
    return commands


# 使用 TailwindCSS 和 Google Fonts 渲染为 HTML
def render_html(commands):
    # 计算命令总数
    total_commands = len(commands)
    html_template = """
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Linux Commands Cheat Sheet - Full List - 2024 | LabEx</title>
        <meta name="description" content="A full list of essential Linux commands with detailed explanations and examples. Best linux commands cheat sheet for beginners and advanced users.">
        <meta name="keywords" content="Linux commands, Linux cheat sheet, command-line guide, Linux tips, Linux reference, Linux tutorials">
        <meta name="author" content="labex.io">
        <meta name="robots" content="index, follow">
        <link rel="canonical" href="https://linux-commands.labex.io">

        <!-- Open Graph Tags -->
        <meta property="og:title" content="Linux Commands Cheat Sheet - Full List - 2024 | LabEx">
        <meta property="og:description" content="A full list of essential Linux commands with detailed explanations and examples. Best linux commands cheat sheet for beginners and advanced users.">
        <meta property="og:type" content="website">
        <meta property="og:url" content="https://linux-commands.labex.io">
        <meta property="og:image" content="https://linux-commands.labex.io/assets/og-image.png">
        <meta property="og:site_name" content="Linux Commands Cheat Sheet">

        <!-- Twitter Card Tags -->
        <meta name="twitter:card" content="summary_large_image">
        <meta name="twitter:title" content="Linux Commands Cheat Sheet - Full List - 2024 | LabEx">
        <meta name="twitter:description" content="A comprehensive Linux commands cheat sheet with detailed explanations and examples. Best linux commands reference for beginners and advanced users.">
        <meta name="twitter:image" content="https://linux-commands.labex.io/assets/og-image.png">

        <script src="https://cdn.tailwindcss.com"></script>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Mono&family=Parkinsans:wght@300..800&display=swap" rel="stylesheet">
        <!-- Google tag (gtag.js) -->
        <script async src="https://www.googletagmanager.com/gtag/js?id=G-ZFCX52ZJTZ"></script>
        <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){{dataLayer.push(arguments);}}
        gtag('js', new Date());

        gtag('config', 'G-ZFCX52ZJTZ');
        </script>
        
        <style>
            :root {{
                --theme-color: #2E7EEE;
                counter-reset: command-counter;
            }}
            body {{
                font-family: "IBM Plex Mono", monospace;
                font-weight: 400;
                font-style: normal;
            }}
            nav {{
                background-color: #f8fafc;
                padding: 0.75rem 1rem;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
                overflow-x: auto;
                white-space: nowrap;
            }}
            nav ul {{
                display: inline-flex;
                gap: 1rem;
                margin: 0;
                padding: 0;
                list-style: none;
            }}
            nav li a {{
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
            }}
            nav li a:hover {{
                color: #ffffff;
                background-color: var(--theme-color);
                border-color: var(--theme-color);
            }}
            .card {{
                position: relative;
                counter-increment: command-counter;
            }}
            .card::before {{
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
            }}
            .card:hover {{
                border-color: var(--theme-color);
            }}
        </style>
        <script>
        function addToBookmarks() {{
            if (window.sidebar && window.sidebar.addPanel) {{ // Firefox
                window.sidebar.addPanel(document.title, window.location.href, '');
            }} else if (window.external && ('AddFavorite' in window.external)) {{ // IE
                window.external.AddFavorite(window.location.href, document.title);
            }} else {{ // Chrome, Safari, Opera, etc.
                alert('Press ' + (navigator.userAgent.toLowerCase().indexOf('mac') != -1 ? 'Command/Cmd' : 'CTRL') + ' + D to bookmark this page.');
            }}
        }}
        </script>
    </head>
    <body class="bg-gray-100 text-gray-800">
        <header class="bg-[#2E7EEE] text-white py-16">
            <div class="container mx-auto text-center">
                <h1 class="text-4xl font-extrabold">Linux Commands Cheat Sheet</h1>
                <p class="mt-2 text-lg">A clean and minimal guide to {total_commands} Linux commands</p>
                <img src="assets/labex-logo-white.svg" alt="LabEx Logo" class="mx-auto mt-8">
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
                        Add to Bookmarks
                        </a>
                    </li>
                    {nav_links}
                </ul>
            </div>
        </nav>
        <main class="container mx-auto p-8">
            {categories}
        </main>
        <footer class="bg-[#2E7EEE] text-white py-6">
            <div class="container mx-auto text-center">
                <p class="text-sm">&copy; 2024 <a href="https://labex.io">LabEx</a>. All rights reserved.</p>
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
        total_commands=total_commands,
    )


# 主函数
if __name__ == "__main__":
    input_file = "README.md"  # 替换为你的 Markdown 文件路径
    output_file = "index.html"

    commands = parse_markdown(input_file)
    html_content = render_html(commands)

    with open(output_file, "w", encoding="utf-8") as file:
        file.write(html_content)

    print(f"HTML file generated: {output_file}")

    os.system(f"prettier --write *")
