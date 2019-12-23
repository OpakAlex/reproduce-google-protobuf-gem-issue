# frozen_string_literal: true

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

source 'https://rubygems.org'

ruby '2.6.5'

gem "grpc", "1.25.0", platforms: ["ruby"]
gem "google-protobuf", "3.9.0", platforms: ["ruby"], require: "google/protobuf"
