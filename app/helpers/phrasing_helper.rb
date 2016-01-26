module PhrasingHelper
  def can_edit_phrases?
    current_user.present?
  end
end
