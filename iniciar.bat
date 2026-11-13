@echo off
echo ===============================
echo   LAB KALI + OPENVAS
echo ===============================
echo.
echo Verificando Docker Desktop...
docker info >nul 2>&1
if errorlevel 1 (
    echo ERROR: Docker Desktop no esta ejecutandose o Docker no esta disponible en PATH.
    pause
    exit /b 1
)

echo Levantando contenedores...
docker compose up -d
if errorlevel 1 (
    echo.
    echo ERROR: No fue posible levantar el laboratorio.
    echo Revisa que este archivo se encuentre en la misma carpeta que compose.yaml
    pause
    exit /b 1
)

echo.
echo Contenedores creados/iniciados correctamente.
echo.
docker ps
echo.
echo OpenVAS quedara disponible en: http://localhost:8080
echo Para entrar a Kali usa:
echo docker exec -it KaliCurso /bin/bash
pause
