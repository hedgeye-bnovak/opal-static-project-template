# Experimenting w/ Javascript in Opal

This is to support a [spiking activity](https://www.pivotaltracker.com/story/show/77776990)
in Opal.

## Guard

It's a pain to change client side code and have to manually reassemble the assets and reload
the page in the browser, so here's how I solved it.

* There is a `Guardfile` that rebuilds `build.js` whenever relevant files change.
* I added an [autoreload addon for Firefox](https://addons.mozilla.org/en-us/firefox/addon/auto-reload/).
* Configured the addon in Firefox by:
     1.  Selecting `Tools` => `AutoReload Preferences`.
     1.  Editing the result pane as follows (adjust paths for your own system):
         ![AutoReload Configuration](docs/autoreload.jpg)

One criticism of this approach is that it is overkill when the project grows to any size.  Forrest
suggested that, at that point, would be better off to switch to Opal server.  At that point, will
lose the auto-refresh capability, but he points out you don't want auto-refresh everytime you save one file;
you may want to change 3 different files, then refresh.

Since this project is for spiking around, the auto-refresh is worth the `build.js` regeneration time for
now.