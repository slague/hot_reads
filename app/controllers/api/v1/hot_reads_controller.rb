class Api::V1::HotReadsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @hot_reads = HotRead.within_past_24_hrs.top_ten
    render status: 201, json: @hot_reads
  end

  def create
    @hot_read= HotRead.find_or_initialize_by(url: params[:url])

    if @hot_read.persisted?
      new_count = @hot_read.read_count + 1
      @hot_read.update(read_count: new_count)
      render status: 201, json: HotRead.all
    else
      @hot_read.save
      render status: 201, json: HotRead.all
    end
  end

  private

  def hot_read_params
    params.require.(:hot_read).permit(:url, :read_count)
  end
end
