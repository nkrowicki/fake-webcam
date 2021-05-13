## 📷  Fake Webcam 

Instructions in Spanish 🇪🇸 and English 🇺🇸: 

## 🇺🇸 English

## Fake Webcam

1. Execute the following line to install what is necessary:

>    apt-get install v4l2loopback ffmpeg

2. Run following command:

>    modprobre v4l2loopback

3. (Optional) Verify that the video device exists:

>    ls /dev/video*

...Probably the device is '/dev/video0'

4. Go to the directory where 'fakeWebcam.sh' is located and give it execution permissions:

>    chmod +x fakeWebcam.sh

5. Ready! To simply execute it (stopped in that directory) we use the following command:

>    ./fakeWebcam.sh input_video.mp4 /dev/video0

Where 'input_video.mp4' is the video that we want to use as input source and '/ dev / video0' is the device which we are going to be "emulating".

To stop the execution we simply have to press the letter 'q' (in the console which is running our super application fakeWebcam!)

- EXTRA: to see the 'device' (/ dev / video0) we can use the following command:

> ffplay /dev/video0


### Buy me a coffe ☕️

Do you want to buy me a coffe? Click on the following link! [https://www.buymeacoffee.com/nahuelkrowicki]

---

## 🇪🇸 Spanish

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
> 


### Comprame un café ☕️

Te gustaría invitarme un café? Hacé click en el siguiente enlace! [https://www.buymeacoffee.com/nahuelkrowicki]
