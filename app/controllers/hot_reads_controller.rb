class HotReadsController < ApplicationController

  def index
    @hot_reads = HotRead.all
  end


end
