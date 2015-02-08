lunit = {}
lunit.tests = function( name, tests )
  print("TEST: "..name)
  local succes = function( description )
    print( 'succes: '..description )
    return true
  end
  local failed = function( description, expected, value )
    print( 'failed: '..description..'\texpected '..tostring(expected)..' got '..tostring(value) )
    return false
  end
  local unit = {
    ok = function( value, description )
      if value then
        succes( description )
      else
        failed( description, 'true-ish', value )
      end
      return value
    end,
    equal = function( value, expected, description)
      if value == expected then
        succes( description )
      else
        failed( description, expected, value )
      end
      return value
    end,
  }
  return tests( unit )
end
