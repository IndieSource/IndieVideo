<div class="section">
	<div class="row">
		<div class="col-sm-6">
			<a class="unstyled" href="#features/easy-to-use">
				<h2><img class="icon" src="images/logos/logo.svg" />Your Music, Your Cloud</h2>
				<p>You love your music.  Now you can love the platform that you use to play, manage, and share your music.  You can even run <%= application.name %> on your own server so you never have to be at the mercy of the tech giants and media conglomerates.  With <%= application.name %>, you can have your music on your cloud. </p>
			</a>
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
			<h2><i class="fa fa-dollar-sign"></i>It's Free To Use!</h2>
			<p><%= application.name %> is <a href="#policies/terms-of-use">free to use</a> for non-commmercial applications. </p>
		</div>
	</div>
</div>

<div class="section">
	<div class="row">
		<div class="col-sm-6">
			<h2><i class="fa fa-smile"></i>It's Easy To Use</h2>
			<p><%= application.name %> makes it easy to upload and organize your media.  It's easy to learn because it works just like your desktop computer or mobile device. </p>
		</div>
		<div class="col-sm-6">
			<div class="figure">
				<a href="images/info/desktop/desktop-windows.png" target="_blank" class="lightbox" title="<%= application.name %> File Browser"><img src="images/info/desktop/desktop-windows.png" /></a>
				<div class="caption"><%= application.name %> File Browser</div>
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