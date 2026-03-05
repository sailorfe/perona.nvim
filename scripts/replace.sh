#!/usr/bin/env bash
# this script is recycled between the BSSM colorschemes and perona.nvim

declare -A colors=(
  ["mars"]="mihawk" ["jupiter"]="garden" ["venus"]="sangria"
  ["mercury"]="kumashi" ["saturn"]="zombie" ["moon"]="hollow"
  ["rei"]="dracule" ["makoto"]="wonder" ["minako"]="fruit"
  ["ami"]="beary" ["hotaru"]="surprise" ["usagi"]="negative"
)

TEMPLATES=(templates/*)

for template in "${TEMPLATES[@]}"; do
  if [ -f "$template" ]; then
    echo "updating keys in $template"

    for old in "${!colors[@]}"; do
      new="${colors[$old]}"
      sed -i "s/$old/$new/g" "$template"
    done
  else
    echo "skipping $template (not found)"
  fi
done

echo "done"
