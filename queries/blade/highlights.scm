([
  (directive)
  (directive_start)
  (directive_end)
] @keyword (#set! "priority" 110))

([
  (bracket_start)
  (bracket_end)
] @punctuation.special (#set! "priority" 110))

(comment) @comment @spell

((parameter) @include (#set! "priority" 120))
((php_only) @include (#set! "priority" 120))
