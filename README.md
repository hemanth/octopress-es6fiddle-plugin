es6fiddle Jekyll/Ocotpress plugin
================

Given a [es6fiddle](http://es6fiddle.net) share url, generates the embed code for the same.

## Syntax

```ruby
{% es6fiddle shorttag [width] [height] %}
```

## Examples:

Input: 

```ruby
{% es6fiddle hspmoyhf %}
```

Output: 

```html
<iframe style="width: 100%; height: 300px" frameborder="0" seamless="seamless" src="http://es6fiddle.net/hspmoyhf/"></iframe>
```

Input: 

```ruby
{% jsbin hspmoyhf 100 400 %}
```

Output: 

```html
<iframe style="width: 100%; height: 400px" frameborder="0" seamless="seamless" src="http://es6fiddle.net/hspmoyhf/"></iframe>
```
