# Bash to Share File & Screenshot
Dos archivos bash para compartir un archivo desde nuestro linux o bien realizar una captura de pantalla con `gnome-screenshot` y subilar a nuestro servidor.

## share-file.sh
Al ejecutarlo desde un atajo del teclado, nos abre una pantalla para seleccionar el archivo que queremos subir a nuestro servidor y luego nos genera el link y nos copia al portapapeles listo para pegar donde queramos.

## share-screenshot.sh
Al ejecutarlo desde un atajo del teclado, en mi caso lo configure para que capture un área de la pantalla, luego guarda el archivo en el `\tmp`, lo sube a nuestro servidor, nos genera el link, copia la portapapeles y borra el archivo en `\tmp`

## Instalación / Configuración
### share-file.sh

En la linea 6 deberán configurar el usuario, host y carpeta donde guardará el archivo:
```
scp $fileSelected user@ip_or_host:/var/www/$fileShare
```

En la linea 7 deberán configurar la url para generar el link a compartir:
```
url=http://share.domain.com/$fileShare
```

Luego guardarlo y convertirlo en ejecutable `chmod +x share-file.sh`
Luego en los atajos del teclado, configurar la ruta donde esta el archivo y configurar la combinación de teclas.

### share-screenshot.sh

En la linea 15 deberán configurar el usuario, host y carpeta donde guardará el archivo:
```
scp $fileSelected user@ip_or_host:/var/www/$fileShare
```

En la linea 16 deberán configurar la url para generar el link a compartir:
```
url=http://share.domain.com/$fileShare
```

Luego guardarlo y convertirlo en ejecutable `chmod +x share-file.sh`
Luego en los atajos del teclado, configurar la ruta donde esta el archivo y configurar la combinación de teclas.

## Acceso al server sin Password
En mi caso tengo acceso SSH a mi servidor, y he configurado una clave para acceder sin contraseña.
En este link encontrarán cómo hacer la configuración:
[How To Set Up SSH Keys](https://www.digitalocean.com/community/tutorials/how-to-set-up-ssh-keys--2)


[Plen.co!](https://plen.co)