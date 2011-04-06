module ApplicationHelper

  def id2person(id)
    @person_name = Person.find(id).name
  end

  def calculate_points(review,person_id)
    # @review = review
    #     @person = Person.find(params[:person_id])
    #
    #     @points = @person.points
    #     if @review.content.length > 20
    #       @points += 1
    #     end
  end

end

