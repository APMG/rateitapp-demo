# frozen_string_literal: true
class PlaylistPlugin
  def initialize(service_name)
    @service_name = service_name
  end
  def name
    @service_name + '-song' # ratable_type
  end
  def valid?(rating)
    uri = URI('http://' + Rails.configuration.playlist_domain + '/api/v1/services/' + @service_name + '/songs/' + rating.ratable_id)
    res = Net::HTTP.get_response(uri)
    if res.is_a?(Net::HTTPSuccess)
      true
    else
      rating.errors.add(:ratable_id, 'ID is not valid')
      false
    end
  end
end