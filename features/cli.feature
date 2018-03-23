Feature: Run a basic CLI
  @announce-stderr
  # @announce
  Scenario: Running the cli
    When I run `hello_aruba`
    Then it should pass with:
      """
      hello world!
      """

  Scenario: Checking the version
    When I run `hello_aruba --version`
    Then it should pass matching:
      """
      \d+\.\d+\.\d+
      """