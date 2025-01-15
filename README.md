# Unhandled Exception Re-Throwing in Dart's async/await

This repository demonstrates a potential issue with exception handling in Dart's `async`/`await` pattern. The provided `fetchData` function includes a `try-catch` block, but it uses `rethrow` to propagate exceptions upwards. While sometimes necessary, this can lead to unexpected behavior if the exception is not caught and handled appropriately at a higher level.

The `bug.dart` file contains the code with the potential issue.  `bugSolution.dart` offers a safer approach.

## Problem

The `rethrow` statement in the `catch` block propagates the exception up the call stack. If no higher level function catches this exception, it will cause the application to crash with an unhandled exception error.

## Solution

The improved version in `bugSolution.dart` demonstrates alternative exception handling strategies that are more robust.  These could include: logging more detail and sending an error report, displaying an error message, or returning a default value.