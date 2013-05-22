class User < ActiveRecord::Base
  acts_as_authentic
  
  attr_accessible :google_name_formatted, :google_name_given_name, :google_name_family_name, :google_name_middle_name, :google_name
  attr_accessible :google_name_honorific_prefix, :google_name_honorific_suffix, :google_display_name, :google_object_type
  attr_accessible :google_birthday, :google_about_me, :google_relationship_status, :google_tag_line
  attr_accessible :google_url, :google_image_url, :google_locale, :google_gender
  attr_accessible :google_email, :google_nickname, :google_login_count, :google_id
  
  def self.find_or_create_from_auth_hash(auth_hash)
    if(auth_hash['provider'] == 'facebook')
      u = User.where("facebook_id = '#{auth_hash['uid']}'").first
      if u.nil?
        u = User.new
        u.facebook_id = auth_hash['uid']
        u.email = auth_hash['info']['email']
        u.login = auth_hash['info']['nickname']
        u.password = "123456"
        u.password_confirmation = "123456"
        u.save!
      end
    elsif(auth_hash['provider'] == 'google_oauth2')
      u = User.where("google_id = '#{auth_hash['uid']}'").first
      if u.nil?
        u = User.new
        u.google_id = auth_hash['uid']
        u.email = auth_hash['info']['email']
        u.login = auth_hash['uid']
        u.password = "123456"
        u.password_confirmation = "123456"
        u.save!
      end
    end
    u
  end
  
  def self.find_by_login_or_email(login)
     find_by_login(login) || find_by_email(login)
  end
end
