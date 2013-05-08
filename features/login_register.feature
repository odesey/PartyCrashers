Feature:  Register and Login to website
	In order to find parties, create parties, and party hard
	As a racous Partier
	I want to register and login

	Scenario: Link to registration Page
		Given I am on the homepage 
		And I am unregistered
		Then the registration link should link to the registration page
	
