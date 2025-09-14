<div class="section colored" style="background:rgb(40, 70, 50)">
	<div class="row">
		<div class="col-sm-6">
			<a class="unstyled" href="#features/easy-to-use">
				<h2><img class="icon" src="images/logos/africa.png" />Technology Built For Humans</h2>
				<p><%= application.name %> is an online community, social network, and AI platform for people interested in the future of Africa.  It combines a social media platform with AI / chatbot technology to make it easier for people to find answers to questions concerning the betterment of Africa.</p>
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
			<a class="unstyled" href="#features/platform-independent">
				<h2><i class="fa fa-mobile"></i>Access It From Anywhere</h2>
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

<div class="section">
	<div class="row">
		<div class="col-sm-6">
			<h2><i class="fa fa-dollar-sign"></i>It's Free To Use</h2>
			<p><%= application.name %> is free for non-commercial use. </p>
		</div>
		<div class="col-sm-6"></div>
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