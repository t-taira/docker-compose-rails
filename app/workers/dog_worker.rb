class DogWorker
  include Sidekiq::Worker

  def perform(*args)
    #@dogs = Dogs.all
    puts "count: #{Dog.all.count}"
    # @event = Event.find(args[:id])
    # @event.calculate_rank!
  end
end
