# PS2_Weather

![Weather SA](http://109.227.228.4/pub/22777.png)
![Weather VC](http://109.227.228.4/pub/22784.png)
![Weather LC](http://109.227.228.4/pub/22838.png)

Погода из версии PlayStation 2.
В каждом городе своя, свойственная региону погода.
Используется плавная смена погоды, учитывается резкая смена погоды при спауне, смерти, входе\выходе в\из интерьеры.
В интерьерах и за картой используется погода из Liberty City.
* Скрипт поддерживает погоду Vice City и Liberty City, из проекта SAxVCxLC.

В настоящий момент скрипт использует максимальный патенциал возможностей MTA.
setWeather, setSkyGradient, setWaterColor, setSunColor, setSunSize, setFarClipDistance, setFogDistance, setHeatHaze.
С появлением новых возможностей скрипт будет обновляться.

Используй вызов triggerEvent("NewWeather", root) из своего главного скрипта чтобы сгенерировать новую погоду во всех регионах.
Например раз в сутки, и так далее.
