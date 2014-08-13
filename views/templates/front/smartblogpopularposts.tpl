{if isset($posts) AND !empty($posts)}
<div class="block blogModule boxPlain">
   <h2 class='sdstitle_block'><a href="{smartblog::GetSmartBlogLink('smartblog')}">{l s='Popular Articles' mod='smartblogpopularposts'}</a></h2>
   <div class="block_content sdsbox-content">
      <ul class="popularArticles">
            {foreach from=$posts item="post"}
            {assign var="options" value=null}
            {$options.id_post= $post.id_smart_blog_post}
            {$options.slug= $post.link_rewrite}
            <li>
		<a class="image"
		    title="{$post.meta_title}" href="{smartblog::GetSmartBlogLink('smartblog_post',$options)}">
			<img alt="{$post.meta_title}"
		src="{$modules_dir}/smartblog/images/{$post.post_img}-home-small.jpg">
				</a>
		<a class="title"  title="{$post.meta_title}" href="{smartblog::GetSmartBlogLink('smartblog_post',$options)}">{$post.meta_title}</a>
	      <span class="info">{$post.created|date_format:"%b %d, %Y"}</span>
	    </li> 
	{/foreach}
      </ul>
   </div>
   <div class="box-footer"><span></span></div>
</div>
{/if}