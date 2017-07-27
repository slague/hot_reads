class HotRead < ActiveRecord::Base

  validates :url, presence: true

  def self.top_ten
    order(read_count: :desc).limit(10)
  end

  def self.within_past_24_hrs
    where('updated_at >= ?', 24.hours.ago)
  end
end
