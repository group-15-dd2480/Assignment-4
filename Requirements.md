
# Requirements

## 1. Return the correct status code

It should return the correct status code, for example 400 or 200, based on the HTTP request.

### Test

http(HttpUriRequest request) in ProxyServerTest.java and http(HttpUriRequest request) in ProxyServerSslTest.java

## 2. Return the correct status message

Ensure the correct status message is returned based on the HTTP request. Different HTTP requests should give the appropriate status message like "OK", "Accepted" and so on.

### Test

private void message(String expected) in MatchTest.java


## 3. Implement retrieve status text

It should be able to retrieve the correct status message and status code by implementing the getStatusText(). For instance a status code like "400" accompanied by the correct status message linked to the status code based on the HTTP request. For example: "Gone" or "Not Found".

### Test

Implement getStatusTextTest() for instance (a test to check that the correct status message gets returned based on different parameters).

## 4. Support for different messages

Different status messages could exist for the same error code. Implement support for different messages so it returns the correct status message for a given status code.

### Test

Implement tests that check different messages could be returned correctly with the same status code (400).

## 5. Retain existing functionality.

Implementing the above requirements, specifically getStatusText() with tests should not break existing functionality. I.e everything should work as it did before plus the new functionality.

### Test

No new test to ensure this but make sure the existing tests still works.
