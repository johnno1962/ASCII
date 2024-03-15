# ASCII
Facilitating operations on ASCII in Swift

At present low level operations on buffers of UInt8 is
poorly served by the base Swift Language. This package
provises alternatives to repeated calls to `UInt8(ascii:)`
in comparisions or in switch statements.

The first alternative you enable by importing the `ASCII`
target and provides a `.ascii` property on the `UInt8`
type which allows you to perform comparisions of UInt8
values to string literals as follows:

```
  if c.ascii == "c" {
```
If the UInt8 variable `c` does not contain an ASCII character
i.e. it has a value 128 or more the property returns nil as
the comparision would never be valid given the semantics of
utf8 encoded strings.

The property can also be used in switch statments:

```
  switch c.ascii {
  case "c":
    print("Character is c")
  case "é":
    print("Beware, this can never be called")
  default:
    ...
}
```
This switch statment shows the imitations of this approach
that invalid code intentded to match the non-ASCII character
`é` which will never work is able to compile. This approach
was suggested by user @michelf on the swift-evolution forums.

### ImplicitASCII module.

A different approach is taken if you import the `ImplicitASCII`
module. It defines a minimal set of operators to compare a 
`UInt8` value driectly to a `UnicodeScalar` (generall a double
quoted string literal).

In this way. the `.ascii` property does not need to be used but
note that if a value is compared against a non-ASCII literal
or there is a switch with a non-ASCII case this approach can
crash your program. This can be perceived as a feature or not
depending on your viewpoint.
