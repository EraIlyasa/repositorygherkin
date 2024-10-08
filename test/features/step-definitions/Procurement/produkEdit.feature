@Purchasing-Produk
Feature: Edit - Produk

  @PR-0029
  Scenario Outline: Berhasil Edit product tanpa ada perubahan
    Given User login
    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    When User click btnSearch button in Product page
    And User click fieldInputSearch button in Product page
    And User fill fieldInputSearch with value "<sku>" in Product page
    And User click btnCari button in Product page
    Then User able to see "<produkName>" in product list
    And User click btnEditProduk in list produk page
    And User wait for 5 seconds 
    And User click fieldInputBarcode in product page 
    And User click btnSimpan in product page
    And User wait for 5 seconds
    Then User able to see verification "<message>"  

    Examples:
      | sku      | message                     | produkName             |
      | AGR-0016 | Berhasil memperbarui produk | Automated Testing hehe |

  @PR-0030
  Scenario Outline: Berhasil Edit product RTP  tanpa ada perubahan
    Given User login
    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    When User click btnSearch button in Product page
    And User click fieldInputSearch button in Product page
    And User fill fieldInputSearch with value "<sku>" in Product page
    And User click btnCari button in Product page
    Then User able to see "<produkName>" in product list
    And User click btnEditProduk in list produk page
    And User wait for 5 seconds
    # And User click fieldInputBarcode in product page 
    And User click btnSimpan in product page
    And User wait for 5 seconds
    Then User able to see verification "<message>"  

    Examples:
      | sku           | message                     | produkName             |
      | KRT-111858147 | Berhasil memperbarui produk | RTP-ra                 |

  @PR-0031
  Scenario Outline: Berhasil Edit product RTP Ingredients tanpa ada perubahan
    Given User login
    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    When User click btnSearch button in Product page
    And User click fieldInputSearch button in Product page
    And User fill fieldInputSearch with value "<sku>" in Product page
    And User click btnCari button in Product page
    Then User able to see "<produkName>" in product list
    And User click btnEditProduk in list produk page
    And User wait for 5 seconds
    # And User click fieldInputBarcode in product page 
    And User click btnSimpan in product page
    And User wait for 5 seconds
    Then User able to see verification "<message>"  

    Examples:
      | sku           | message                     | produkName             |
      | KRT-111858147 | Berhasil memperbarui produk | RTP-ra                 |

@PR-0032
  Scenario Outline: Berhasil Edit product dengan ubah nama product
    Given User login
    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    When User click btnSearch button in Product page
    And User click fieldInputSearch button in Product page
    And User fill fieldInputSearch with value "<sku>" in Product page
    And User click btnCari button in Product page
    Then User able to see "<produkName>" in product list
    And User click btnEditProduk in list produk page
    And User wait for 5 seconds
    And User click fieldNamaProduk in product page 
    And User clear the value in "fieldNamaProduk" 
    And User fill fieldNamaProduk with "<namaProduk>" in fieldNamaPRoduk

    And User click btnSimpan in product page
    And User wait for 5 seconds
    Then User able to see verification "<message>"  

    Examples:
      | sku           | message                     | produkName             | namaProduk    |
      | KRT-111858148 | Berhasil memperbarui produk | RTP-ingredients        | produk edited |

@PR-0033
Scenario Outline: Berhasil Edit product dengan ubah nama product
    Given User login
    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    When User click btnSearch button in Product page
    And User click fieldInputSearch button in Product page
    And User fill fieldInputSearch with value "<sku>" in Product page
    And User click btnCari button in Product page
    Then User able to see "<produkName>" in product list
    And User click btnEditProduk in list produk page
    And User wait for 5 seconds
    And User click fieldPPNPenjualan in product page 
    And User choose "<optPPN>" in fieldPPNPenjualan

    And User click btnSimpan in product page
    And User wait for 5 seconds
    Then User able to see verification "<message>"  

    Examples:
      | sku           | message                     | produkName             | namaProduk    | optPPN |
      | KRT-111858148 | Berhasil memperbarui produk | RTP-ingredients        | produk edited | BKP    |

  @PR-0034
