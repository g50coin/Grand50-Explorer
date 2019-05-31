Feature: Home page
  Scenario: should show latest transactions
    Given I'm on page "/"
    Then I should see "Latest Transactions" in "h1" html element no. 1
    And I should see table "latest transactions" with 20 rows starting with:
      | Id                   | Timestamp                 | Sender      | Recipient             | Amount (LSK) | Fee (LSK) |
      |----------------------|---------------------------|-------------|-----------------------|--------------|-----------|
      | 292176566870988581   | /2017\/06\/19 \d\d:18:09/ | standby_301 | 18234943547133247982L | 123.45       | 0.1       |
      | 4629979183209290127  | /2017\/06\/19 \d\d:17:59/ | standby_301 | 18234943547133247982L | 100          | 0.1       |
      | 16747360986039780565 | /2017\/06\/19 \d\d:17:49/ | standby_301 | 18234943547133247982L | 100.12345678 | 0.1       |
      | 2799279669192005501  | /2017\/06\/19 \d\d:17:39/ | standby_301 | 18234943547133247982L | 0.123456     | 0.1       |
      | 4146285315366899005  | /2017\/06\/19 \d\d:17:29/ | standby_301 | 18234943547133247982L | 123.4567     | 0.1       |

  Scenario: should show latest blocks
    Given I'm on page "/"
    Then I should see "Latest Blocks" in "h1" html element no. 2
    And I should see table "latest blocks" with 20 rows starting with:
      | Id         | Height | Timestamp                          | Transactions | Generated by      | Amount (LSK) | Forged (LSK) |
      |------------|--------|------------------------------------|--------------|-------------------|--------------|--------------|
      | /\d{1,20}/ | /\d+/  | /20\d\d/\d\d/\d\d \d\d?:\d\d:\d\d/ | /\d+/        | /genesis_\d{1,3}/ | /\d+/        | /\d+/        |
      | /\d{1,20}/ | /\d+/  | /20\d\d/\d\d/\d\d \d\d?:\d\d:\d\d/ | /\d+/        | /genesis_\d{1,3}/ | /\d+/        | /\d+/        |
      | /\d{1,20}/ | /\d+/  | /20\d\d/\d\d/\d\d \d\d?:\d\d:\d\d/ | /\d+/        | /genesis_\d{1,3}/ | /\d+/        | /\d+/        |
      | /\d{1,20}/ | /\d+/  | /20\d\d/\d\d/\d\d \d\d?:\d\d:\d\d/ | /\d+/        | /genesis_\d{1,3}/ | /\d+/        | /\d+/        |

  Scenario: links to all blocks
    Given I'm on page "/"
    And I click "see all blocks"
    Then I should be on page "/blocks/"
