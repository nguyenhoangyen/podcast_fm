class PodcastsController < ApplicationController
	def index
		@podcasts = Podcast.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 12)
	end

	def show
		@podcast = Podcast.find(params[:id])
	end
end
