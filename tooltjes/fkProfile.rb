###########
# Benchmark: Call method profile. Pass in description and block to measure
# vb:
#       require "~/git_basics/tooltjes/fkProfile.rb"   #this file
#
# =>    profile "eerste optie" do
#         reverse1("hello")
# =>    end
require "benchmark"

def profile oms, &block
  
  Benchmark.bm do |bm| # main Class
    
    bm.report do   
      puts oms
      block.call  # pass in block to measure
    end
  end

end