# Karate - Versatile Test Automation Framework

## Introduction

Karate is an open-source test automation framework designed to simplify various types of testing, such as API testing, mocking, performance testing, and UI automation, all within a single framework. It uses a Domain-Specific Language (DSL) based on Gherkin syntax, which makes it accessible to both technical and non-technical users. Karate reduces the need for multiple tools, offering a unified solution for different testing requirements. This approach allows for seamless integration of API and UI testing within the same test flow, enabling scenarios like obtaining an authentication token via an API call and then performing UI actions without redundant steps.

## Key Features

- **Unified Testing Approach**: Karate integrates API testing, mocking, performance testing, and UI automation into one platform, eliminating the need to use multiple different tools for each type of test.
- **Simple Syntax**: Karate's syntax is based on Gherkin, which is easy to learn and use for testers, developers, and business analysts.
- **Built-in Assertions**: Karate includes a built-in set of assertions for validating API responses and other test outcomes with minimal configuration.
- **Data-Driven Testing**: Karate supports dynamic data injection and external data sources, making it easy to run the same tests with multiple data sets.
- **Parallel Execution**: Karate supports multi-threaded parallel execution, which helps reduce test execution times significantly.
- **Seamless Integration**: Easily integrates with CI/CD pipelines, GitHub Actions, and other popular DevOps tools.

## Purpose of Karate

Karate addresses the complexities associated with integrating multiple testing tools by providing a comprehensive solution that supports various testing requirements:

- **API Testing**: Simplifies the testing of RESTful and SOAP services through an intuitive syntax, enabling efficient validation of API endpoints. Users can send requests, assert responses, handle authentication, and perform complex API chaining effortlessly.
- **Mocking**: Allows for the simulation of APIs, facilitating testing interactions without dependence on actual services, thereby enabling isolated and controlled test environments. This is particularly useful for teams working on microservices or third-party integrations.
- **Performance Testing**: Integrates with performance testing tools to assess API responsiveness and stability under load, ensuring they meet performance standards. With the help of **karate-gatling**, users can transform existing functional tests into performance tests.
- **UI Automation**: Extends its capabilities to automate web UI testing, allowing for end-to-end testing scenarios that encompass both frontend and backend components. Karate’s **karate-robot** module enables desktop automation, while built-in Selenium integration allows web browser testing.
- **Service Virtualization**: Provides the ability to create virtual services, allowing teams to develop and test applications even when real services are unavailable.
- **Security and Authentication**: Supports various authentication methods such as OAuth, JWT, and Basic Auth, making it easier to test secure applications.

## Architecture of Karate

Karate's architecture is modular, comprising several components that collectively provide its robust testing capabilities. Each module serves a specific purpose, ensuring flexibility and scalability for different testing needs:

- **karate-core**: This is the foundational module that provides the core testing functionality, including the scripting engine and the DSL for writing tests.
- **karate-jersey**: This module offers an HTTP client implementation based on the Jersey framework, providing an alternative to the default HTTP client for API communication.
- **karate-netty**: This module implements a mock server using the Netty framework, allowing users to simulate API endpoints for testing purposes. It supports creating isolated test environments.
- **karate-junit5**: This module enables integration with JUnit 5, making it easy to execute Karate tests alongside other JUnit tests and integrate Karate into continuous integration (CI) systems.
- **karate-gatling**: This module integrates with Gatling for performance testing. It allows Karate tests to be reused for load testing, ensuring consistency between functional and performance tests.
- **karate-robot**: This module enables UI automation, supporting desktop automation and web browser testing using Selenium.
- **karate-archetype**: This is a Maven archetype that provides a quick-start template for new Karate projects, setting up the project structure, dependencies, and configuration files.
- **karate-demo**: A demo project showcasing how to use Karate for different types of tests. It serves as an example to help new users get started with Karate.
- **karate-docker**: This module provides Docker images for running Karate tests in a containerized environment, enabling consistent testing across different environments.
- **karate-e2e-tests**: This module contains end-to-end tests for Karate itself, ensuring the correctness of the Karate framework by testing its features in realistic scenarios.
- **karate-playwright**: Integrates with the Playwright tool to extend Karate's UI automation capabilities for modern web browsers. This module supports automated browser testing using Playwright's advanced features.

