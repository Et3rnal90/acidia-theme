<div class="titled-card-display">

    <#if overhead.getData()?has_content>
        <h1>${overhead.getData()}</h1>
    </#if>

    <div class="titled-card-display container">

        <div class="row no-gutters row-eq-height">

            <#if title.getSiblings()?has_content>

                <#list title.getSiblings()?reverse?chunk(4)?first as cur_title>

                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">

                        <div class="titled-card-display element card">

                            <div class="titled-card-display innerText card-body">

                                <#if cur_title.getData()?has_content>
                                    <h3 class="card-title">${cur_title.getData()}</h3>
                                </#if>

                                <#if cur_title.description.getData()?has_content>
                                    <h4 class="card-text">${cur_title.description.getData()}</h4>
                                </#if>

                            </div>

                            <#if cur_title.image.getData()?has_content>

                                <img class="card-img-bottom" alt="${cur_title.image.getAttribute("alt")}" data-fileentryid="${cur_title.image.getAttribute("fileEntryId")}" src="${cur_title.image.getData()}" />

                            </#if>

                        </div>

                    </div>

                </#list>

            </#if>

        </div>

    </div>

</div>
