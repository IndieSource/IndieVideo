/******************************************************************************\
|                                                                              |
|                                     main.js                                  |
|                                                                              |
|******************************************************************************|
|                                                                              |
|        This defines the application entry point and loading.                 |
|                                                                              |
|        Author(s): Abe Megahed                                                |
|                                                                              |
|        This file is subject to the terms and conditions defined in           |
|        'LICENSE.txt', which is part of this source code distribution.        |
|                                                                              |
|******************************************************************************|
|         Copyright (C) 2016-2020, Megahed Labs LLC, www.sharedigm.com         |
\******************************************************************************/

require([
	'jquery',
	'config/branding',
	'config/config',
	'config/defaults',
	'config/help',
	'application',
	'jquery.bridget',
	'jquery.flickity',
	'utilities/web/browser'
], function($, Branding, Config, Defaults, Help, Application, Bridget, Flickity, Browser) {
	'use strict';

	// set global for future reference
	//
	let application = new Application({});

	// make Flickety a jquery plug-in
	//
	$.bridget('flickity', Flickity);

	// go!
	//
	$(document).ready(() => {

		// set web page title
		//
		if (Branding.title) {
			document.title = Branding.title;
		}

		// attempt to disable pinch zoom on touch devices
		//
		if (Browser.isTouchEnabled()) {
			document.addEventListener('touchmove', (event) => {
				if (event.scale !== 1) {
					event.preventDefault();
				}
			}, false);
		}

		// start!
		//
		application.start();
	});
});