Scenario Outline: Berhasil Edit product dengan kondisi uncheklist pin
    Given User login
    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    When User click btnSearch button in Product page
    And User click fieldInputSearch button in Product page
    And User fill fieldInputSearch with value "<sku>" in Product page
    And User click btnCari button in Product page
    And User click btnEditProduk in list produk page
    And User wait for 5 seconds
    And User click statusPinProduk in product page 

    And User click btnSimpan in product page
    And User wait for 5 seconds
    Then User able to see verification "<message>"  

    Examples:
      | sku           | message                     | produkName             | namaProduk    | optPPN |
      | KRT-111858148 | Berhasil memperbarui produk | RTP-ingredients        | produk edited | BKP    |

@PR-0035
Scenario Outline: Berhasil Edit product dengan kondisi cheklist pin
    Given User login
    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    When User click btnSearch button in Product page
    And User click fieldInputSearch button in Product page
    And User fill fieldInputSearch with value "<sku>" in Product page
    And User click btnCari button in Product page
    And User click btnEditProduk in list produk page
    And User wait for 5 seconds
    And User click statusPinProduk in product page 

    And User click btnSimpan in product page
    And User wait for 5 seconds
    Then User able to see verification "<message>"  

    Examples:
      | sku           | message                     | produkName             | namaProduk    | optPPN |
      | KRT-111858148 | Berhasil memperbarui produk | RTP-ingredients        | produk edited | BKP    |

@PR-0036
Scenario Outline: Memastikan click batal pada halaman edit product
    Given User login
    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    When User click btnSearch button in Product page
    And User click fieldInputSearch button in Product page
    And User fill fieldInputSearch with value "<sku>" in Product page
    And User click btnCari button in Product page
    And User click btnEditProduk in list produk page
    And User wait for 5 seconds
    Then User click "btnBatal" in product page

    Examples:
      | sku           | message                     |
      | KRT-111858148 | Berhasil memperbarui produk |

@PR-0037
Scenario Outline: Memastikan user bisa click panduan atribute product
    Given User login
    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    When User click btnSearch button in Product page
    And User click fieldInputSearch button in Product page
    And User fill fieldInputSearch with value "<sku>" in Product page
    And User click btnCari button in Product page
    And User click btnEditProduk in list produk page
    And User wait for 5 seconds
    Then User click "btnPanduanAtribut" in product page
    Given User go to main page product

    Examples:
      | sku           | message                     |
      | KRT-111858148 | Berhasil memperbarui produk |

# @PR-0038
# Scenario Outline: Gagal Edit product dengan kondisi hapus semua gambar dan simpan
#     Given User login
#     When User click "navMenuPurchasing" button in "Global" page
#     And User click produk menu in Product page
#     And User directed to List barang yang terdaftar di Super page
#     When User click btnSearch button in Product page
#     And User click fieldInputSearch button in Product page
#     And User fill fieldInputSearch with value "<sku>" in Product page
#     And User click btnCari button in Product page
#     And User click btnEditProduk in list produk page
#     And User wait for 5 seconds
#     And User click "btnDeleteImage" in product pagee


#     Examples:
#       | sku           | message                     |
#       | KRT-111858148 | Berhasil memperbarui produk |

@PR-0039
Scenario Outline: Gagal Edit product dengan kondisi upload gambar dengan format pdf
    Given User login
    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    When User click btnSearch button in Product page
    And User click fieldInputSearch button in Product page
    And User fill fieldInputSearch with value "<sku>" in Product page
    And User click btnCari button in Product page
    And User click btnEditProduk in list produk page
    And User wait for 5 seconds
    And User send "<file>" image in uploadImage
    Then User able to see File extension not allowed! "<message>" verification
    Given User go to main page product

    Examples: 
    | file | message                    | sku           |
    | pdf  | File extension not allowed!| KRT-111858148 |

