# frozen_string_literal: true

module Api::V1
  class DocsController < ApiController
    include Swagger::Blocks

    swagger_root do
      key :swagger, "2.0"
      info do
        key :version, "1.0.0"
        key :title, "Swagger Docs For Fractal Test API"
        key :description, "Documentation for fractal test api "
        key :termsOfService, "http://helloreverb.com/terms/"
        contact do
          key :name, "Fractal Test API"
        end
        license do
          key :name, "MIT"
        end
      end
      tag do
        key :name, "Fractal Test API"
        key :description, "Fractal Test API operations"
      end
      key :host, "localhost:3000"
      key :basePath, "/v1"
      key :consumes, ["application/json"]
      key :produces, ["application/json"]
    end

    # A list of all classes that have swagger_* declarations.
    SWAGGERED_CLASSES = [
      Docs::V1::AuthorsController,
      Docs::Author,
      self,
    ].freeze

    def index
      swagger_data = Swagger::Blocks.build_root_json(SWAGGERED_CLASSES)
      File.open("#{Rails.root}/public/swagger.json", "wb") { |file| file.write(swagger_data.to_json) }
      redirect_to "/api-docs.html?url=/swagger.json"
    end
  end
end
