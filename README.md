
# registro-promocion-empleo
Este proyecto esta creado en base a Microsoft SQL server

## Imagen de formulario
Este es el formulario para normalizar

![Imagen1](https://user-images.githubusercontent.com/58866695/152699384-ae4dc0cc-1f00-47d2-85ca-d49d961244de.jpg)


## Normalización 
El proceso de normalización contiene tablas fuertes, tablas débiles y por último una tabla super débil.

Se refiere a las tablas débiles, que contiene relación "One to Many", y la tabla super débil contiene una relación “Many to Many”.


**Tablas Fuertes**


| Vinculo | 
| ------ |
| (pk) - id_Vinculo |
| Vinculo |

| Grado | 
| ------ |
| (pk) - id_Grado |
| grado |

| TipDeDeDiscap | 
| ------ |
| (pk) - id_tipoDeDiscap |
| discpacidad |

| TipoDeDoc | 
| ------ |
| (pk) - id_TipoDeDoc |
| tipo |

**Tablas Debiles | Relacion One to Many**


|NivDeEscolar|
| ------ |
| id_NiveldeEsc |
| nombre |
| CUE |
| id_grado |
| año_grado |

|CuposEspeciales|
| ------ |
| id_CuposEspeciales |
| DecDiscapaTransplat|
| id_tipoDeDiscap |

|DatosDelPostulante|
| ------ |
| id_Postulante |
| id_DatosGenerales |
| domicilio |
| calle |
| numero |
| barrio |
| dpto |
| piso |
| monoblock |
| parcela |
| c_postal |
| localidad |
| departamento |
| id_NiveldeEsc |
| id_CursosEsp |

| Persona Postulante |
| ------ |
| id_DatosGenerales |
| nombre |
| apellidos |
| sexo |
| id_tipoDeDoc |
| fecNacim |
| telef |
| correo |

| DatosDelGrupoFamiliar |
| ------ |
| id_DatosDeGrupoFamiliar |
| id_Vinculo |
| descripcion |
| id_TipoDeDoc |
| numeroDoc |

**Tabla Super Debil | Relacion Many to Many**

| TramiteProgramaDePromocionDelEmplo |
| ------ |
| id_Postulante |
| id_DatosDelGrupoFamiliar |


### Diagrama en Microsoft SQL server
![Captura](https://user-images.githubusercontent.com/58866695/152699247-f0ff7d30-829d-4285-a9f7-d4a925e715c0.PNG)
