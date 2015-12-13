CarrierWave.configure do |config|

	#Use local storage if in development or test
	#if Rails.env.development? || Rails.env.test?
	#	CarrierWave.configure do |config|
	#		config.storage = :file
	#	end
	#end

	# Use AWS storage if in production
	#if Rails.env.production?
	#	CarrierWave.configure do |config|
	#		config.storage = :fog
	#	end
	#end

	config.fog_credentials = {
		:provider							=> 'AWS',							#required
		:aws_access_key_id		=> 'depaysement615',	#required
		:aws_secret_access_key=> 'depaysement_615',	#required
		:region								=> 'ap-northeast-1'		#optional
		#:provider => 'Local',		#required
		#:local_roote => '~/fog',#required
	}

	config.fog_directory =  'brainfreezebucket'			#required

	module CarrierWave
		module MiniMagick
			def quality(percentage)
				manipulate! do |img|
					img.quality(percentage.to_s)
					img = yield(img) if block_given?
					img
				end
			end
		end
	end
end
