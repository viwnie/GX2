<div>
    <#if (TituloNoticia.getData())??>
        ${TituloNoticia.getData()}
    </#if>
    <#if (ImagemNoticia.getData())?? && ImagemNoticia.getData() !="">
        <img alt="${ImagemNoticia.getAttribute(" alt")}" data-fileentryid="${ImagemNoticia.getAttribute("
            fileEntryId")}" src="${ImagemNoticia.getData()}" />
    </#if>
    <#if (RichText85975945.getData())??>
        ${RichText85975945.getData()}
    </#if>
</div>