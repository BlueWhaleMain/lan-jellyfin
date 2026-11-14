@if not defined DEBUG echo off
call env.cmd
if ErrorLevel 1 goto failure

docker compose up --no-start

set restart=
docker compose ps | wsl grep -w jellyfin
if ErrorLevel 1 goto run
set restart=1
docker compose stop

:run
docker compose --profile init run --rm config-writer
if ErrorLevel 1 goto failure
if defined restart docker compose start

:complete
goto end

:failure
if ErrorLevel 1 goto end
:: strict fail
echo [1] %0 %*
exit /b 1

:end
if ErrorLevel 1 echo [%ErrorLevel%] %0 %*
exit /b %ErrorLevel%
