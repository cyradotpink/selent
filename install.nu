#!/usr/bin/env nu
source env.nu
rm -fp ($"($env.selent_build.install_path)/selent-*.zip" | into glob)
^zip -r $"($env.selent_build.install_path)/selent-($env.selent_build.version).zip" data pack.mcmeta