@PR-0040
Scenario Outline: Gagal Edit product dengan kondisi upload gambar dengan format csv
    Given User login
    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    When User click btnSearch button in Product page
    And User click fieldInputSearch button in Product page
    And User fill fieldInputSearch with value "<sku>" in Product page
    And User click btnCari button in Product page
    And User click btnEditProduk in list produk page
    And User wait for 5 seconds
    And User send "<file>" image in uploadImage
    Then User able to see File extension not allowed! "<message>" verification
    Given User go to main page product

    Examples: 
    | file | message                    | sku           |
    | csv  | File extension not allowed!| KRT-111858148 |

@PR-0041
Scenario Outline: Gagal Edit product dengan kondisi upload gambar dengan format tiff
    Given User login
    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    When User click btnSearch button in Product page
    And User click fieldInputSearch button in Product page
    And User fill fieldInputSearch with value "<sku>" in Product page
    And User click btnCari button in Product page
    And User click btnEditProduk in list produk page
    And User wait for 5 seconds
    And User send "<file>" image in uploadImage
    Then User able to see File extension not allowed! "<message>" verification
    Given User go to main page product

    Examples: 
    | file  | message                    | sku           |
    | tiff  | File extension not allowed!| KRT-111858148 |

@PR-0042
Scenario Outline: Gagal Edit product dengan kondisi upload gambar dengan format bmp
    Given User login
    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    When User click btnSearch button in Product page
    And User click fieldInputSearch button in Product page
    And User fill fieldInputSearch with value "<sku>" in Product page
    And User click btnCari button in Product page
    And User click btnEditProduk in list produk page
    And User wait for 5 seconds
    And User send "<file>" image in uploadImage
    Then User able to see File extension not allowed! "<message>" verification
    Given User go to main page product

    Examples: 
    | file  | message                    | sku           |
    | bmp   | File extension not allowed!| KRT-111858148 |

@PR-0043
Scenario Outline: Gagal Edit product dengan kondisi nama diubah dengan nama product yang sudah ada sebelumnya
    Given User login
    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    When User click btnSearch button in Product page
    And User click fieldInputSearch button in Product page
    And User fill fieldInputSearch with value "<sku>" in Product page
    And User click btnCari button in Product page
    Then User able to see "<produkName>" in product list
    And User click btnEditProduk in list produk page
    And User wait for 5 seconds
    And User click btnEditProduk in list produk page
    And User wait for 5 seconds
    And User click fieldNamaProduk in product page 
    And User clear the value in "fieldNamaProduk" 
    And User fill fieldNamaProduk with "<namaProduk>" in fieldNamaPRoduk

    And User click btnSimpan in product page
    And User wait for 5 seconds
    Then User able to see verification "<message>"
    Given User go to main page product
  

    Examples:
      | sku           | message                                                                    | produkName             | namaProduk             |
      | KRT-111858148 | 3 INVALID_ARGUMENT: Nama produk sudah digunakan dengan kode SKU [AGR-0016] | RTP-ingredients        | Automated Testing hehe |

@PR-0044
Scenario Outline: memastikan pada halaman edit product tipe product keadaan disable
    Given User login
    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    When User click btnSearch button in Product page
    And User click fieldInputSearch button in Product page
    And User fill fieldInputSearch with value "<sku>" in Product page
    And User click btnCari button in Product page
    Then User able to see "<produkName>" in product list
    And User click btnEditProduk in list produk page
    And User wait for 5 seconds
    Then User able to see fieldTipeProduk is disable in product page
    Given User go to main page product


    Examples:
      | sku           | produkName             | 
      | KRT-111858148 | RTP-ingredients        | 

