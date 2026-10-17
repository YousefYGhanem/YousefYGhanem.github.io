#!/bin/sh
# Wraps page.html (artifact fragment) into a standalone index.html for GitHub Pages.
{
  printf '<!doctype html>\n<html lang="en">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n'
  printf '<meta property="og:title" content="Yousef Ghanem | Computer Engineer &amp; ISTQB Certified Tester">\n<meta property="og:description" content="I build systems. Then I try to break them. Software, systems and test engineering from Jerusalem.">\n<meta property="og:type" content="website">\n'
  printf '<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0}img{max-width:100%%}[hidden]{display:none!important}</style>\n'
  sed -n '1,/^<\/style>$/p' page.html
  printf '</head>\n<body>\n'
  sed '1,/^<\/style>$/d' page.html
  printf '</body>\n</html>\n'
} > index.html
