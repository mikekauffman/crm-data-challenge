# CRM Data Challenge

You just started a new job.  Your boss comes over and says that
their CRM (customer-relationship-management) app is too hard to work with,
and that you need to do some data transformation.  They tell you that you
will get a big hash of all the data, and you need
to write some code that will take that data and convert it to
other data structures more useful to the business.

The original data set has data about people and companies,
and about which person works for which companies as well as
what their job titles are.  The original data looks like this:

```ruby
CRM = {
  :people => [
    {
      :id => 20,
      :first_name => "Savannah",
      :last_name => "Clementina",
      :employments => []
    },
    {
      :id => 32,
      :first_name => "Elyse",
      :last_name => "Jensen",
      :employments =>
        [
          {
            :company_id => 4,
            :title => "Chief Communications Consultant"
          }
        ]
    }
  ],
  :companies => [
    {
      :id => 0,
      :name => "Nicolas and Sons"
    },
    {
      :id => 1,
      :name => "Mueller LLC"
    },
    {
      :id => 2,
      :name => "Mohr, King and Gleason"
    }
  ]
}
```

## Challenge #1 - employees of companies

Write some code that will return an array of companies,
and the people who work for them.  For example:

```ruby
[
  {
    name: "Nicolas and Sons",
    employees: [
      {
        :id => 20,
        :first_name => "Savannah",
        :last_name => "Clementina",
        :title => "Chief Communications Consultant"
      },
      {
        :id => 46,
        :first_name => "Elyse",
        :last_name => "Jensen",
        :title => "Human Directives Engineer"
      },
    ]
  }
]
```

## Challenge #2 - all employments

Write some code that will return an array of all the employments,
including the person name, company name, person id, company id
and title.

```ruby
[
  {
    :company_id => 4,
    :company_name => "Nicolas and Sons",
    :person_id => 20,
    :person_first_name => "Savannah",
    :person_last_name => "Clementina",
    :title => "Chief Communications Consultant"
  },
  {
    :company_id => 6,
    :company_name => "Mueller LLC",
    :person_id => 20,
    :person_first_name => "Elyse",
    :person_last_name => "Jensen",
    :title => "Human Directives Engineer"
  },
]
```

## Challenge #3 - people without employments

Write some code that will return an array of all the people
who have no employments.  The resulting hashes in the array should
_not_ include the `:employments` key.

```ruby
[
  {
    :id => 20,
    :first_name => "Savannah",
    :last_name => "Clementina"
  },
  {
    :id => 32,
    :first_name => "Elyse",
    :last_name => "Jensen",
  }
]
```

## Test Data

Test data has been provided in the `data.rb` file.

## Process

Write all of this test-first.  In your specs, don't use the
test data from `data.rb` - instead, write your own data
structures that are similar to the `CRM` data.

Then, in IRB, run your code against the test data to
see it in action.

## Bonus

Write a command line tool that will print this data in a
pretty way to the terminal.