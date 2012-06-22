packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    libdirectfb-1.2-0
  /
when "precise"
  packages |= %w/
    libdirectfb-1.2-9
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
