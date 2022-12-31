// Esta funcion se Encarga de cerrar el menu cuando la pantalla supera los 768px
(()=>{
    const button=document.querySelector(`#headingOne`)
    const divCollapse=document.querySelector(`#collapseOne`)
    window.addEventListener(`resize`, ()=>{
        if(window.innerWidth>768){
            button.classList.add(`collapsed`)
            button.ariaExpanded=false
            divCollapse.classList.remove(`show`)
        }
    });
})()
