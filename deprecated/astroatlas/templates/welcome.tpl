<div class="section">
	<div class="row">
		<div class="col-sm-6">
			<h2><img class="icon" src="images/logos/zigzag.svg" />Sharing Made Simple</h2>
			<p><%= application.name %> is a self-hostable cloud based operating system that brings together file management, file sharing, and collaboration / social networking all in one easy to use platform. </p>
		</div>
		<div class="col-sm-6">
			<div class="figure">
				<a href="images/info/desktop/desktop.png" target="_blank" class="lightbox" title="<%= application.name %>"><img src="images/info/desktop/desktop.png" /></a>
				<div class="caption"><%= application.name %></div>
			</div>
		</div>
	</div>
</div>

<div class="section">
	<div class="row">
		<div class="col-sm-6">
			<h2><i class="fa fa-dollar-sign"></i>It's Free to Use!</h2>
			<p><%= application.name %> is <a href="#policies/terms-of-use">free to use</a> for non-commmercial applications. </p>
		</div>
	</div>
</div>

<div class="section">
	<div class="row">
		<div class="col-sm-6">
			<h2><i class="fa fa-smile"></i>It's Easy to Use!</h2>
			<p><%= application.name %> has the <a href="#features/easy-to-use">familiar look and feel</a> of your desktop or mobile OS.  It's so familiar that you'll be comfortable with it right from the start.  It's like your computer but in the cloud. </p>
		</div>
		<div class="col-sm-6">
			<div class="figure">
				<a href="images/info/desktop/desktop-photos.png" target="_blank" class="lightbox" title="<%= application.name %>"><img src="images/info/desktop/desktop-photos.png" /></a>
				<div class="caption"><%= application.name %></div>
			</div>
		</div>
	</div>
</div>

<% let identityProviders = application.session.has('config')? application.session.get('config').identity_providers : undefined; %>
<div class="section">
	<div class="row">
		<div class="col-sm-6">
			<h2><i class="fa fa-pencil-alt"></i>It's Quick To Sign Up</h2>
			<% if (identityProviders && identityProviders.length > 0) { %>
			<p>Signing up is quick and easy.  There's a simple registration form or if you're already signed in to an identity provider (<%= identityProviders.join(', ') %>), just hit the "Sign Up With" button and you can get started in seconds! </p>
			<% } else { %>
			<p>Signing up is quick and easy.  Fill out a simple registration to get started in seconds! </p>
			<% } %>
		</div>
		<div class="col-sm-6">
			<div class="well">
				<br />
				<div class="buttons">
					<button class="sign-up btn btn-lg">
						<i class="fa fa-pencil-alt"></i>Sign Up!
					</button>
				</div>
				<br />
			</div>
		</div>
	</div>
</div>

<div class="section">
	<div class="row">
		<div class="col-sm-6">
			<h2><i class="fa fa-mobile"></i>It's Accessible Anywhere</h2>
			<p>Access your digital world from anywhere on <a href="#features/platform-independent">any internet connected device.</a> </p>
		</div>
		<div class="col-sm-6">
			<a href="#features/platform-independent">
				<div class="figure">
					<a href="images/info/desktop/iphone-desktop.png" target="_blank" class="lightbox" title="<%= application.name %> Mobile"><img src="images/info/desktop/iphone-desktop.png" /></a>
					<div class="caption"><%= application.name %> Mobile</div>
				</div>
			</a>
		</div>
	</div>
</div>

<div class="section">
	<div class="row">
		<div class="col-sm-6">
			<h2><i class="fa fa-tools"></i>It's Self-Hostable!</h2>
			<p>Are you a DIY type person?  You can <a href="#features/self-hostable">run <%= application.name %> on your own server</a>! Join the host it yourself (HIY) movement to retake control over your data! </p>
		</div>
		<div class="col-sm-6">
			<div class="figure">
				<a href="#welcome/we-can-do-it">
					<img class="vertical" src="images/welcome/we-can-do-it.jpg" />
				</a>
			</div>
		</div>
	</div>
</div>

<div class="section">
	<div class="row">
		<div class="col-sm-6">
			<h2><i class="fa fa-code"></i>It's Web Postable</h2>
			<p>You can <a href="#features/web-postable">post and view</a> files that have been uploaded to <%= application.name %> on other websites easily with just a bit of HTML code. </p>
		</div>
		<div class="col-sm-6">
			<a href="#features/web-postable">
				<div class="code well">
	&lt;iframe src="YOUR FILE LINK HERE"&gt;&lt;/iframe&gt
				</div>
			</a>
		</div>
	</div>
</div>