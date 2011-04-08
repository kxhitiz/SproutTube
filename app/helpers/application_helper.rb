module ApplicationHelper
  def id2person(id)
    @person_name = Person.find(id).name
  end
end

