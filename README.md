# Montevideo Restaurants Website

[https://montevideo.restaurant](https://montevideo.restaurant)

Esta es una pagina web simple de restaurantes en Montevideo.
No tiene publicidades, trackers, cookies o JavaScript (Solo en el buscador de
restaurantes).

## Maneras de contribuir

- Agregando un restaurante.
- Agrega fotos o menues a los restaurantes que existen. Las imagenes deben ser
  en formato `.webp` y pesar menos de 100K.
- Arreglando problemas en restaurantes.

## Reglas para agregar

- Los archivos deben estar con el formato de [example.md](example.md). Deben ser
  colocados dentro de `content/`.
- Los restaurantes deben empezar con un `#` *en la primera linea*. Sin lineas
  blancas en el inicio ni en el final. Los archivos deben terminar en `\n` como
  en unix (si usas Linux no te preocupes por esto, deberia ser automatico).
- Los nombres de los archivos deben ser el nombre del restaurante separado por
  guiones (`-`). No con guiones bajos y definitivamente no con espacios.
- Los restaurantes deben tener algun tipo de delivery.

Puedes incluir un archivo `.json` con tu informacion personal, links o donaciones
en `data/authors/tu-nombre.json`. El mio esta en 
`data/authors/roger-gonzalez.json`, asi puedes ver un modelo. Puedes incluir tu 
`website`, `donate` (link para donaciones), `email` o direcciones de crypto como 
`btc`, `xmr` y `eth`.

### Tags

Recuerda agregar tags a tu restaurante, pero intenta usar tags que ya sean usados 
por otros restaurantes.

### Imagenes

Las imagenes van en `/pix`.

Cada restaurante debe tener una imagen al inicio y quiza imagenes extra para el 
menu en caso de que sea necesario.

Puedes añadir imagenes de Google, pero preferiblemente que sean de la pagina web
o tomadas por ti mismo.

Las imagenes deben tener formato `.webp` con el menor tamaño posible. Por 
ejemplo, si vas a agregar una imagen para `mcdonalds.md`, debe ser agregada como
`pix/mcdonalds.webp`.

Si deseas agregar imagenes para el menu, deben llevar el siguiente formato:
`pix/mcdonalds-menu-01.webp`, etc.

Ten en cuenta que todas las imagenes deben tener links empezando con un slash,
por ejemplo `/pix/...`.

## Licencia

Todo este website y su contenido forman parte del dominio publico.
Al agregar texto, imagenes o lo que fuera a este repositorio, renuncias a 
cualquier pretension de propiedad sobre el, aunque eres bienvenido y te 
recomendamos que te des creditos en la parte inferior de tu agregado (incluyendo 
links personales y/o de donaciones)
