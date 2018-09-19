module Partner::DashboardHelper

  def partner_action request
    if ["Pending"].include?(request.status.try(:name))
      (link_to 'Accept', accept_reject_partner_dashboard_index_path(value: "accepted", id: request.id), method: :put, :remote => true, class: " btn btn-success btn-xs btn_margin") +
      (link_to 'Reject', accept_reject_partner_dashboard_index_path(value: "rejected", id:request.id ), method: :put, :remote => true, class: " btn btn-danger btn-xs" ) +
      (link_to 'Comment', open_comment_pop_up_path(id: request.id), method: :get, :remote => true, id: '#comment', class: " btn btn-info btn-xs btn_margin")
    elsif request.status.try(:name) == "Accepted"
      (link_to 'Complete', accept_reject_partner_dashboard_index_path(value: "completed", id: request.id), method: :put, :remote => true, class: " btn btn-success btn-xs btn_margin") +
      (link_to 'In Complete', accept_reject_partner_dashboard_index_path(value: "incompleted", id: request.id), method: :put, :remote => true, class: " btn btn-danger btn-xs") +
      (link_to 'Comment', open_comment_pop_up_path(id: request.id), method: :get, :remote => true, id: '#comment', class: " btn btn-info btn-xs btn_margin")
    elsif (request.status.try(:name) == "Completed")
      request.feedback.present? ? add_rating_html_block(request) : "Not Yet Rated" 
      (link_to 'Comment', open_comment_pop_up_path(id: request.id), method: :get, :remote => true, id: '#comment', class: " btn btn-info btn-xs btn_margin")
    else
      "-"
    end
  end
end
