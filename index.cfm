<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
<!DOCTYPE html>
<html lang="en">
<head>
	<title><mango:Blog title /> &#8212; <mango:Blog tagline /></title>

	<meta http-equiv="Content-Type" content="text/html; charset=<mango:Blog charset />" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="generator" content="Mango <mango:Blog version />" />
	<meta name="description" content="<mango:Blog description />" />
	<meta name="robots" content="index, follow" />

	<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="<mango:Blog rssurl />" />
	<link rel="alternate" type="application/atom+xml" title="Atom" href="<mango:Blog atomurl />" />
	<link rel="EditURI" type="application/rsd+xml" title="RSD" href="<mango:Blog apiurl />" />

	<link rel="stylesheet" href="<mango:Blog skinurl />assets/css/bootstrap.min.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="<mango:Blog skinurl />assets/css/bootstrap-responsive.min.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="<mango:Blog skinurl />assets/css/font-awesome.min.css">
	<!--[if IE 7]>
	<link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css">
	<![endif]-->

	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>


	<mango:Event name="beforeHtmlHeadEnd" />
</head>
<body>
	<mango:Event name="beforeHtmlBodyStart" />

<!--- BEGINNGING OF BOOTSTRAP ============================================= --->
<div class="navbar navbar-static-top"> <!--- navbar-inverse --->
	<div class="navbar-inner">
		<div class="container">
			<!-- .btn-navbar is used as the toggle for collapsed navbar content -->
			<button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<div class="nav-collapse collapse">
				<ul class="nav pull-right">
					<li><a href="#" title="Frequently Asked Questions"><i class="icon-question-sign"></i>  FAQ</a></li>
					<li><a href="#about" title="NCDevCon Code of Conduct"><i class="icon-check"></i> Code Of Conduct</a></li>
					<li><a href="#contact" title="Contact NCDevCon"><i class="icon-envelope"></i> Contact</a></li>
					<li><a href=""><i class="icon-twitter"></i> Twitter</a></li>
					<li><a href=""><i class="icon-rss"></i> RSS</a></li>
				</ul>
			</div><!--/.nav-collapse -->
		</div>
	</div>
</div>

<div class="container">
	<div class="masthead">
		<h1><a href="<mango:Blog url />"><mango:Blog title /></a></h1>
			<h3><mango:Blog tagline /></h3>
		<div class="navbar">
			<div class="navbar-inner">
				<div class="container">
					<ul class="nav">
						<li>
							<a class="active" href="<mango:Blog basePath />" title="Home">Home</a>
						</li>
						<mango:Pages>
							<mango:Page>
								<li>
									<a href="<mango:PageProperty link>" title="<mango:PageProperty title />"><mango:PageProperty title /></a>
								</li>
							</mango:Page>
						</mango:Pages>
					</ul>
				</div>
			</div>
		</div>
		<!-- /.navbar -->
	</div>

	<!-- Example row of columns -->
	<div class="row-fluid">
		<div class="span8">
			<h2>
				Heading
			</h2>
			<p>
				Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus
				ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo
				sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed
				odio dui.
			</p>
			<p>
				<a class="btn" href="#">View details »</a>
			</p>
		</div>
		<div class="span4">
			<h2>
				Heading
			</h2>
			<p>
				Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus
				ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo
				sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed
				odio dui.
			</p>
			<p>
				<a class="btn" href="#">View details »</a>
			</p>
		</div>
	</div>
	<hr>
	<div class="footer">
		<p class="pull-right">
			© Company 2013
		</p>
	</div>
</div>
<!-- /container -->
<div class="container">
</div>

<!--- END OF BOOTSTRAP ============================================= --->



		<!--- Main body --->
		<div class="span9">
			<mango:Posts count="10">
				<mango:Post>
				<h2><a href="<mango:PostProperty link />" rel="bookmark" title="Permanent Link to <mango:PostProperty title />"><mango:PostProperty title /></a></h2>
				<h4><mango:PostProperty date dateformat="mmmm dd, yyyy" /> &middot; By <mango:PostProperty author /> &middot; <mango:PostProperty ifcommentsallowed><a href="<mango:PostProperty link />#respond" title="Comment on <mango:PostProperty title />"><mango:PostProperty ifCommentCountGT="0"><mango:PostProperty commentCount /> Comment<mango:PostProperty ifCommentCountGT="1">s</mango:PostProperty></mango:PostProperty><mango:PostProperty ifCommentCountLT="1">No Comments</mango:PostProperty></a></mango:PostProperty></h4>
				<div class="entry">
					<mango:PostProperty ifhasExcerpt excerpt>
					<p><a href="<mango:PostProperty link />" title="Read the rest of this entry">[Read more &rarr;]</a></p>
					</mango:PostProperty>
					<mango:PostProperty ifNotHasExcerpt body />
				</div>
				<div class="entry-footer entry">
				<mango:Event name="beforePostContentEnd" template="index" mode="excerpt" />
				</div>
				<p class="tagged"><span class="add_comment"><mango:PostProperty ifcommentsallowed>&rarr; <a href="<mango:PostProperty link />#respond" title="Comment on <mango:PostProperty title />"><mango:PostProperty ifCommentCountGT="0"><mango:PostProperty commentCount /> Comment<mango:PostProperty ifCommentCountGT="1">s</mango:PostProperty></mango:PostProperty><mango:PostProperty ifCommentCountLT="1">No Comments</mango:PostProperty></a></mango:PostProperty></span><strong>Tags:</strong>
				<mango:Categories><mango:Category><a href="<mango:CategoryProperty link />" title="View all posts in  <mango:CategoryProperty title />" rel="category tag"><mango:CategoryProperty title /></a> <mango:Category ifCurrentIsNotLast>&middot; </mango:Category></mango:Category></mango:Categories>
				</p>
				<div class="clear"></div>
				</mango:Post>
			</mango:Posts>

			<mango:Archive pageSize="10">
				<div class="navigation">
					<div class="previous"><mango:ArchiveProperty ifHasNextPage><a class="previous" href="<mango:ArchiveProperty link pageDifference="1" />">&larr; Previous Entries</a></mango:ArchiveProperty></div>
				<div class="next"></div>
			</div>
			</mango:Archive>
		</div><!-- End span9 -->

		<!--- SIDEBAR --->
		<div class="span3">
			<ul class="sidebar_list">
				<mangox:PodGroup locationId="sidebar" template="index">
					<mangox:TemplatePod id="blog-description" title="About">
					<p><mango:Blog description descriptionParagraphFormat /></p>
					</mangox:TemplatePod>
					<template:sidebar />
				</mangox:PodGroup>
			</ul>
		</div><!-- End span3 -->
		<div class="clear"></div>

		<!--- Footer --->
		<div class="span12">
			<mangox:PodGroup locationId="footer" template="index">
				<template:footer />
					</mangox:PodGroup>
		</div>
		<div class="clear"></div>

		<div class="span12" id="footer">
			<mango:Event name="afterFooterStart" />
			<mango:Blog title /> &mdash; <a href="http://www.mangoblog.org" title="Mango Blog - A free ColdFusion blog engine">Powered by Mango Blog</a>
			<mango:Event name="beforeFooterEnd" />
		</div><!-- End span12 -->
		<div class="clear"></div>
		<!--- End footer --->

	</div><!-- End container_12 -->

	<mango:Event name="beforeHtmlBodyEnd" />
</body>
</html>