CarrierWave.configure do |config|
    require 'fog/aws'
    config.root = Rails.root.join('tmp')
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
        provider:               'AWS',
        aws_access_key_id:      ENV['AKIAISF4I4QS3TLV6JSA'],
        aws_secret_access_key:  ENV['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'],
        region:                 'ap-south-1',
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
    config.fog_directory = ENV['fundoapp']
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
