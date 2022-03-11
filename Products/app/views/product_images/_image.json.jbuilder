json.extract! image, :id, :iid, :icode, :iname, :iimage, :created_at, :updated_at
json.url image_url(image, format: :json)
