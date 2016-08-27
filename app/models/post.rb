class Post < ActiveRecord::Base
    resourcify
    include Authority::Abilities
    belongs_to :bulletin
    mount_uploader :picture, PictureUploader
    belongs_to :user


end
