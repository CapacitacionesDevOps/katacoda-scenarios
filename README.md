# Escenarios Interactivos con Katacoda

[![](http://shields.katacoda.com/katacoda/capacitacionesdevops/count.svg)](https://www.katacoda.com/capacitacionesdevops "Get your profile on Katacoda.com")

La url para el escenario interactivo es:  https://www.katacoda.com/capacitacionesdevops

### Aportar al sitio de capacitaciones
Visitar https://www.katacoda.com/docs aprenderá acerca de cómo elaborar los escenarios

Para ejemplos, visita https://github.com/katacoda/scenario-example


# Problemas frecuentes

- En caso que ejecute alguno de los escenarios le aparezca el siguiente mensaje en la consola: "This environment is no longer available.". Deberá de ingresar al archivo index.json y buscar la imagen con el que se está modificando el backend.

Para el ejercicio de artifacts con el paquete nuget, cambie la imagen por "bash1804" y en el paso 1 agregar bloque del json "foreground": "step1-background.sh". Este paso se realiza con la finalidad de instalar .Net Core 3.1
