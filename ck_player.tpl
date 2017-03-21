{if $video.embed_code != ''}
	<script type="text/javascript" src="{$baseurl}/media/ckplayer/ckplayer.js" charset="utf-8"></script>
	<div class="video-embedded" id="a1">	</div>
	<script type="text/javascript">

	var flashvars = {ldelim}
	    f:'{$baseurl}/media/ckplayer/m3u8.swf',
		a:'{$baseurl}/media/videos/iphone/{$video.VID}/index.m3u8',
		s:'4',
	    c:'0',
		i:'{insert name=thumb_path vid=$video.VID}/{if $video.embed_code != ''}1{else}default{/if}.jpg'
	  {rdelim};
	var video=['{$video.embed_code}->video/mp4'];
	CKobject.embed('{$baseurl}/ckplayer/ckplayer.swf','a1','ckplayer_a1','100%','100%',false,flashvars,video);

	</script>
	 
{else}
	<div class="video-embedded" id="a1">
		
		
	</div>
	<script type="text/javascript" src="{$baseurl}/media/ckplayer/ckplayer.js" charset="utf-8"></script>
	
	<script type="text/javascript">

	var flashvars = {ldelim}
	    f:'{$baseurl}/media/ckplayer/m3u8.swf',
		a:'http://kpl.gwporn.com/media/videos/iphone/{$video.VID}/index.m3u8',
		s:'4',
		lv:'0',
        c:'0',
		i:'{insert name=thumb_path vid=$video.VID}/{if $video.embed_code != ''}1{else}default{/if}.jpg'
	  {rdelim};
	var video=['http://kpl.gwporn.com/media/videos/iphone/{$video.VID}/index.m3u8->video/mp4'];
	CKobject.embed('{$baseurl}/media/ckplayer/ckplayer.swf','a1','ckplayer_a1','100%','100%',false,flashvars,video);

	</script>{/if}
	
