#!/usr/bin/env nu
source env.nu
rm -fp selent-*.zip
^zip -r $"selent-($env.selent_build.version).zip" data pack.mcmeta
