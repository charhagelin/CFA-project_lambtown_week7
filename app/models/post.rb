class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

    extend FriendlyId
    friendly_id :slug_candidates, use: :slugged

    def slug_candidates
      [
        :title,
        [:title, :content]
      ]
    end
end


# så i vår slug så komemr det att visa istället för ett params id. så vad vi ber den om nu är att om namet är lika så anvädner den namn och content.
