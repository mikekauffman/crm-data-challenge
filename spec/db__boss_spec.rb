require '/Users/MikeMac/gSchoolWork/crm-data-challenge/lib/db_boss.rb'
require 'spec_helper'
require '/Users/MikeMac/gSchoolWork/crm-data-challenge/data.rb'

describe DbBoss do
  it 'allows all employees of a company to be displayed' do
    db = DbBoss.new(CRM)
    expect(db.company_workers(6)).to match_array ([
      {:id => 7,
       :first_name => "Felicita",
       :last_name => "Kip",
       :employments => [
         {:company_id => 6,
          :title => "Chief Security Strategist"},
         {:company_id => 2,
          :title => "International Branding Producer"}]},
      {:id => 9,
       :first_name => "Clementina",
       :last_name => "Geraldine",
       :employments => [
         {:company_id => 6,
          :title => "Direct Response Agent"},
         {:company_id => 3,
          :title => "Investor Metrics Officer"}]},
      {:id => 14,
       :first_name => "Ellis",
       :last_name => "Chadd",
       :employments => [
         {:company_id => 6,
          :title => "Customer Markets Planner"},
         {:company_id => 7,
          :title => "Global Research Specialist"}]},
      {:id => 30,
       :first_name => "Alize",
       :last_name => "Lucio",
       :employments => [
         {:company_id => 6,
          :title => "District Mobility Specialist"},
         {:company_id => 9,
          :title => "Chief Integration Coordinator"}]}
    ])
  end

end