@javascript
Feature: Add a new Video
  In order to get a new video
  I want to be able to create video

  Scenario: Register a new Video
    Given I am authenticated
    Given category is populated
    Given I am on the new_video page
    And when I fill in "Title" with "iPad 3 on the Way"
    And when I fill in "Description" with "The new iPad3 is thinner, faster & cheaper"
    And When I select "Rails" from "Category"

    And When I fill in "Tags" with "Web"
    And When I fill in "Path" with "localhost"
    Then I sleep for "3" seconds
    And I pressed "Create Video"
    Then I should see "Video Submitted Successfully"
    Then I sleep for "2" seconds so that I can see the last output message clearly

