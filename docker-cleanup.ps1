Write-Output "-------------------"

Try
{
	Write-Output "--> Stopping all containers..."
	docker stop $(docker ps -a -q) 2>&1 | out-null

	Write-Output "--> Deleting all stopped containers..."
	docker rm $(docker ps -a -q) 2>&1 | out-null 

	Write-Output "--> Deleting all images..."
	docker rmi $(docker images -q) 2>&1 | out-null
	
	Write-Output "-------------------"
	Write-Output "Cleanup DONE"
	
	Write-Output " "
	Write-Output "Listing containers..."
	docker container list --all 2>&1
	
	Write-Output " "
	Write-Output "Listing images..."
	docker image list --all 2>&1
}
Catch
{
    Write-Output "Fatal error. Exiting..."
	Exit 1
}

Write-Output "-------------------"
