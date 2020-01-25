module ApplicationHelper
  # Returns a full title on a per page basis

  # Method defintion, optional argument
  def full_title(page_title = ' ')

    # Creating and assigning a variable
    base_title = "Orbit Feedback Application"

    # Boolean test
    if page_title.empty?

      # Implicit return
      base_title
    else

      # string concatenation
      page_title + " | " + base_title
    end
  end
end
