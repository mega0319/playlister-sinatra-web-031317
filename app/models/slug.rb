module Slugify

  def find_by_slug(name)
    self.all.find do |instance|
      instance.slug == name
    end
  end

  def slug
    name.strip.downcase.gsub(/[\s\.\/\\]/, '-').tr('$','s').gsub(/[^\w+-]/, '').gsub(/[-_]{2,}/, '-').gsub(/^[-_]/, '').gsub(/[-_]$/, '')
  end
end
