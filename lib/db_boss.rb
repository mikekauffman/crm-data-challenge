require '/Users/MikeMac/gSchoolWork/crm-data-challenge/data.rb'

class DbBoss

  def initialize(data)
    @data = data
  end

  def company_workers(id)
    workers = []
    @data[:people].each { |person|
      person[:employments].each { |job|
        if job[:company_id] == id
          workers << person
        end
      } }
    workers
  end

  def all_jobs
    jobs = []
    @data[:people].each { |person|
      person[:employments].each { |job|
        jobs << {
          :company_id => job[:company_id],
          :company_name => @data[:companies].each { |company|
            if company[:id] == job[:company_id]
              return company[:name]
            end
          },
          :person_id => person[:id],
          :person_first_name => person[:first_name],
          :person_last_name => person[:last_name],
          :title => job[:title]
        }
      }
    }
    jobs
  end

end