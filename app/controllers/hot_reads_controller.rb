class HotReadsController < ApplicationController

  def index
    @hot_reads = HotRead.within_past_24_hrs.top_ten
  end


end
