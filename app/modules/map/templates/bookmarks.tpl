{include file="findInclude:common/templates/header.tpl"}

{include file="findInclude:common/templates/search.tpl" placeholder="Search Map" tip=$searchTip}

{if $campuses}
<div class="nonfocal">
  <a name="campuses"> </a>
  <h3>Campuses</h3>
</div>
{include file="findInclude:common/templates/navlist.tpl" navlistItems=$campuses}
{/if}

{if $places}
<div class="nonfocal">
  <a name="places"> </a>
  <h3>Places</h3>
</div>
{include file="findInclude:common/templates/navlist.tpl" navlistItems=$places}
{/if}

{include file="findInclude:common/templates/footer.tpl"}
