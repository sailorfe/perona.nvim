import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent

raw_data = json.loads((ROOT / "palette.json").read_text())
meta = json.loads((ROOT / "metadata.json").read_text())

theme = meta["name"]
hash_map = {str(k).strip(): str(v).strip() for k, v in raw_data.items()}
bare = {k: v.lstrip("#") for k, v in hash_map.items()}


def get_header(file_path, meta):
    ext = Path(file_path).suffix
    version_str = f"{meta['name']} v{meta['version']} by {meta['author']}"
    date_str = meta["updated"].split("T")[0]
    url_str = meta["homepage"]

    if ext in [".json", ".md"]:
        return ""
    if ext in [".css", ".js"]:
        return f"/* {version_str} */\n/* built {date_str} */\n/* {url_str} */\n\n"

    return f"# {version_str}\n# built {date_str}\n# {url_str}\n\n"


outputs = {
    "alacritty.toml": f"alacritty/{theme}.toml",
    "ansi.json": f"ansi/{theme}.json",
    "foot.ini": f"foot/{theme}.ini",
    "markdown.md": f"markdown/{theme}.md",
    "rio.toml": f"rio/{theme}.toml",
    "termux.properties": f"termux/{theme}.properties",
    "tty.conf": f"tty/{theme}.conf",
    "wezterm.toml": f"wezterm/{theme}.toml",
}


def build():
    for template_name, output_rel_path in outputs.items():
        template_path = ROOT / "templates" / template_name

        if not template_path.exists():
            print(f"skipping {template_name}. template not found.")
            continue

        content = template_path.read_text()

        for key in hash_map:
            content = content.replace(f"{{{{{key}}}}}", bare[key])
            content = content.replace(f"[[{key}]]", hash_map[key])

        full_output = ROOT / "extras" / output_rel_path

        full_output.parent.mkdir(parents=True, exist_ok=True)

        header = get_header(output_rel_path, meta)
        full_output.write_text(header + content)

        print(f"updated {template_name} => {output_rel_path}")


if __name__ == "__main__":
    build()