@PR-0045
Scenario Outline: Memastikan pada halaman edit product tidak bisa ganti merek
    Given User login
    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    When User click btnSearch button in Product page
    And User click fieldInputSearch button in Product page
    And User fill fieldInputSearch with value "<sku>" in Product page
    And User click btnCari button in Product page
    Then User able to see "<produkName>" in product list
    And User click btnEditProduk in list produk page
    And User wait for 5 seconds
    And User click fieldMerek in product page
    When User clear the value in "fieldMerek" 
    And User click fieldMerek in product page
    And User choose merek in optMerek2
    And User click btnSimpan in product page
    And User wait for 5 seconds
    Then User able to see invalid "<message>" verification

    Given User go to main page product

    Examples:
      | sku           | produkName             | fieldMerek | message                                                    |
      | KRT-111858148 | RTP-ingredients        | fieldMerek | 3 INVALID_ARGUMENT: Saat update, merek tidak boleh diganti |

@PR-0046
Scenario Outline: Memastikan tidak bisa hapus attribute product yang sudah ada transaksi
    Given User login
    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    When User click btnSearch button in Product page
    And User click fieldInputSearch button in Product page
    And User fill fieldInputSearch with value "<sku>" in Product page
    And User click btnCari button in Product page
    Then User able to see "<produkName>" in product list
    And User click btnEditProduk in list produk page
    And User wait for 5 seconds
    When User click btnEditList in product page
    Then User unable to see btnRemoveModal in modal product  

    Given User go to main page product

    Examples:
      | sku           | produkName             | fieldMerek |
      | KRT-111858148 | RTP-ingredients        | fieldMerek |

@PR-0047
Scenario Outline: Memastikan tidak bisa hapus attribute product yang sudah ada transaksi
    Given User login
    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    When User click btnSearch button in Product page
    And User click fieldInputSearch button in Product page
    And User fill fieldInputSearch with value "<sku>" in Product page
    And User click btnCari button in Product page
    Then User able to see "<produkName>" in product list
    And User click btnEditProduk in list produk page
    And User wait for 5 seconds
    When User click btnEditList in product page
    Then User unable to see btnRemoveModal in modal product  

    Given User go to main page product

    Examples:
      | sku           | produkName              | fieldMerek |
      | AGR-0016      | Automated Testing hehe  | fieldMerek |

@PR-0048
Scenario Outline: Memastikan tidak bisa tambah attribute product untuk product RTP Ingredients
    Given User login
    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    When User click btnSearch button in Product page
    And User click fieldInputSearch button in Product page
    And User fill fieldInputSearch with value "<sku>" in Product page
    And User click btnCari button in Product page
    Then User able to see "<produkName>" in product list
    And User click btnEditProduk in list produk page
    And User wait for 5 seconds

    When User click btnEditList in product page
    Then User able to see btnTambahAtributModal in modal product is disable

    Given User go to main page product

    Examples:
      | sku           | produkName              | fieldMerek |
      | AGR-0016      | Automated Testing hehe  | fieldMerek |

@PR-0049
Scenario Outline:  Memastikan tidak bisa checklist Ingredients untuk product rtp
    Given User login
    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    When User click btnSearch button in Product page
    And User click fieldInputSearch button in Product page
    And User fill fieldInputSearch with value "<sku>" in Product page
    And User click btnCari button in Product page
    Then User able to see "<produkName>" in product list
    And User click btnEditProduk in list produk page
    And User wait for 5 seconds

    Then User able to see statusIngredients is disable in product page 
    Given User go to main page product

    Examples:
      | sku           | produkName              | fieldMerek |
      | AGR-0016      | Automated Testing hehe  | fieldMerek |

@PR-0050
Scenario Outline: Memastikan tidak bisa unchecklist Ingredients untuk product rtp
    Given User login
    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    When User click btnSearch button in Product page
    And User click fieldInputSearch button in Product page
    And User fill fieldInputSearch with value "<sku>" in Product page
    And User click btnCari button in Product page
    Then User able to see "<produkName>" in product list
    And User click btnEditProduk in list produk page
    And User wait for 5 seconds

    Then User able to see statusIngredients is disable in product page 
    Given User go to main page product

    Examples:
      | sku           | produkName              | fieldMerek |
      | AGR-0016      | Automated Testing hehe  | fieldMerek |

