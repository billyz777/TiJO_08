Feature: Filter page

  Scenario: Search case
    When I browse to the "/"
    When I enter "max" into "input.search" field
    Then the css element "td:nth-of-type(1)" should contain the text "Maxine"
    Then I should see "Maxine" in "firstName" column in row "1" of "student.table" table
    When I enter "27" into "input.search" field
    Then the css element "td:nth-of-type(2)" should contain the text "Burnett"
    Then I should see "27" in "age" column in row "1" of "student.table" table
    When I enter "+1 (932) 408-2012" into "input.search" field
    Then the css element "td:nth-of-type(4)" should contain the text "candace.gordon@undefined.name"
    Then I should see "Candace" in "firstName" column in row "1" of "student.table" table

  Scenario: FirstName search case
    When I browse to the "/"
    When I enter "ne" into "input.first" field
    Then the css element "td:nth-of-type(1)" should contain the text "Warner"
    Then I should see "+1 (914) 451-3055" in "phone" column in row "1" of "student.table" table
    Then I should see "Stevenson" in "lastName" column in row "2" of "student.table" table
    When I enter "guti" into "input.first" field
    Then the css element "td:nth-of-type(2)" should contain the text "Freeman"
    Then I should see "gutierrez.freeman@undefined.info" in "email" column in row "1" of "student.table" table

  Scenario: LastName search case
    When I browse to the "/"
    When I enter "an" into "input.last" field
    Then the css element "td:nth-of-type(2)" should contain the text "Ryan"
    Then I should see "22" in "age" column in row "2" of "student.table" table
    Then I should see "Chang" in "firstName" column in row "1" of "student.table" table
    When I enter "go" into "input.last" field
    Then the css element "td:nth-of-type(2)" should contain the text "Gordon"
    Then I should see "candace.gordon@undefined.name" in "email" column in row "1" of "student.table" table

  Scenario: Age search case
    When I browse to the "/"
    Then I enter "1" into "input.age" field
    Then the css element "td:nth-of-type(3)" should contain the text "18"
    Then I should see "Warner" in "firstName" column in row "1" of "student.table" table
    Then I should see "Rose" in "lastName" column in row "2" of "student.table" table
    When I enter "3" into "input.age" field
    Then the css element "td:nth-of-type(3)" should contain the text "35"
    Then I should see "Austin" in "firstName" column in row "1" of "student.table" table

  Scenario: Phone search case
    When I browse to the "/"
    When I enter "7" into "input.phone" field
    Then the css element "td:nth-of-type(2)" should contain the text "Spencer"
    Then I should see "Hardy" in "lastName" column in row "3" of "student.table" table
    Then I should see "35" in "age" column in row "2" of "student.table" table
