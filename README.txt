LABORATORIO KALI + OPENVAS

Archivos incluidos:
1. compose.yaml
2. iniciar.bat
3. README.txt

REQUISITOS
- Windows con Docker Desktop instalado.
- Docker Desktop debe estar encendido.
- Conexion a Internet la primera vez para descargar las imagenes.
- El puerto 8080 debe estar libre.

COMO USARLO
1. Coloca los 3 archivos dentro de la misma carpeta.
2. Abre Docker Desktop.
3. Ejecuta iniciar.bat con doble clic.
   O bien abre una terminal en esa carpeta y ejecuta:
      docker compose up -d

QUE CREA
- Contenedor de Kali llamado: kali_curso
- Contenedor de OpenVAS llamado: openvas

ACCESO A KALI
Para entrar a Kali:
   docker exec -it kali_curso /bin/bash

ACCESO A OPENVAS
OpenVAS quedara disponible en:
   http://localhost:8080

Credenciales definidas en compose.yaml
- Password de OpenVAS: 0p3nv4s

NOTAS IMPORTANTES
- OpenVAS puede tardar varios minutos en quedar completamente funcional la primera vez.
- Si el puerto 8080 ya esta ocupado, cambia esta linea en compose.yaml:
      - "8080:9392"
  por ejemplo a:
      - "8081:9392"
  y luego entra con:
      http://localhost:8081

COMANDOS UTILES
Ver contenedores:
   docker ps -a

Detener el laboratorio:
   docker compose down

Volver a iniciarlo:
   docker compose up -d

Eliminar contenedores y recrearlos:
   docker compose down
   docker compose up -d

------------------------------------------------------------------------------------------
Instalar herramientas de Kali:
   apt install kali-linux-default -y

Cuando aparezca la configuración del teclado/charset:
Seleccionar:
14 - Latin1 and Latin5 - western Europe and Turkic languages

Cuando aparezca la configuración de macchanger:
Seleccionar:
no

Cuando aparezca la configuración de Kismet:
Seleccionar:
no

Cuando aparezca la configuración de Wireshark:
Seleccionar:
no

Cuando aparezca la configuración de sslh:
Seleccionar:
2 - standalone