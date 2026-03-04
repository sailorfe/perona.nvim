import json
import os

theme = "perona"

with open("palette.json", "r") as f:
    raw_data = json.load(f)

hash = {str(k).strip(): str(v).strip() for k, v in raw_data.items()}
bare = {k: v.lstrip('#') for k, v in hash.items()}

outputs = {
        "alacritty.toml": f"alacritty/{theme}.toml",
        "ansi.json": f"ansi/{theme}.json",
        "foot.ini": f"foot/{theme}.ini",
        "markdown.md": f"markdown/{theme}.md",
        "termux.properties": f"termux/{theme}.properties",
        "tty.conf": f"tty/{theme}.conf",
        "wezterm.toml": f"wezterm/{theme}.toml",
        }

def build():
    for template_name, output_path in outputs.items():
        template_path = os.path.join("templates", template_name)

        if not os.path.exists(template_path):
            print(f"skipping {template_name}. template not found.")
            continue

        with open(template_path, "r") as f:
            content = f.read()

        for key in hash:
            # use {{key}} in templates that strip a hash (foot, tty)
            content = content.replace(f"{{{{{key}}}}}", bare[key])
            # use [[key ]] in templates to keep the hash (most others)
            content = content.replace(f"[[{key}]]", hash[key])

        full_output_path = os.path.join("extras",  output_path)
        os.makedirs(os.path.dirname(full_output_path), exist_ok=True)

        with open(full_output_path, "w") as f:
            f.write(content)

        print(f"updated {template_name} => {output_path}")

if __name__ == "__main__":
    build()
