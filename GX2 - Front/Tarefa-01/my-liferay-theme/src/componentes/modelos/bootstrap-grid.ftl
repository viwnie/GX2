<div class="container bootstrap-grid-card">
    <div class="row">
        <#if Fieldset45387152.getSiblings()?has_content>
            <#list Fieldset45387152.getSiblings() as cur_Fieldset45387152>
                <div class="col">
                    <div class="card" style="width: 18rem;">
                        <#if (cur_Fieldset45387152.Image20294072.getData())?? && cur_Fieldset45387152.Image20294072.getData() != "">
                            <img alt="${cur_Fieldset45387152.Image20294072.getAttribute("alt")}" data-fileentryid="${cur_Fieldset45387152.Image20294072.getAttribute("fileEntryId")}" src="${cur_Fieldset45387152.Image20294072.getData()}" />
                        </#if>
                        <div class="card-body">
                            <#if (cur_Fieldset45387152.Text66829913.getData())??>
                            <h5 class="card-title">${cur_Fieldset45387152.Text66829913.getData()}</h5>
                            </#if>
                            <#if (cur_Fieldset45387152.RichText77051524.getData())??>
                            <p class="card-text">${cur_Fieldset45387152.RichText77051524.getData()}</p>
                            </#if>
                        </div>
                    </div>
                </div>
            </#list>
        </#if>
    </div>
</div>