# Karate Examples

* [karate-template](https://github.com/karatelabs/karate-template) - Good for quick-start "skeleton" Karate project for API testing
* [karate-todo](https://github.com/karatelabs/karate-todo) - Great for training or demo-ing all capabilities of Karate. It includes an app that has a working front-end UI and back-end API. Examples of API tests, API performance tests, API mocks and Web-Browser automation are included.


## API Testing
* [karate-demo](https://github.com/karatelabs/karate/tree/master/karate-demo) - It's not a stand-alone project, and is more of a regression test-suite for Karate itself. But it has a lot of examples of how to use Karate for API testing
* [karate-todo](https://github.com/karatelabs/karate-todo) - includes a working API and [examples](https://github.com/karatelabs/karate-todo/tree/main/src/test/java/app/api)
* [spring-boot](spring-boot) - Examples of how to test Spring Boot applications
* [folio-integration-tests](https://github.com/folio-org/folio-integration-tests/tree/master) - This is a complex external open-source project that uses Karate, and all the tests and project-structure can be viewed. This one is a good example: [permissions.feature](https://github.com/folio-org/folio-integration-tests/blob/9254190be84869a09b093acca05b2703edd3b55f/mod-permissions/src/main/resources/domain/mod-permissions/features/permissions.feature)

## API Performance Testing
* [examples/gatling](https://github.com/karatelabs/karate/tree/master/examples/gatling) - A stand-alone project that demonstrates how to use Karate with Gatling for performance testing
* [karate-todo](https://github.com/karatelabs/karate-todo) - includes a working API and [performance test](https://github.com/karatelabs/karate-todo/tree/main/src/test/java/app/perf)
* [karate-gatling](https://github.com/karatelabs/karate/tree/master/karate-gatling/src/test/scala/mock) - The main documentation also includes an example

## API Mocks
* [examples/gatling](https://github.com/karatelabs/karate/tree/master/examples/gatling) - Although this project is mainly to demo performance testing, it also has an example of using a Karate API [mock](https://github.com/karatelabs/karate/blob/master/examples/gatling/src/test/java/mock/mock.feature).
* [karate-todo](https://github.com/karatelabs/karate-todo) - includes a working API and [equivalent mock](https://github.com/karatelabs/karate-todo/blob/main/src/test/java/app/mock/mock.feature) and if you are interested in the new [pure-JS option](https://github.com/karatelabs/karate/wiki/Karate-JavaScript-Mocks), there is an [example](https://github.com/karatelabs/karate-todo/blob/main/src/main/java/app/api/todos.js)
* [consumer-driven-contracts](https://github.com/karatelabs/karate/tree/master/examples/consumer-driven-contracts) - Karate's approach to contract-testing depends on mocks, and this project has a [good example](https://github.com/karatelabs/karate/blob/master/examples/consumer-driven-contracts/payment-producer/src/test/java/payment/producer/mock/payment-mock.feature).

## Web Browser Automation
* [karate-e2e-tests](https://github.com/karatelabs/karate/tree/master/karate-e2e-tests) - Part of the main Karate project, and also a good example of setting up configuration for multiple browsers and testing in parallel using the [karate-chrome](https://github.com/karatelabs/karate/tree/master/karate-core#karate-chrome) Docker container
* [karate-todo](https://github.com/karatelabs/karate-todo) - includes a working UI and [UI tests](https://github.com/karatelabs/karate-todo/tree/main/src/test/java/app/ui), even "hybrid" tests that mix API and UI calls
* [Visual Testing](https://github.com/karatelabs/karate/tree/master/examples/image-comparison) - refer to this example on how to use Karate's [built-in support for image-comparison](https://github.com/karatelabs/karate/#compare-image)
* Note that Karate UI tests can be run using [Sauce Labs](https://github.com/karatelabs/karate-examples/blob/main/saucelabs/README.md), [BrowserStack](https://github.com/karatelabs/karate-examples/blob/main/browserstack/README.md), [Lambdatest](https://github.com/karatelabs/karate-examples/blob/main/lambdatest/README.md) or any other infrastucture that supports the [WebDriver (a.k.a. Selenium) protocol](https://www.w3.org/TR/webdriver/) - which means that you have plenty of options for running tests in parallel and you can even self-host the infrastructure to do so














