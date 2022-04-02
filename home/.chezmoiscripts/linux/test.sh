install_extension () {
  preferences_dir_path="/opt/google/chrome/extensions"
  preferences_dir_path="/opt/brave.com/brave/extensions"
  pref_file_path="$preferences_dir_path/$1.json"
  upd_url="https://clients2.google.com/service/update2/crx"
  sudo mkdir -p "$preferences_dir_path"
  sudo tee -a "$pref_file_path" > /dev/null << EOF
{
  "external_update_url": "$upd_url"
}
EOF
  echo Added "\"$pref_file_path\"" ["$2"]
}

# install_extension "cfhdojbkjhnklbpkdaibdccddilifddb" "adblock plus"
# install_extension "fmkadmapgofadopljbjfkapdkoienihi" "react dev tools"
# install_extension "anmidgajdonkgmmilbccfefkfieajakd" "save pinned tabs"
install_extension "dbepggeogbaibhgnhhndojpepiihcmeb" "vimium"
