module QueriesHelper

  def query_question_value_description(value)
    if value == 1
      content_tag(:span, "Yes", class: "text-success")
    elsif value == 0
      content_tag(:span, "Don't Know", class: "")
    elsif value == -1
      content_tag(:span, "No", class: "text-error")
    end
  end

end
