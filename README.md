# Custom Theme for RadGrad2 using Fomantic UI

This repo holds the fomantic-ui theme for RadGrad2.

## Installation

If you are downloading this from GitHub, the node_modules directory needs to be built.  Do this by invoking the following at top-level:

```sh
$ npm install
```

If you already have this around, and want to update to a new release of fomantic-ui, try:

```
$ npm update
```

Details available at the [Fomantic UI installation instructions](https://fomantic-ui.com/introduction/build-tools.html).

As of March 2021, Fomantic UI requires a specific version of NPM, Node, and Gulp for installation and building to work correctly. I found the Fomantic UI Discord server (link [here](https://github.com/fomantic/Fomantic-UI#-getting-help) to be very helpful when debugging my installation.


## Building the theme

To build a new theme, invoke:

```
$ cd semantic
$ gulp build
```

There is an index.html file at top-level which provides some feedback on the theme.

## Build a theme (install into radgrad2 repo)

To build a new theme *and* install it into the radgrad2 repository, you should first make sure you are not in the master branch of radgrad2. Run RadGrad locally.

Then invoke:

```
$ cd semantic
$ ./install-dist.sh
```

Here's the expected output (elided):

```
[~/github/radgrad/semantic-ui/semantic]-> ./install-dist.sh
[15:07:58] Using gulpfile ~/github/radgrad2/semantic-ui/semantic/gulpfile.js
[15:07:58] Starting 'build'...
Building Semantic
[15:07:58] Starting 'build-javascript'...
Building Javascript
[15:07:58] Starting 'build-css'...
Building CSS
[15:07:58] Starting 'build-assets'...
Building assets
[15:07:59] Created: dist/components/site.js
[15:07:59] Created: dist/components/site.min.js
 :
 :
 :
[15:08:10] Created: dist/components/transition.css
[15:08:10] Starting 'package uncompressed css'...
[15:08:10] Created: dist/components/transition.min.css
[15:08:10] Starting 'package compressed css'...
[15:08:19] Created: dist/semantic.min.css
[15:08:19] Finished 'package compressed css' after 8.67 s
[15:08:19] Created: dist/semantic.css
[15:08:19] Finished 'package uncompressed css' after 8.68 s
[15:08:19] Finished 'build-css' after 21 s
[15:08:19] Finished 'build' after 21 s
+ rm -rf ../../radgrad2/app/client/lib/semantic-ui
+ rm -rf ../../radgrad2/app/public/themes
+ mkdir ../../radgrad2/app/client/lib/semantic-ui/
+ cp -r dist/semantic.min.css ../../radgrad2/app/client/lib/semantic-ui/
+ cp -r dist/semantic.min.js ../../radgrad2/app/client/lib/semantic-ui/
+ cp -r dist/themes ../../radgrad2/app/public
```

The install script runs `gulp build` copies dist/semantic.min.css and dist/semantic.min.js to ../../radgrad2/app/client/lib/semantic-ui.

So that the icon files can be loaded, the dist/themes/ directory is copied to ../../radgrad/app/public.

Now you can display RadGrad2 with your new theme modifications. You can also toggle back and forth between the original theme and your new theme by switching back and forth between your branch and the master branch.

## Theme customizations

In src/site/, there are changes made to various *.variables and *.overrides files. You'll have to look through those subdirectories individually to see the changes.

In addition, I made a change to src/themes/default/globals/site.variables to change the default font size to 16px. See lines 34 and 37. I am not sure why I couldn't make this change in site/globals/site.variables, but it didn't take effect when I did it there. So, I changed it in the default them following the instructions [here](https://github.com/fomantic/Fomantic-UI/issues/1214#issuecomment-564127427).


