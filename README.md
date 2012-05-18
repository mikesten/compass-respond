sass-respond
===============

There are two parts to this...

  + +respond-to($device)

  + +respond-above($screen-size)

+respond-to example
-------------------

SASS:

    @import "respond-to"
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

CSS:

    .content { width: 100%; margin-right: auto; margin-left: auto; }
    @media only screen and (max-width: 479px) { .content .content-title { display: none; } }
    @media only screen and (min-width: 480px) and (max-width: 767px) { .content { width: 90%; } }
    @media only screen and (min-width: 768px) and (max-width: 959px) { .content { width: 80%; } }
    @media only screen and (min-width: 960px) { .content { width: 70%; max-width: 1150px; } }

+respond-above example
----------------------

SASS:

    @import "respond-above"
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

CSS:

    .charts { column-count: 1; }
    @media only screen and (min-width: 480px) { .charts { column-count: 2; } }
    @media only screen and (min-width: 600px) { .charts { column-count: 3; } }
    @media only screen and (min-width: 768px) { .charts { column-count: 4; } }
    @media only screen and (min-width: 992px) { .charts { column-count: 5; } }
    @media only screen and (min-width: 1382px) { .charts { column-count: 6; } }


Usage
------

First add compass-respond to your Gemfile:

    gem "compass-respond"

And require compass-respond-to in your compass.rb or config.rb:

    require "compass-respond"

Then you can import the mixin you want into your .sass file:

    @import "respond-to"
    @import "respond-above"

Credit
------

respond-to() is a convenience plugin for [Chris Eppstein's Gist](https://gist.github.com/1215856#file_7_media_queries.sass) demonstrating Sass 3.2's block passing to mixins.

respond-above() is a simple mixin based on Malarkey's [320andup](https://github.com/malarkey/320andup/) responsive steps.

I'm fully expecting Compass to add something like this in the near future.

Many thanks to Brandon Mathis and his [Fancy Buttons](https://github.com/imathis/fancy-buttons), which I used as a template for this gem.