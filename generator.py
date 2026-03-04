import json
import os

theme = "perona"

with open("palette.json", "r") as f:
    raw_data = json.load(f)

c = {str(k).strip(): str(v).strip() for k, v in raw_data.items()}

bare = {k: v.lstrip('#') for k, v in c.items()}

targets = {
    "alacritty": {
        "path": f"extras/alacritty/{theme}.toml",
        "template": f"""
# Perona for Alacritty
# Author: sailorfe
# Upstream: https://codeberg.org/sailorfe/perona.nvim/src/branch/main/extras/alacritty/perona.toml

[colors.primary]
background = "{c['base']}"
foreground = "{c['text']}"

[colors.normal]
black = "{c['surface']}"
red   = "{c['mihawk']}"
green = "{c['garden']}"
yellow = "{c['sangria']}"
blue  = "{c['kumashi']}"
magenta  = "{c['zombie']}"
cyan  = "{c['hollow']}"
white = "{c['text']}"

[colors.bright]
black = "{c['overlay']}"
red   = "{c['dracule']}"
green = "{c['wonder']}"
yellow = "{c['fruit']}"
blue  = "{c['beary']}"
magenta  = "{c['surprise']}"
cyan  = "{c['negative']}"
white = "{c['light']}"
"""
    },
    "foot": {
        "path": f"extras/foot/{theme}.ini",
        "template": f"""
# -*- perona -*-

[colors]
foreground={bare['text']}
background={bare['base']}
selection-background={bare['hollow']}
selection-foreground={bare['base']}
urls={bare['kumashi']}
flash={bare['hollow']}

regular0={bare['surface']}
regular1={bare['mihawk']}
regular2={bare['garden']}
regular3={bare['sangria']}
regular4={bare['kumashi']}
regular5={bare['zombie']}
regular6={bare['hollow']}
regular7={bare['text']}

bright0={bare['overlay']}
bright1={bare['dracule']}
bright2={bare['wonder']}
bright3={bare['fruit']}
bright4={bare['beary']}
bright5={bare['surprise']}
bright6={bare['negative']}
bright7={bare['light']}
"""
    },
    "json": {
            "path": f"extras/{theme}.json",
            "template": f"""
{{
    "background": "{c['base']}",
    "foreground": "{c['text']}",
    "black": "{c['surface']}",
    "red": "{c['mihawk']}",
    "green": "{c['garden']}",
    "yellow": "{c['sangria']}",
    "blue": "{c['kumashi']}",
    "magenta": "{c['zombie']}",
    "cyan": "{c['hollow']}",
    "white": "{c['text']}",
    "brightBlack": "{c['overlay']}",
    "brightRed": "{c['dracule']}",
    "brightGreen": "{c['wonder']}",
    "brightYellow": "{c['fruit']}",
    "brightBlue": "{c['beary']}",
    "brightMagenta": "{c['surprise']}",
    "brightCyan": "{c['negative']}",
    "brightWhite": "{c['light']}"
}}
"""
    },
    "termux": {
            "path": f"extras/termux/{theme}.properties",
            "template": f"""
# Perona for Termux
# Author: sailorfe
# Upstream: https://codeberg.org/sailorfe/perona.nvim/src/branch/main/extras/termux/perona.properties

background: {c['base']}
foreground: {c['text']}

color0: {c['surface']}
color1: {c['mihawk']}
color2: {c['garden']}
color3: {c['sangria']}
color4: {c['kumashi']}
color5: {c['zombie']}
color6: {c['hollow']}
color7: {c['text']}

color8: {c['overlay']}
color9: {c['dracule']}
color10: {c['wonder']}
color11: {c['fruit']}
color12: {c['beary']}
color13: {c['surprise']}
color14: {c['negative']}
color15: {c['light']}
"""
    },
    "tty": {
            "path": f"extras/tty/{theme}-colors.conf",
            "template": f"""
# -*- perona tty colors -*-

if [ "$TERM" = "linux" ]; then
    echo -en "\\x1b]P0{bare['base']}"
    echo -en "\\x1b]P1{bare['mihawk']}"
    echo -en "\\x1b]P2{bare['garden']}"
    echo -en "\\x1b]P3{bare['sangria']}"
    echo -en "\\x1b]P4{bare['kumashi']}"
    echo -en "\\x1b]P5{bare['zombie']}"
    echo -en "\\x1b]P6{bare['hollow']}"
    echo -en "\\x1b]P7{bare['light']}"
    echo -en "\\x1b]P8{bare['overlay']}"
    echo -en "\\x1b]P9{bare['dracule']}"
    echo -en "\\x1b]PA{bare['wonder']}"
    echo -en "\\x1b]PB{bare['fruit']}"
    echo -en "\\x1b]PC{bare['beary']}"
    echo -en "\\x1b]PD{bare['surprise']}"
    echo -en "\\x1b]PE{bare['negative']}"
    echo -en "\\x1b]PF{bare['text']}"
    clear
fi
"""
    },
}

for app, data in targets.items():
    full_path = os.path.expanduser(data["path"])
    os.makedirs(os.path.dirname(full_path), exist_ok=True)
    with open(full_path, "w") as f:
        f.write(data["template"].strip())
    print(f"updated {app}")
