{capture name="banner" assign="banner"}
  <div id="navbar">
    <img src="/modules/{$moduleID}/images/home.png" width="40" height="40" alt="" class="moduleicon" />
    <span class="pagetitle">
      {$pageTitle}
    </span>        
    {include file="findInclude:common/templates/search.tpl" inNavbar=true placeholder="Search "|cat:$SITE_NAME}
  </div>
{/capture}

{include file="findInclude:common/templates/header.tpl" customHeader=$banner scalable=false}

<div class="blocks" id="fillscreen">
  {foreach $modulePanes as $blockName => $blockConfig}
    <div class="block {$blockName} {$blockConfig['id']}">
      <div class="blockborder">
        <a href="{$blockConfig['url']}" class="blockheader">
          <div class="icon"></div>
          {$blockConfig['title']}
          <div class="nextlink"></div>
        </a>
        <div class="blockcontent">{$blockConfig['content']}</div>
      </div>
    </div> 
  {/foreach}
</div>

{include file="findInclude:common/templates/footer.tpl"}
