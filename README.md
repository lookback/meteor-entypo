# Entypo icons for Meteor

[Entypo+](http://entypo.com/) icons by Daniel Bruce, exclusively and carefully packaged for [Meteor](http://meteor.com) by [Lookback](http://lookback).

This package uses a Meteor *template helper* to inline each icon with help from the `use` element in SVG. Each icon is wrapped in a `symbol` element in a separate, cachable SVG sprite.

Example implementation and preview: [entypo.meteor.com](http://entypo.meteor.com) ([Source](http://github.com/lookback/meteor-entypo/tree/master/preview)).

Read more about SVG sprites:

- [CSS Tricks: Icon System with SVG Sprites](http://css-tricks.com/svg-sprites-use-better-icon-fonts/)
- [24 Ways: An Overview of SVG Sprite Creation Techniques](http://24ways.org/2014/an-overview-of-svg-sprite-creation-techniques/)

## Install

This package is available on Atmosphere as [`lookback:entypo`](https://atmospherejs.com/lookback/entypo).

Install package with

```
meteor add lookback:entypo
```

That will expose a `entypo` template helper for you to use in your app. The template helper takes one argument: the icon slug name (taken from the original SVG `id` attribute).

## Usage

Example:

```html
{{ > entypo 'flower'}}
```

Will generate:

```html
<svg class="icon icon-flower">
    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="/packages/lookback_entypo/entypo.svg#icon-flower"></use>
  </svg>
```

## Styling

SVG icons can be styled to mimic font icon behavior (resizable with `font-size`, inheriting parent color value) like this:

```scss
/* Suggestion on styling for the .icon class.
1. Will be inherited from parent's 'color' property.
2. Resize the icon by setting `font-size` on either .icon itself or parent.
*/
.icon {
  fill: currentColor; /* 1. */
  width: 1em; /* 2. */
  height: 1em; /* 2. */
}
```

You can also add relevant `vertical-align` properties as you see fit.
