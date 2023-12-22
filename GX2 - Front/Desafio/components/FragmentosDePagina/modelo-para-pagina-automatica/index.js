Liferay.on('allPortletsReady', () => {
 const cores = {
        "futebol": "red",
        "futsal": "green",
        "handebol": "orange",
        "basquete": "blue",
        "volei": "purple"
    };

    const textoCategoria = document.getElementById(`autoCategorias`);
    const texto = textoCategoria.innerText.toLowerCase();

    const divCategoria = document.getElementById(`autoCategoriasDiv`);

    if (cores.hasOwnProperty(texto)) {
        textoCategoria.style.color = cores[texto];;
			  divCategoria.style.border = "solid 1px "+cores[texto];
    }

});