#!/bin/bash
echo "Building forest..."
eval $(opam env)
forester build forest.toml

echo "Starting server..."
open http://localhost:1313/index.xml
python3 -m http.server 1313 -d output