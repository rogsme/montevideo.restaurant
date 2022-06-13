---
title: "🇺🇾 Restaurantes en Montevideo 🥩"
---

## ¿Dónde quieres comer?

## Buscar por categoría

{{< tagcloud >}}

## O puedes buscar por restaurante...

<noscript>
<style>
.search { display: none; }
</style>
</noscript>

<div class="search">
  <input type="text" id="search" placeholder="Buscar...">
  <button class="clear-search">
    <svg xmlns="http://www.w3.org/2000/svg" class="ionicon" viewBox="0 0 512 512"><title>Backspace</title><path d="M135.19 390.14a28.79 28.79 0 0021.68 9.86h246.26A29 29 0 00432 371.13V140.87A29 29 0 00403.13 112H156.87a28.84 28.84 0 00-21.67 9.84v0L46.33 256l88.86 134.11z" fill="none" stroke="currentColor" stroke-linejoin="round" stroke-width="32"></path><path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="32" d="M336.67 192.33L206.66 322.34M336.67 322.34L206.66 192.33M336.67 192.33L206.66 322.34M336.67 322.34L206.66 192.33"></path></svg>
  </button>
</div>

<script>
document.addEventListener('DOMContentLoaded', () => {
  const rec = document.querySelectorAll('#artlist li')
  const search = document.querySelector('#search')
  const clearSearch = document.querySelector('.clear-search')
  const artlist = document.getElementById('artlist')

  search.addEventListener('input', e => {
    // grab search input value
    const searchText = e.target.value.toLowerCase()

    const hasFilter = searchText.length > 0;

    // for each recipe hide all but matched
    let matchCount = 0;
    rec.forEach(el => {
      const recipeName = el.textContent.toLowerCase()
      const isMatch = recipeName.includes(searchText)

      el.hidden = !isMatch
      el.classList.toggle('matched-recipe', isMatch && searchText.length !== 0);
      if (hasFilter && isMatch) {
        matchCount++;
      }
    })

    artlist.classList.toggle('list-searched', matchCount > 0);
  })

  clearSearch.addEventListener('click', e => {
    search.value = ''
    rec.forEach(el => {
      el.hidden = false
      el.classList.remove('matched-recipe');
    })

    artlist.classList.remove('list-searched') ;
  })
})
</script>

{{< artlist >}}

## Acerca de este sitio

Este sitio es un fork de [based.cooking](https://based.cooking). 

montevideo.restaurant fue creado porque no queria usar Rappi o PedidosYa. Ambas aplicaciones son pesadas, molestas, tienen miles de trackers y la mayoria del tiempo ni siquiera funcionan bien

Todo este sitio esta hecho con HTML y CSS, nada de JavaScript (solo el campo de búsqueda), nada de trackers, nada de publicidades, nada de cookies.

## ¿Quieres agregar nuevos restaurantes?

Principalmente, hay dos maneras de agregar nuevos restaurantes:
- 👨‍💻️ Puedes ir directamente [a Github](https://github.com/Rogergonzalez21/montevideo.restaurant), forkear el repositorio y abrir un PR nuevo (asegurate de haber leido las [reglas para agregar restaurantes](https://github.com/Rogergonzalez21/montevideo.restaurant#reglas-para-agregar-restaurantes))
- 👨‍🍳️ O puedes enviarme un correo a restaurantes@rogs.me con la informacion de tu restaurante (preferiblemente en el [formato correcto](https://raw.githubusercontent.com/Rogergonzalez21/montevideo.restaurant/master/example.md))

## ¡Contribuir es muy fácil!

Esta web se mantiene gracias a ti, no a 20MB de publicidades y trackers por página que violan tu privacidad.

{{< crypto >}}
