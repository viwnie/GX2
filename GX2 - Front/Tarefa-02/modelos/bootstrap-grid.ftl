<#if Banner.getSiblings()?has_content>
  <#list Banner.getSiblings() as cur_Banner>
    <div class="jumbotron mw-100 d-none d-md-block" style="background-image: url('${cur_Banner.BannerImgDesktop.getData()}'); background-size: 100%; background-position: center;">
      <#if (cur_Banner.TituloBanner.getData())??>
        <h1 class="display-4 text-light">${cur_Banner.TituloBanner.getData()}</h1>
      </#if>
      <#if (cur_Banner.ParagrafoBanner.getData())??>
          ${cur_Banner.ParagrafoBanner.getData()}
      </#if>
    </div>
    <div class="jumbotron d-md-none" style="background-image: url('${cur_Banner.BannerImgMobile.getData()}'); background-size: 100%; background-position: center;">
      <#if (cur_Banner.TituloBanner.getData())??>
        <h1 class="display-4 text-light">${cur_Banner.TituloBanner.getData()}</h1>
      </#if>
      <#if (cur_Banner.ParagrafoBanner.getData())??>
          ${cur_Banner.ParagrafoBanner.getData()}
      </#if>
    </div>
  </#list>
</#if>