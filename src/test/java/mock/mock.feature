Feature:


  Scenario: pathMatches('/send')
    * def responseHeaders = { 'Set-Cookie': 'detectedTimeZoneId=FLE Standard Time' }

  Scenario: pathMatches('/send2')
    * def responseHeaders = { 'Set-Cookie': 'test=test' }
