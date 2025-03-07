Feature: testing http patch method

Scenario:

Given url mockServerUrl
And path 'patch'
And request { foo: 'bar' }
When method patch
Then status 422
And status text Unprocessable Entity
And match response == { success: true }