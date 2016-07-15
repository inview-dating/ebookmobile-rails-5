require "rambo_helper"

RSpec.describe "e-BookMobile API", type: :rambo do

  # Delete output files from previous test run prior to running tests again
  before(:all) do
    Dir.foreach("spec/contract/output") do |file|
      next unless file.match(/\.json$/)

      File.delete(File.join("spec/contract/output", file))
    end
  end

  describe "/authors" do
    let(:route) { "/authors" }

    describe "POST" do
      
      
      let(:request_body) do
        JSON.parse(
          File.read("spec/support/examples/authors_post_request_body.json"),
          symbolize_names: true
        )
      end

      let(:response_schema) do
        File.read("spec/support/examples/authors_post_response_schema.json")
      end

      let(:output_file) do
        "spec/contract/output/authors_post_response.json"
      end

      it "add a new author to the database" do
        post route, request_body

        File.open(output_file, "w+") {|file| file.puts JSON.pretty_generate(JSON.parse(last_response.body)) }

        expect(last_response.body).to match_schema response_schema
      end

      it "returns status 200" do
        post route, request_body
        expect(last_response.status).to eql 200
      end
    end
  end
end
