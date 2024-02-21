;; extends

[
  ; prevent double indent for `return new class ...`
  (return_statement
    (object_creation_expression))
  ; prevent double indent for `return function() { ... }`
  (return_statement
    (anonymous_function_creation_expression))
] @indent.dedent
