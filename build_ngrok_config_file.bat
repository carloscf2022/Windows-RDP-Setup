new-item -type directory -path $env:LOCALAPPDATA\ngrok
$env:NGROK_AUTH_TOKEN = 'YOUR_NGROK_AUTH_TOKEN'
"authtoken: $env:NGROK_AUTH_TOKEN
tunnels:
    default:
        proto: tcp
        addr: 3389
version: "2"
region: us" > $env:LOCALAPPDATA\ngrok\ngrok.yml
