Remove-Item Oblivious.zip -ErrorAction SilentlyContinue
New-Item -ItemType Directory -Path Oblivious
Copy-Item natives -Recurse -Destination Oblivious
Copy-Item reframework -Recurse -Destination Oblivious
Copy-Item modinfo.ini -Destination Oblivious
Compress-Archive -Path Oblivious -DestinationPath Oblivious.zip
Remove-Item Oblivious -Force -Recurse -ErrorAction SilentlyContinue