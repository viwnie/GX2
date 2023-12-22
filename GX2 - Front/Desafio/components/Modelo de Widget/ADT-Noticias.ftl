<#if entries?has_content>
    <div class="slick-carousel container shadow pt-5">
        <#list entries as entry>
            <#assign assetRenderer=entry.getAssetRenderer() />
            <#assign article=assetRenderer.getArticle() />
            <#assign document=saxReaderUtil.read(article.getContent()) />
            <#assign viewURL=assetPublisherHelper.getAssetViewURL(renderRequest, renderResponse, entry) />
            <#assign rootElement=document.getRootElement() />
            <#assign categorys=entry.getCategories() />

            <#assign fieldTitleValueXPath=saxReaderUtil.createXPath("dynamic-element[@name='Text15148002' ]") />
            <#assign TituloNoticia=fieldTitleValueXPath.selectSingleNode(rootElement).getStringValue()?trim />

            <#assign fieldImgValueXPath=saxReaderUtil.createXPath("dynamic-element[@name='Image70661526' ]") />
            <#assign fieldImgValueNodes=fieldImgValueXPath.selectSingleNode(rootElement) />
            <#assign imgValue=fieldImgValueNodes.getStringValue() />
            <#assign fileJson=jsonFactoryUtil.createJSONObject(imgValue) />

            <#assign fieldDescriValueXPath=saxReaderUtil.createXPath("dynamic-element[@name='RichText85975945' ]") />
            <#assign
                descricaoNoticia=fieldDescriValueXPath.selectSingleNode(rootElement).getStringValue()?trim?substring(0,30) />
            <#assign categoryColors={ "futebol" : "red" , "futsal" : "green" , "handebol" : "orange" , "basquete"
                : "blue" , "volei" : "purple" } />

            <div class="slick-slide">
                <div class="card overflow-hidden rounded-4 border-0 mb-5">
                    <div class="card-body p-0">
                        <div class="d-flex align-items-center flex-column-reverse flex-md-row">
                            <div class="p-sm-5 p-2 d-flex flex-column justify-content-center align-items-center w-100">
                                <h5 class="fw-bolder align-self-sm-start">${TituloNoticia}</h5>
                                <h6 class="align-self-sm-start">${descricaoNoticia}</h6>
                                <div class="d-flex align-items-center justify-content-between w-100 flex-sm-row flex-column">
                                    <#list categorys as category>
                                        <#assign categoryName=category.getName()?lower_case?string?trim />
                                        <#assign categoryColor=categoryColors[categoryName]?default("black") />
                                        <div class="rounded p-1 mb-2 mb-sm-0"
                                            style="border: 1px solid ${categoryColor}; display: inline-block;">
                                            <span style="color: ${categoryColor}">${category.getName()}</span>
                                        </div>
                                    </#list>
                                    <a class="btn btn-primary" href="/w/${article.urlTitle}"> Saiba Mais </a>
                                </div>
                            </div>
                            <div class="w-100">
                                <a href="/w/${article.urlTitle}">
                                    <img class="img-fluid w-100" style="object-fit: cover; height:250px;"
                                        src="${fileJson.url}" alt="${fileJson.alt}">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </#list>
    </div>
</#if>

<script type="text/javascript">
    Liferay.on('allPortletsReady', () => {
        $('.slick-carousel').slick({
            dots: true,
            infinite: true,
            speed: 500,
            fade: true,
            cssEase: 'linear'
        });
    })
</script>