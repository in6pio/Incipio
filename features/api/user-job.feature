@user @job @ignore
Feature: Jobs related user management
  There is a mandate for every year.
  A mandate is composed of a group of users, although may not have any user.
  The job of a user is the job he has occupied for a given mandate.
  A job must belong to a mandate.
  At each new mandate, the jobs available are the job enabled.
  A job may be left empty.
  New jobs are created for the current mandate.
  A user may have one or several mandate, with or without a job.

#  Scenario: It should be possible to get the jobs of a user per mandates.
#    Given I authenticate myself as "admin"
#    When I send a "GET" request to "/api/users/1"
#    Then the response should be in JSON-LD
#    And the response status code should be 200
#    And the JSON should be equal to:
#    """
#    {
#      "@context": "/api/contexts/User",
#      "@id": "/api/users/1",
#      "@type": "https://schema.org/Person",
#      "fullname": "Président TENDISERP",
#      "jobs": [
#        {
#          "@id": "/api/jobs/1",
#          "@type": "Job",
#          "title": "President",
#          "abbreviation": "PR",
#          "mandate": {
#            "@id": "/api/mandates/12",
#            "@type": "Mandate",
#            "endAt": "2018-04-19T08:27:09+02:00",
#            "name": "Mandate 2016/2018",
#            "startAt": "2016-09-08T06:36:47+02:00"
#          }
#        }
#      ],
#      "username": "president.tendiserp",
#      "email": "president.tendiserp@incipio.fr",
#      "roles": [
#        "ROLE_ADMIN",
#        "ROLE_USER"
#      ]
#    }
#    """
#    #TODO

  Scenario: When adding a job to a user, the mandate concerned should be required.
    #TODO

  Scenario: If a user has the same job for several mandates, changing the job title or abbreviation for a given mandate should not affect the others.
    #TODO: beginning of steps
    # Given user `u1` has the job `jobX` for the mandates `m1` and `m2`.
    # If I renamed the title or abbreviation of `jobX` which will become `jobY`, for the mandate `m1`,
    # the modification will not apply for `m2`, i.e. it will result in `jobX` for `m1` and `jobY` for `m2`.
    # Under the hook a new job must be created and added to the user for the given mandate.

  Scenario: It should be possible to delete a job for a user.
    #TODO
