@job @ignore
Feature: Jobs management
  The job of a user is the job he has occupied for a given mandate.
  A job must belong to a mandate.
  At each new mandate, the jobs available are the job enabled.
  A job may be left empty.
  New jobs are created for the current mandate.

  Background:
    Given I authenticate myself as admin

  Scenario: I should be able to access to a student collection
#    When I send a GET request to "/api/student-conventions/1"
#    Then I get a resource page with the context "api/contexts/StudentConvention"
#    Then the JSON node ("[^"]+"|'[^']+'|\w+([.,]\w+)) should be equal to ("[^"]+"|'[^']+'|\w+([.,]\w+))

    #TODO

#  Scenario: It should be possible to get all the enabled jobs.
    #TODO

#  Scenario: It should be possible to order jobs by ID, title or abbreviation.
    #TODO

#  Scenario: It should be possible to find a job by its ID or title.
    #TODO

#  Scenario: It shoud be possible to find jobs by their abbreviation (an abbreviation may have several jobs).
    #TODO

#  Scenario: When creating a new job, it must have at least one mandate. By default is for the ongoing mandate.
    #TODO

#  Scenario: It should be possible to update a job.
    #TODO

#  Scenario: It should be possible to delete a job.
    #TODO
