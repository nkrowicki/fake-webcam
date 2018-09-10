## Fake Webcam

- Vamos a instalar lo que necesitamos..

    apt-get install v4l2loopback ffmpeg

- Corremos el siguiente comando:

    modprobre v4l2loopback

- (Opcional) Chequear que existe el dispotivo de video:

    ls /dev/video*

...Probablemente el 'dispositivo' sea '/dev/video0')

- Con la siguiente linea simulamos una webcam utilizando nuestro escritorio como "entrada de video"

    ffmpeg -f x11grab -r 15 -s 1280x720 -i :0.0+0,0 -vcodec rawvideo -pix_fmt yuv420p -threads 0 -f v4l2 /dev/video0


Listo! Ya tenemos nuestra fake webcam corriendo en /dev/video0 con fuente de entrada nuestro escritorio, es decir lo que se estaría viendo en la webcam sería nuestro escritorio.


Ahora veremos como hacer lo mismo pero utilizando un video mp4 como fuente de entrada:

En nuestro caso como vamos a elegir un video de duración de 20 segundos.

Necesitamos que se repita continuamente (es decir, que termine y vuelva a iniciar), vamos a tener que armar un script para ser más prolijos (además de que esto se podría convertir en una super aplicación!)

- Creamos un archivo llamado 'fakeWebcam.sh' (podemos crearlo con el comando: touch 'fakeWebcam.sh') con el siguiente contenido:

    #!/bin/bash

    #Ejemplo:
    #./fakeWebcam.sh input_video.mp4 /dev/video0

    INPUT=$1
    DEVICE_VIDEO=$2

    while [ true ]; do
    read -t 1 -n 1
    if [ $? = 0 ] ; then
    exit ;
    else
    ffmpeg -re -i $INPUT -map 0:v -f v4l2 $DEVICE_VIDEO
    fi
    done

Luego...

- Guardamos el archivo

- Nos paramos en el mismo directorio que se encuentra el archivo que acabamos de crear (en el caso de no haber estado en el directorio)

- Le damos permisos de ejecución de la siguiente manera:

    chmod +x fakeWebcam.sh

Listo!!

Ahora para ejecutarlo simplemente nos paramos en ese directorio (para no tener que utilizar la ruta completa) y tipeamos lo siguiente:

    ./fakeWebcam.sh input_video.mp4 /dev/video0

Para parar la ejecución simplemente debemos presionar la letra q (en la consola la cual está corriendo nuestra super aplicación fakeWebcam!)

EXTRA: para ver el 'dispositivo' /dev/video0 podemos usar:

    ffplay /dev/video0
