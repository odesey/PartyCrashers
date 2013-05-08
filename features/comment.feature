Feature: Leave a comment

    As a party goer
    I want to leave a comment

    Scenario: A party goer is not logged in
        When I post a comment
        Then I should see a notice "Please log in to make a comment"

    Scenario: Party goer leaves a comment
        Given I am on a party page 
        When I post a comment "i'll bring the booze"
        Then I should see the comment "i'll bring the booze"
       