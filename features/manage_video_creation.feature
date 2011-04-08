@javascript
Feature: Add a new Video and edit
  In order to get a new video and edit
  I want to be able to create new video and edit it

  Scenario: Register a new Video, edit and update
    Given I am authenticated
    Given category is populated
    Given I am on the new_video page
    And when I fill in "Title" with "Rails 4 on the way"
    And when I fill in "Description" with "The new Rails4 is great to explore"
    And When I select "Rails" from "Category"
    And When I fill in "Tags" with "Web"
    And When I fill in "Path" with "active_records"
    Then I sleep for "3" seconds
    And I press "Create Video"
    Then I should see "Video Submitted Successfully"
    Then I sleep for "2" seconds so that I can see the last output message clearly
    Then I fill in "Content" with "This is my review"
    And I press "Create Review"
    Then I should see "Great! You Just Made a Review"
    And I clicked "like_link"
    Then I should see "You Just Gave Thumbs Up To this Video"
    And When I follow "Browse All"
    And I clicked "Edit Video"
    Then I fill in "Title" with "Title is now Changed"
    Then I fill in "Description" with "Description now Changed"
    And I press "Update Video"
    Then I should see "Video Updated Successfully"

  Scenario: Searching for video
    Given I am authenticated



