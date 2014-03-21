class Event < ActiveRecord::Base

  validates_datetime :start, :on => :create, :on_or_after => lambda {Time.current}

	scope :between, lambda { |start_time, end_time|
    	{:conditions => ["start > ? and start < ?", Event.format_date(start_time), Event.format_date(end_time)]}
	}
  
  def self.format_date(date_time)
    Time.at(date_time.to_i).to_formatted_s(:db)
  end

  def as_json(options = {})
    {   :id => self.id,
        :title => self.title,
        :location => self.location,
        :start => self.start.rfc822,
        :end => self.end.rfc822,
        :allDay => self.allDay,
        :editable => self.editable
    }
  end
	
end
