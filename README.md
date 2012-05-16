sass-respond-to
===============

Example
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

Credit
------

This is a convenience plugin for Chris Eppstein's Gist demonstrating Sass 3.2's block passing to mixins.

https://gist.github.com/1215856#file_7_media_queries.sass

I'm fully expecting Compass to add something like this in the near future.

Many thanks to Brandon Mathis and his Fancy Buttons, which I used as a template for this gem.

https://github.com/imathis/fancy-buttons