# What does shift do in the following code? How can we find out?

  hash = { a: 'ant', b: 'bear' }
  hash.shift

  # # this will return [a:, 'ant'], because shift returns the first key/value pair of a hash
  # as an array