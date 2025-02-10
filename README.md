# Haskell Sort Function Subtlety

This repository demonstrates a subtle bug related to using the `sort` function in Haskell. The provided code appears to work correctly, but hides a potential problem that can manifest with different data types.

## Bug Description

The `mySort` function uses `Data.List.sort` which works as expected for lists of numbers. However, the issue arises when considering lists of other data types that may implement the `Ord` typeclass in unexpected ways (e.g. custom data structures).  While the example seems straightforward, this approach can result in surprising or incorrect output if you are not careful about the definition of the ordering within your custom data types. 

## Solution

The provided solution emphasizes a more explicit and potentially safer alternative, particularly when dealing with complex data types. The solution shows a method to implement sorting, giving more control over ordering behavior.
