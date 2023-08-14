function printitall{
new-item -path ./ -name "file.txt" -type "file"
add-content -path ./file.txt -value (get-childitem -path C:\Users\user\ -r -fi * | select -property name,extension,creationtime,lastwritetime) -passthru
}
printitall
#no comment