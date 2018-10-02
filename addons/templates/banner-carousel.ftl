<div class="banner-carousel">

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

                        <div class="banner-carousel cover" style="background-image:url(${cur_title.image.getData()});">

                        </div>

                    </#if>

                </div>

            </#list>

        </#if>

    </div>

</div>
