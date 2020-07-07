CarrierWave.configure do |config|
    require 'fog/aws'
    config.root = Rails.root.join('tmp')
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
        provider:               'AWS',
        aws_access_key_id:      ENV['****************'],
        aws_secret_access_key:  ENV['******************************'],
        region:                 '*********-********************',
    }
=begin
    if Rails.env.test? || Rails.env.cucumber?
        config.storage = :file
        config.enable_processing = false
        config.root = "#{Rails.root}/tmp"
    else
        config.storage = :fog
    end
=end

    config.cache_dir = "#{Rails.root}/tmp/uploads"
    config.fog_directory = ENV['********']
    case Rails.env
        when 'production'
        config.fog_directory = 'dummy'
        config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/dummy'

        when 'development'
        config.fog_directory = 'dev.dummy'
        config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/dev.dummy'

        when 'test'
        config.fog_directory = 'test.dummy'
        config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/test.dummy'
    end

end
module CarrierWave
    module MiniMagick
        def quality(percentage)
            manipulate! do |img|
                img.quality(percentage.to_s)
                img = yeld(img) if block_given?
                img
            end
        end
    end
end
