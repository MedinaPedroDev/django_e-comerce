
(()=>{
    const paginas=document.querySelectorAll("#iconoPagina")
    const previous=document.querySelector("#previous")
    const next=document.querySelector("#next")
    paginas.forEach(pagina=>{
        pagina.addEventListener(`click`, ()=>{
            if(pagina.parentNode.classList.contains(`active`)){
                return
            }else{
                mostrar(pagina, Number(pagina.innerText))
            }
        })
    })
    function mostrar(pagina, numeroPagina){
        const containerInvisible=document.querySelector(`#pagina-${numeroPagina}`)
        const containerVisible=document.querySelector(`.visible`)
        containerVisible.classList.add(`d-none`)
        containerVisible.classList.remove(`visible`)
        containerInvisible.classList.remove(`d-none`)
        containerInvisible.classList.add(`visible`)
        const iconoActivo=document.querySelector(`.page-item.active`)
        iconoActivo.classList.remove(`active`)
        pagina.parentNode.classList.add(`active`)
    }
    next.addEventListener(`click`,()=>{
        const iconoActivo=document.querySelector(`.page-item.active`)
        if(Number(iconoActivo.children[0].innerText)+1>paginas.length){
            return
        }
        const numero=Number(iconoActivo.children[0].innerText)-1
        mostrar(paginas[numero+1], Number(iconoActivo.children[0].innerText)+1)
        
    })
    previous.addEventListener(`click`,()=>{
        const iconoActivo=document.querySelector(`.page-item.active`)
        if(Number(iconoActivo.children[0].innerText)-1==0){
            return
        }
        const numero=Number(iconoActivo.children[0].innerText)-1
        mostrar(paginas[numero-1], Number(iconoActivo.children[0].innerText)-1)
        
    })
})()
