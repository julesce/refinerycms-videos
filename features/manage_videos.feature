@videos
Feature: Videos
  In order to have videos on my website
  As an administrator
  I want to manage videos

  Background:
    Given I am a logged in refinery user
    And I have no videos

  @videos-list @list
  Scenario: Videos List
   Given I have videos titled UniqueTitleOne, UniqueTitleTwo
   When I go to the list of videos
   Then I should see "UniqueTitleOne"
   And I should see "UniqueTitleTwo"

  @videos-valid @valid
  Scenario: Create Valid Video
    When I go to the list of videos
    And I follow "Add New Video"
    And I fill in "Name" with "This is a test of the first string field"
    And I press "Save"
    Then I should see "'This is a test of the first string field' was successfully added."
    And I should have 1 video

  @videos-invalid @invalid
  Scenario: Create Invalid Video (without name)
    When I go to the list of videos
    And I follow "Add New Video"
    And I press "Save"
    Then I should see "Name can't be blank"
    And I should have 0 videos

  @videos-edit @edit
  Scenario: Edit Existing Video
    Given I have videos titled "A name"
    When I go to the list of videos
    And I follow "Edit this video" within ".actions"
    Then I fill in "Name" with "A different name"
    And I press "Save"
    Then I should see "'A different name' was successfully updated."
    And I should be on the list of videos
    And I should not see "A name"

  @videos-duplicate @duplicate
  Scenario: Create Duplicate Video
    Given I only have videos titled UniqueTitleOne, UniqueTitleTwo
    When I go to the list of videos
    And I follow "Add New Video"
    And I fill in "Name" with "UniqueTitleTwo"
    And I press "Save"
    Then I should see "There were problems"
    And I should have 2 videos

  @videos-delete @delete
  Scenario: Delete Video
    Given I only have videos titled UniqueTitleOne
    When I go to the list of videos
    And I follow "Remove this video forever"
    Then I should see "'UniqueTitleOne' was successfully removed."
    And I should have 0 videos
 