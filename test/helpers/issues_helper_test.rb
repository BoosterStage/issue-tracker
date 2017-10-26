require 'test_helper'

class IssuesHelperTest < ActionView::TestCase
  
  test "button should have the correct markup" do
    issue = issues(:one)
    assert_dom_equal %{<a class="btn btn-warning" 
                          id="resolve_button" 
                          data-remote="true" 
                          rel="nofollow" 
                          data-method="put" 
                          href="/issues/#{issue.id}/resolve">Resolve Issue</a>}, 
                        resolve_issue_button(issue)
  end

  test "button for open issue should say 'Resolve'" do
    issue = issues(:one)
    assert_match /Resolve Issue/, resolve_issue_button(issue)
  end

  test "button for resolved issue should say 'Reopen'" do
    issue = issues(:two)
    issue.update_attribute(:resolved, true)
    assert_match /Reopen Issue/, resolve_issue_button(issue)
  end

end
