Write-Output "-------------------"

Try
{
	Write-Output "--> Containers..."
	docker container list --all 2>&1
	
	Write-Output "--> Images..."
	docker image list --all 2>&1
}
Catch
{
    Write-Output "Fatal error. Exiting..."
	Exit 1
}

Write-Output "-------------------"
