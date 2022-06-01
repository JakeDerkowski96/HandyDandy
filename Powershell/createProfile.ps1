$profileExists = test-path $profile

if ($profileExists -eq $false){
	New-Item -Path $profile -Type File -Force	
}else{
	echo "Profile already exists!"
}