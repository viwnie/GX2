<div class="row p-4 w-100">
    <#if Fieldset45387152.getSiblings()?has_content>
        <#list Fieldset45387152.getSiblings() as cur_Fieldset45387152>
            <div class="col-md-4">
                <div class="card h-100"> 
                    <#if (cur_Fieldset45387152.Image20294072.getData())?? && cur_Fieldset45387152.Image20294072.getData() != "">
                    <img class="card-img-top h-75" alt="${cur_Fieldset45387152.Image20294072.getAttribute("alt")}" data-fileentryid="${cur_Fieldset45387152.Image20294072.getAttribute("fileEntryId")}" src="${cur_Fieldset45387152.Image20294072.getData()}" />
                    </#if>
                    <div class="card-body">
                        <#if (cur_Fieldset45387152.Text66829913.getData())??><h5 class="card-title">${cur_Fieldset45387152.Text66829913.getData()}</h5></#if>
                        <#if (cur_Fieldset45387152.RichText77051524.getData())??>${cur_Fieldset45387152.RichText77051524.getData()}</#if>
                    </div>
                </div>
            </div>
        </#list>
    </#if>
</div>
