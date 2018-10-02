<div class="banner-carousel container">

    <div class="banner-carousel slider">

        <#if title.getSiblings()?has_content>

            <#list title.getSiblings()?reverse?chunk(4)?first as cur_title>

                <div class="banner-carousel slide">

                    <div class="banner-carousel text">

                        <#if cur_title.getData()?has_content>
                            <h1>${cur_title.getData()}</h1>
                        </#if>

                        <#if cur_title.description.getData()?has_content>
                            <h2>${cur_title.description.getData()}</h2>
                        </#if>

                    </div>

                    <#if cur_title.image.getData()?has_content>

                        <img class="banner-carousel image" alt="${cur_title.image.getAttribute("alt")}" data-fileentryid="${cur_title.image.getAttribute("fileEntryId")}" src="${cur_title.image.getData()}" />

                    </#if>

                </div>

            </#list>

        </#if>

    </div>

</div>
