#!/bin/bash
cd /workspaces/testing
git add -A
git commit -m "Fix: use URL-encoded filenames for proper image loading"
git push origin main
