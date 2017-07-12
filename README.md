# integer-literal-underscores

Some languages (even Java!) support underscores in integer literals, like
`37_000_000`. This package attempts to "simulate" this in Haskell.

## Usage

```haskell
import Data.IntegerLiterals.Underscores

foo :: Integer
foo = 37_000_000
```

## Seriously

Enable [`-XNumDecimals`](https://downloads.haskell.org/~ghc/8.0.1/docs/html/users_guide/glasgow_exts.html#ghc-flag--XNumDecimals)
and write `37e6`.
