Cuando ocurre un conflicto, los cambios tanto del local como del remoto aparecerán en el mismo archivo en formato Unix diff. Este es el mismo formato utilizado por `git diff`.  

Para leer el formato, los cambios en la rama master aparecerán en la parte superior entre `<<<<<<< HEAD` y `=======` con los cambios de la rama feature/cambio_archivo debajo entre `=======` y `>>>>>>> feature/cambio_archivo`.

Para resolver el conflicto, los archivos deben editarse para que coincidan con nuestro estado final deseado. Lo demostraremos en el siguiente paso.

## Tarea

Seleccione el archivo en el árbol de archivos, para hacerlo de manera sencilla expanda la carpeta `Aprendiendo_Git`, y allí aparecerá el archivo que presenta el inconveniente

De click sobre este para abrilo en el editor. Cuando vea su contenido observará el formato de git para marcar los conflictos.

Aunque se ve sencillo y fácil de identificar el conflicto, cuando son archivos con muchas lineas de código y muchos conflictos esta tarea no es tan sencilla. Pero no se preocupe, como se menciona en escenarios anteriores git puede ser gestionado multiples interfaces de usuario, las cuales simplifican la solución de conflictos.

## Tips

Git admite diferentes herramientas de combinación visual y de línea de comandos para facilitar la resolución de conflictos. El comando `git mergetool` lanzará una herramienta externa.