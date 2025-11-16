$sortedFiles = Get-ChildItem -path "C:\Users\Admin\OneDrive\Desktop\All\test" -Recurse -include *.jpg | sort-object name
$sortedFiles | set-content outputJpg.txt
