
# Requirements

## 1. Implement retrieve status text

It should be able to retrieve the correct status message and status code by implementing the getStatusText(). For instance a status code like "400" accompanied by the correct status message linked to the status code based on the HTTP request. For example: "Gone" or "Not Found".

### Test

Implement getStatusTextTest() for instance (a test to check that the correct status message gets returned based on different parameters).

## 2. Retain existing functionality.

Implementing the above requirements, specifically getStatusText() with tests should not break existing functionality. I.e everything should work as it did before plus the new functionality. Returning the [correct status code](https://github.com/group-15-dd2480/Assignment-4/blob/522930907af61ca8ce5ebd9908b615cd71e2e6b0/karate-core/src/test/java/com/intuit/karate/fatjar/ProxyServerTest.java#L79) and [returning the correct status message](https://github.com/group-15-dd2480/Assignment-4/blob/522930907af61ca8ce5ebd9908b615cd71e2e6b0/karate-core/src/test/java/com/intuit/karate/MatchTest.java#L39) should still work as intended.

### Test

No new test to ensure this but make sure the existing tests still works.