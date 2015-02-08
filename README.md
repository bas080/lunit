Lunit
=====
Write tests for your lua code.

Usage
-----
*example taken from the tests.lua*
```lua
lunit.tests( 'lunit', function( unit )

  unit.ok( true, 'true is ok')
  unit.ok( 'string', 'string is ok')
  unit.ok( '', 'empty string is ok')
  unit.ok( {}, 'table is ok')
  unit.ok( not nil, 'nil is not ok')
  unit.ok( not false, 'false is not ok')

  unit.equal( true, true, 'equals true')
  unit.equal( false, false, 'equals false')
  unit.equal( 'hello', 'hello', 'equals string')
  unit.equal( type(''), 'string', 'check type')

end)
```

Roadmap
-------
- deep equals for testing table outputs
- asynchronous tests
