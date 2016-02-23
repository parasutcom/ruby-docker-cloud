module DockerCloud
  class ProviderAPI < DockerCloud::BaseAPI
    def list_url(name = '')
      "/provider/#{name}"
    end

    def all(params={})
      http_get(list_url, params)
    end

    def get_by_name(name)
      http_get(list_url(name))
    end
  end
end