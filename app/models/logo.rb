class Logo < ActiveRecord::Base
  belongs_to :music_services

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" },
    convert_options: { medium: Proc.new{ self.convert_options }}, 
    default_url: "/images/:style/missing.png"


  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  # http://stackoverflow.com/questions/8789820/rounded-corners-with-paperclip
  def self.convert_options(px = 15)
    trans = ""
    trans << " \\( +clone  -alpha extract "
    trans << "-draw 'fill black polygon 0,0 0,#{px} #{px},0 fill white circle #{px},#{px} #{px},0' "
    trans << "\\( +clone -flip \\) -compose Multiply -composite "
    trans << "\\( +clone -flop \\) -compose Multiply -composite "
    trans << "\\) -alpha off -compose CopyOpacity -composite "
  end
end
