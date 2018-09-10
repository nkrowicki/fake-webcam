## Fake Webcam

1. Corremos la siguiente linea para instalar lo necesario:

>    apt-get install v4l2loopback ffmpeg

2. Corremos el siguiente comando:

>    modprobre v4l2loopback

3. (Opcional) Chequear que existe el dispotivo de video:

>    ls /dev/video*

...Probablemente el 'dispositivo' sea '/dev/video0')

4. Nos paramos en el directorio en el cual se encuentra 'fakeWebcam.sh' y Le damos permisos de ejecución de la siguiente manera:

>    chmod +x fakeWebcam.sh

5. Listo! Para ejecutarlo simplemente (parados en ese directorio) tipeamos lo siguiente:

>    ./fakeWebcam.sh input_video.mp4 /dev/video0

En donde 'input_video.mp4' es el video que queremos utilizar como fuente de entrada y '/dev/video0' es el dispositivo el cual vamos a estar "emulando".

Para detener la ejecución simplemente debemos presionar la letra 'q' (en la consola la cual está corriendo nuestra super aplicación fakeWebcam!)

- EXTRA: para ver el 'dispositivo' (/dev/video0) podemos usar:

> ffplay /dev/video0
