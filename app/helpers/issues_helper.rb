module IssuesHelper
  def resolve_issue_button(issue)
    link_to "#{issue.resolved? ? 'Reopen' : 'Resolve'} Issue", resolve_issue_path,
            method: :put, 
            remote: true, 
            class: resolve_issue_button_class(issue), 
            id: 'resolve_button'
  end

  private
  def resolve_issue_button_class(issue)
    if issue.resolved?
      'btn btn-danger'  # Red button
    else
      'btn btn-warning' # Orange button
    end
  end
end
