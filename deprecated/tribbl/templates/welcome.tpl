<div class="primary colored section">
	<div class="row">
		<div class="col-sm-6">
			<a class="unstyled" href="#features/easy-to-use">
				<h2><img class="icon" src="images/logos/tribble.png" />A Warm and Fuzzy Social Network</h2>
				<p>Are you looking for an alternative to the usual toxic social networks? Give Tribbl a try! Tribbl includes the usual news posting and chat functionality along with a collection of apps so you can view and edit documents that you share, examine photos, and do a lot of the things that you can do with your desktop operating system! </p>
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
			<h2><i class="fa fa-smile"></i>It's Easy to Use!</h2>
			<p><%= application.name %> has the <a href="#features/easy-to-use">familiar look and feel</a> of your desktop or mobile OS.  It's so familiar that you'll be comfortable with it right from the start.  It's like your computer but in the cloud. </p>
		</div>
		<div class="col-sm-6">
			<div class="figure">
				<a href="images/info/desktop/desktop-photos.png" target="_blank" class="lightbox" title="<%= application.name %> Desktop"><img src="images/info/desktop/desktop-photos.png" /></a>
				<div class="caption"><%= application.name %> Desktop</div>
			</div>
		</div>
	</div>
</div>

<div class="section">
	<div class="row">
		<div class="col-sm-6">
			<a class="unstyled" href="#features/platform-independent">
				<h2><i class="fa fa-mobile"></i>It's Accessible Anywhere</h2>
				<p>Access your digital world from anywhere on any internet connected device. </p>
			</a>
		</div>
		<div class="col-sm-6">
			<a class="unstyled" href="#features/platform-independent">
				<div class="figure">
					<a href="images/info/desktop/iphone-desktop.png" target="_blank" class="lightbox" title="<%= application.name %> Mobile"><img src="images/info/desktop/iphone-desktop.png" /></a>
					<div class="caption"><%= application.name %> Mobile</div>
				</div>
			</a>
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
			<h2><i class="fa fa-rocket"></i>It's Got Apps!</h2>
			<p><%= application.name %> has a collection of <a href="#apps">apps</a> for viewing, managing and sharing your data.</p>
		</div>
		<div class="col-sm-6">
			<div class="icons carousel">
				<% let apps = config.apps; %>
				<% let keys = Object.keys(apps); %>
				<% for (let i = 0; i < keys.length; i++) { %>
				<% let app = apps[keys[i]]; %>

				<% if (!app.disabled) { %>
				<div class="carousel-cell">
					<div class="app-icons large icon-grid items">
						<a href="#apps/<%= app.app %>">
						<div class="item" href="#apps/profile-browser" style="text-decoration:none">	
							<div class="row">
								<div class="icon colored <%= app.color %>">
									<img src="images/icons/apps/<%= app.image || app.app + '.svg' %>" />
									<i class="<%= app.icon %>"></i>
								</div>
							</div>
							<div class="row">
								<div class="name"><%= app.name %></div>
							</div>
						</div>
						</a>
					</div>
				</div>
				<% } %>

				<% } %>
			</div>
		</div>
	</div>
</div>