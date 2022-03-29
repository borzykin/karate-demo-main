Feature:

  Scenario: Passed
    * def port = karate.start('mock.feature').port
    * url 'http://localhost:' + port
    * path 'send2';
    * method get
    * status 200

    * method get
    * status 404

    * def temp = karate.prevRequest
    * def cookiee = temp.headers['Cookie']
    * match cookiee contains ["test=test"]


  Scenario: Failed
    * def port = karate.start('mock.feature').port
    * url 'http://localhost:' + port
    * path 'send';
    * method get
    * status 200

    * method get
    * status 404

    * def temp = karate.prevRequest
    * def cookiee = temp.headers['Cookie']
    * match cookiee contains ["detectedTimeZoneId=FLE Standard Time"]