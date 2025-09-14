<h1><i class="fa fa-info-circle"></i>About <%= application.name %></h1>

<ol class="breadcrumb">
	<li><i class="fa fa-info-circle"></i>About <%= application.name %></li>
</ol>

<div class="content">
	<div style="display:none; margin:20px; text-align:center">
		<img width="150" src="images/logos/zigzag.svg" />
	</div>

	<p><%= application.name %> is a self-hostable, cloud based media management and sharing platform.  It allows you to play manage, and share your music and to have full control over the platform that you use to do so. </p>

	<div class="attention"><div class="emphasis">Your Music, <br />Your Cloud!</div></div>

	<div class="details section">
		<div class="row">
			<div class="col-sm-6">
				<h2><i class="fa fa-check"></i>Features</h2>
				<ul>
					<li>Easy and intuitive user interface.</li>
					<li>Self-hostable.</li>
					<li>Includes social / direct messaging capability.</li>
					<li>Share via link, email, post, or direct message.</li>
					<li>Platform independent / mobile</li>
				</ul>
			</div>
			<div class="col-sm-6">
				<h2><i class="fa fa-star"></i>Benefits</h2>
				<ul>
					<li>Enjoy your music on any device.</li>
					<li>Manage your music, podcasts, and audio.</li>
					<li>Share music with friends and family.</li>
					<li>Control access to your data.</li>
					<li>Run and control your own cloud.</li>
				</ul>
			</div>
		</div>
	</div>

	<h2><i class="fa fa-desktop"></i>Screen Shots</h2>

	<div class="figure">
		<a href="images/info/desktop/desktop.png" target="_blank" class="smooth lightbox" title="<%= application.name %> Desktop"><img src="images/info/desktop/desktop.png" /></a>
		<div class="caption"><%= application.name %> Desktop</div>
	</div>

	<div class="figure row">
		<div class="figure col-sm-6">
			<a href="images/info/desktop/iphone-desktop.png" target="_blank" class="smooth lightbox" title="<%= application.name %> Mobile"><img src="images/info/desktop/iphone-desktop.png" style="width:300px" /></a>
			<div class="caption"><%= application.name %> Mobile</div>
		</div>
	</div>
</div>