# Bigger-Intrinsic-Content-Size-UILabel
## Syntax: Swift 3
This is my UILabel subclass with overrided `intrinsicContentSize` method and with corner radius in `layoutSubviews` to accomplish badge effect easily!

**Just set it up as class for UILabel in Storyboard or init it code**

Has two additional `@IBInspectable` properties: `additionalWidth` & `additionalHeight`. Their `didSet` setup to invalidate intrinsic content size, so you can freely change it's values.

Also in overrided `layoutSubviews` layer's `cornerRadius` set to **half height**

Enjoy!

**TODO: Maybe override bounds also**
