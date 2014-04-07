CarrierWave.configure do |config|
  config.ftp_host = "raspgab.dnsd.me"
  config.ftp_port = 21
  config.ftp_user = "pi"
  config.ftp_passwd = "secret"
  config.ftp_folder = "/image_bds"
  config.ftp_url = "http://example.com/uploads"
end
