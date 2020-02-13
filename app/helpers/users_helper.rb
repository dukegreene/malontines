module UsersHelper
  def same_users?(first, second)
    first.id == second.id
  end
end
