CarrierWave.configure do |config|
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
        provider:              'AWS',
        aws_access_key_id:     ENV['aws_access_key_id'],
        aws_secret_access_key: ENV['aws_secret_access_key'],
        region:                ENV['aws_region']
    }
    config.fog_directory  = ENV['S3_BUCKET']
    config.storage = :fog

end