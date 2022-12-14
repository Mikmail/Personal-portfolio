class Profile < ApplicationRecord
  belongs_to :user

  def display_name
    name.empty? ? "" : name.titleize
  end

  def display_intro 
    intro.nil? ? "" : intro.capitalize
  end

  def display_role 
    role.nil? ? "" : role.titleize
  end

  def display_link 
    link.nil? ? "" : link
  end

  def updated_time_formatted 
    updated_at.strftime("%b %-d, %Y - %l:%M %P")
  end
end
