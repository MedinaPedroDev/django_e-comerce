(()=>{
    const modificar=document.querySelector("#Modificar")
    const close=document.querySelector("#close")
    const formulario_1=document.querySelector("#formulario_1")
    const formulario_2=document.querySelector("#formulario_2")
    
    modificar.addEventListener(`click`, ()=>{
        formulario_1.classList.remove(`d-flex`)
        formulario_1.classList.add(`d-none`)
        formulario_2.classList.remove(`d-none`)
    })
    close.addEventListener(`click`, ()=>{
        formulario_2.classList.add(`d-none`)
        formulario_1.classList.remove(`d-none`)
        formulario_1.classList.add(`d-flex`)
    })
})()