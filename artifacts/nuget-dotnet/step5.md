Hasta el momento solo se han usado librerías Nuget que están publicadas en el repositorio oficial. Ahora procederá a utilizar una librería que está publicada en un feed de Artifacts en un proyecto privado de Azure DevOps.

En este momento, intentará agregar la dependencia **EPM-Saludo 1.0.0-CI-20210513-205338**, la cual está publicada desde el proyecto de CapacitacionesEPM en un feed de Artifacts https://grupoepm.visualstudio.com/CapacitacionesEPM Antes de continuar, valide que tenga acceso a la URL estando logueado con su cuenta laboral o de contratista. En caso de que no pueda acceder, por favor establezca comunicación con alguna persona de la mesa DevOps para que lo agregue al proyecto y pueda llevar a cabo su práctica.

Ejecuta el siguiente comando para intentar agregar la dependencia `dotnet add package EPM-Saludo --version 1.0.0-CI-20210513-205338`{{execute}}

Como se puede dar cuenta no fue posible encontrar la dependencia EPM-Saludo, el motivo es porque dotnet intenta buscar en el repositorio oficial de Nuget por defecto.

Ejecuta el siguiente comando para ver cuáles fuentes de repositorio Nuget están configurados `dotnet nuget list source`{{execute}} y confirmará lo dicho anteriormente.

Para configurar las fuentes de las dependencias de Nuget que se utilizarán en el proyecto, vamos a crear un archivo nuget.config en la misma ruta donde tenemos el .csproj.

`touch nuget.config`{{execute}}

Con la ayuda del editor, copia las siguientes líneas de código en el archivo nuget.config. Tenga cuidado de no dejar la primera línea vacía, a veces suele suceder.

```
<?xml version="1.0" encoding="utf-8"?>
<configuration>
  <packageSources>
    <clear />
    <add key="org-epm-artefactos" value="https://grupoepm.pkgs.visualstudio.com/_packaging/org-epm-artefactos/nuget/v3/index.json" />
  </packageSources>
  <packageSourceCredentials>
    <katacoda>
      <add key="Username" value="cualquiercosa" />
      <add key="ClearTextPassword" value="%VSS_NUGET_EXTERNAL_FEED_ENDPOINTS%" />
    </katacoda>
</packageSourceCredentials>
</configuration>
```{{copy}}

## Nota

La configuración de packageSourceCredentials quizás no sea necesaria en los proyectos reales en los que estés trabajando, ya que los pipelines de Azure DevOps y Visual Studio pueden manejar de manera transparente la autenticación de los repositorios.