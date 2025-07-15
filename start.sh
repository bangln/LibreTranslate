#!/bin/bash
import argostranslate.package, argostranslate.translate
from pathlib import Path
import urllib.request

# Tải và cài gói model en ↔ vi
url = "https://www.argosopentech.com/argospm/index/translate-en_vi.argosmodel"
package_path = Path("translate-en_vi.argosmodel")
urllib.request.urlretrieve(url, package_path)
argostranslate.package.install_from_path(package_path)
python3 -m libretranslate
