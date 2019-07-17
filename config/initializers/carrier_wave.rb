if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
        :provider => 'AWS',
        :aws_access_key_id => ENV['S3_ACCESS_KEY'],
        :aws_secret_access_key => ENV['S3_SECRET_KEY'],
        :region => 'us-east-2'
    }
    config.fog_directory = ENV['S3_BUCKET']
  end
end

# CarrierWave.configure do |config|
#   if Rails.env.production?
#     config.fog_provider = 'fog/aws'
#     config.fog_credentials = {
#         :provider => 'AWS',
#         :aws_access_key_id => ENV['AWS_ACCESS_KEY_ID'],
#         :aws_secret_access_key => ENV[‘AWS_SECRET_ACCESS_KEY’],
#         :region => ‘ap-northeast-1’ # Tokyo
#     }
#     config.fog_directory = ENV[‘S3_BUCKET_NAME’]
#     config.storage = :fog
#   else
#     config.storage = :file
#     config.enable_processing = Rails.env.development?
#   end
# end