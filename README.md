sass-respond-to
===============

There are two parts to this...

  + +respond-to($device)

  + +respond-above($screen-size)

Examples
-------

    .content
      width: 100%
      margin-right: auto
      margin-left: auto
      +respond-to(handhelds)
        .content-title
          display: none
      +respond-to(wide-handhelds)
        width: 90%
      +respond-to(tablets)
        width: 80%
      +respond-to(desktops)
        width: 70%
        max-width: 1150px

    .charts
      column-count: 1
      +respond-above(xs)
        column-count: 2
      +respond-above(s)
        column-count: 3
      +respond-above(m)
        column-count: 4
      +respond-above(l)
        column-count: 5
      +respond-above(xl)
        column-count: 6

Usage
------

First add compass-respond-to to your Gemfile:

    gem "compass-respond-to"

And require compass-respond-to in your compass.rb or config.rb:

    require "compass-respond-to"

Then you can import it into your .sass files:

    @import "respond-to"

Credit
------

respond-to() is a convenience plugin for [Chris Eppstein's Gist](https://gist.github.com/1215856#file_7_media_queries.sass) demonstrating Sass 3.2's block passing to mixins.

respond-above() is a simple mixin based on Malarkey's [320andup](https://github.com/malarkey/320andup/) responsive steps.

I'm fully expecting Compass to add something like this in the near future.

Many thanks to Brandon Mathis and his [Fancy Buttons](https://github.com/imathis/fancy-buttons), which I used as a template for this gem.