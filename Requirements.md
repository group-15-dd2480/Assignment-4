
# Requirements

## 1. Implement retrieve status text

When API testing you should be able to retrieve the status code but also the status message by implementing the getStatusText(). Formerly only the status code was obtainable. Now, for instance a status code like "400" should be accompanied by the status message linked to the status code based on the HTTP request like: "Gone" or "Not Found".

### Test

Implement [testResponseStatusText](https://github.com/group-15-dd2480/Assignment-4/blob/90c085e6e2cad78c80dddc1ba32b5d5fdca8056b/karate-core/src/test/java/com/intuit/karate/core/MockHandlerTest.java#L193) for instance (a test to check that the correct status message gets returned based on different parameters).

## 2. Retain existing functionality.

Implementing the above requirements, specifically getStatusText() with tests should not break existing functionality. I.e everything should work as it did before plus the new functionality.

### Test

No new test to ensure this but make sure the existing tests still works.