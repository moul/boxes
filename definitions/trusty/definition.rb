require '../../template/definition.rb'

Veewee::Session.declare ::Definition.merge(
  :iso_file => "ubuntu-14.04.1-server-amd64.iso",
  :iso_src => "http://fr.releases.ubuntu.com/trusty/ubuntu-14.04.1-server-amd64.iso",
  :iso_md5 => "af5f788aee1b32c4b2634734309cc9e9"
)
