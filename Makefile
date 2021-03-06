pack:
	version=`cat manifest.json | grep '"version"' | sed -r 's/.*: "(.*)",/\1/'`; \
	echo $$version; \
	zip -r extension-$$version.zip \
		background.js  content.js  \
		icon128.png  icon16.png  icon32.png  icon48.png  \
		glyphicons-137-cogwheel.png \
		manifest.json  popup.html  popup.js \
		README.md LICENSE \
		_locales \
		bootstrap-theme.min.css bootstrap.min.css
