
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
| id_Vinculo |
| Vinculo |

| TipoDeDoc | 
| ------ |
| id_TipoDeDoc |
| tipo |

| Grado | 
| ------ |
| id_Grado |
| grado |

| TipDeDeDiscap | 
| ------ |
| id_tipoDeDiscap |
| discpacidad |


**Tablas Debiles | Relacion One to Many**






**Tabla Super Debil | Relacion Many to Many**






### Diagrama en Microsoft SQL server
![Captura](https://user-images.githubusercontent.com/58866695/152699247-f0ff7d30-829d-4285-a9f7-d4a925e715c0.PNG)
