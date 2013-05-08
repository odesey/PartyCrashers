Feature: A partier sees a list of parties
	As a party goer
	I want to see which parties I want to crash

	Scenario: No parties in this boring neighbourhood
	Given I am on the party list page
	Then I hould see "Sorry, no parties"