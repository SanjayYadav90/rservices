module Partner::CompanyServicesHelper
  
  def select_available_services services, form
    form.select(:service_id, options_from_collection_for_select(services, :id, :name), { :prompt => "Select Service"}, required: 'true', class: 'form-control form_input', data: {remote: true, url: get_cities_path, method: 'get'})
  end

  def select_service_city cities
    (label_tag 'cities', 'Cities', class: "control-label col-sm-2") +
    content_tag(:div,class: "col-sm-10") do
      select_tag 'portfolio_service[city_ids]', options_from_collection_for_select(cities, :id, :name), multiple: true, class: 'form-control form_input'
    end
  end

end