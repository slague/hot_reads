class HotReadsController < ApplicationController

  def index
    @hot_reads = HotRead.all
  end

  # whenever I click "read" on the m4 app I want to make a post(if it's a new link) or put(if the link is already in the hot_reads db) request to api/v1/hotreads/links
  def create
    @hot_read= HotRead.find_or_initialize_by(url: params[:url])

    if @hot_read.persisted?
      # then increment read_count +1
      new_count = @hot_read.read_count + 1
      @hot_read.update(read_count: new_count)
    else
      # hot_read.update(read_count +1)
      @hot_read.save
      # a hot_read should begin with read_count 1
    end
  end


end
