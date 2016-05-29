module ContestantsHelper

  def current_status_class c
    c.eliminated_episode.present? ? 'strikethrough bg-danger' : nil
  end

  def current_status_text_class c
    c.eliminated_episode.present? ? 'strikethrough' : nil
  end
end
