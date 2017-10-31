module IssuesHelper
  
  def new_comment
    @comment ||= Comment.new(issue: @issue)
  end

  def resolve_issue_button(issue)
    link_to "#{issue.resolved? ? 'Reopen' : 'Resolve'} Issue", resolve_issue_path(issue),
            method: :put, 
            remote: true, 
            class: "btn btn-secondary",
            id: 'resolve_button'
  end

  def resolve_issue_badge(issue)
    str = issue.resolved? ? 'Resolved' : 'Open'
    content_tag :span, str, 
      class: "badge badge-#{issue.resolved? ? 'danger' : 'success'}",
      id: 'issue_resolved_status'
  end

  private

  def resolve_issue_class(issue)
    if issue.resolved?
      'danger'  # Red button
    else
      'success' # Green button
    end
  end
end
