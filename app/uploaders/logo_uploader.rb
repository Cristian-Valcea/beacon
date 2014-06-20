# encoding: utf-8

class LogoUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  storage :file
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :thumb do
    process :resize_to_limit => [30, 30]
  end


    def resize_to_limit(width, height)
      manipulate! do |img|
        geometry = Magick::Geometry.new(width, height, 0, 0, Magick::GreaterGeometry)
        new_img = img.change_geometry(geometry) do |new_width, new_height|
          img.resize(new_width, new_height)
        end
        destroy_image(img)
        new_img = yield(new_img) if block_given?
        new_img
      end
    end

def manipulate!(options={}, &block)
      cache_stored_file! if !cached?

      read_block = create_info_block(options[:read])
      image = ::Magick::Image.read(current_path, &read_block)
      frames = ::Magick::ImageList.new

      image.each_with_index do |frame, index|
        frame = yield *[frame, index, options].take(block.arity) if block_given?
        frames << frame if frame
      end
      frames.append(true) if block_given?

      write_block = create_info_block(options[:write])
      if options[:format] || @format
        frames.write("#{options[:format] || @format}:#{current_path}", &write_block)
      else
        frames.write(current_path, &write_block)
      end
      destroy_image(frames)
    rescue ::Magick::ImageMagickError => e
      raise CarrierWave::ProcessingError, I18n.translate(:"errors.messages.rmagick_processing_error", :e => e, :default => I18n.translate(:"errors.messages.rmagick_processing_error", :e => e, :locale => :en))
    end
 private

    def create_info_block(options)
      return nil unless options
      assignments = options.map { |k, v| "self.#{k} = #{v}" }
      code = "lambda { |img| " + assignments.join(";") + "}"
      eval code
    end

    def destroy_image(image)
      image.destroy! if image.respond_to?(:destroy!)
    end
  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url
  #   # For Rails 3.1+ asset pipeline compatibility:
  #   # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
  #
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end

  # Process files as they are uploaded:
  # process :scale => [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  # version :thumb do
  #   process :resize_to_fit => [50, 50]
  # end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  # def extension_white_list
  #   %w(jpg jpeg gif png)
  # end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end

end
