@Purchasing-Products
Feature: List - Product

  @PR-0053
  Scenario Outline: Ensure search product feature
    # Given User login
    When api user login
    When open dashboard superapp
    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    When User click btnSearch button in Product page
    And User click fieldInputSearch button in Product page
    And User fill fieldInputSearch with value "<sku>" in Product page
    And User click btnCari button in Product page
    Then User able to see "<produkName>" in product list
    Examples:
      | sku      | produkName             |
      | AGR-0016 | Automated Testing hehe |

  @PR-0054
  Scenario Outline: Ensure user able to search product based on tag filter
    # Given User login
    When api user login
    When open dashboard superapp
    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    And User click "btnFilter" in product list modal
    And User click "fieldSearchModal" in product list modal
    And User fill "<keyword>" into fieldSearchModal
    And User click "Automated Hehe" after search modal 
    And User click "btnTerapkanModal" in product list modal
    Then User able to see "<produkName>" in product list

    Examples:
      | keyword        | produkName             |
      | Automated Hehe | Automated Testing hehe |
