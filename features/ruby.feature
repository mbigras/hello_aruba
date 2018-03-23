Feature: Run a Ruby script from the command line
  
  Scenario: Using the -e flag
    When I run `ruby -e 'puts "hello world!"'`
    Then it should pass with:
      """
      hello world!
      """

  Scenario: Using STDIN
    When I run `echo 'puts "hello world!"' | ruby`
    Then it should pass with:
      """
      hello world!
      """