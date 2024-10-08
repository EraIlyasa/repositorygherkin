@Purchasing-Produk
Feature: Create - Produk

  @PR-0001
  Scenario Outline: Ensure user able to create product
    Given User login

    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    When User click btnCreateProduk button in Product page
    And User send image in uploadImage
    And User click fieldTipeProduk in product page 
    And User choose tipe product "<act>"

    And User click fieldSubType button in Product page
    And User click optSubtipe in fieldSubType
    And User click fieldNamaProduk in product page 
    And User fill fieldNamaProduk with "<namaProduk>" in fieldNamaPRoduk
    And User click fieldMerek in product page 
    And User choose merek in optMerek
    And User click fieldKategori in product page 
    And User choose optKategori in fieldKategori 
    And User click fieldInputBarcode in product page 
    And User click field and choose Pilih Tag Produk in product page
    And User click field and choose Pilih Referensi Produk in product page
    And User click field and choose Pilih Variant in product page
    And User click field and choose Pilih Packaging Material in product page
    And User click field and choose Pilih Packaging Color in product page
    And User click field and choose Pilih Main Ingredients in product page
    And User click field and choose Pilih Texture in product page
    And User click field and choose Pilih Taste in product page
    And User click fieldTargetUsia in product page 
    And User choose taget usia 
    And User click fieldPPNPenjualan in product page 
    And User choose PPN Penjualan

    And User click btnTambahAtribut in product page 
    And User click fieldSatuanModal in tambah atribut 
    And User choose satuan 
    And User click and input "<konversi>" in tambah atribut 
    And User click and input isi "<produk>" in tambah atribut 
    And User click btnSimpanModal
    # And User click btnSimpan in product page 
    Then User able to see Berhasil membuat produk baru "<message>" verification
    Given User go to main page product

    Examples:
      | namaProduk      | konversi| produk | act     | message                     |
      | Produk Otomatis |1        | 10     | Non RTP | Berhasil membuat produk baru|

  @PR-0002
  Scenario Outline: Memastikan membuat product dengan status non active
    # Given User login

    # When User click "navMenuPurchasing" button in "Global" page
    # And User click produk menu in Product page
    # And User directed to List barang yang terdaftar di Super page
    When User click btnCreateProduk button in Product page
    And User send image in uploadImage
    And User click fieldTipeProduk in product page 
    And User choose tipe product "<act>"

    And User click statusAktifBarang in product page
    And User click fieldSubType button in Product page
    And User click optSubtipe in fieldSubType
    And User click fieldNamaProduk in product page 
    And User fill fieldNamaProduk with "<namaProduk>" in fieldNamaPRoduk
    And User click fieldMerek in product page 
    And User choose merek in optMerek
    And User click fieldKategori in product page 
    And User choose optKategori in fieldKategori 
    And User click fieldInputBarcode in product page 
    And User click field and choose Pilih Tag Produk in product page
    And User click field and choose Pilih Referensi Produk in product page
    And User click field and choose Pilih Variant in product page
    And User click field and choose Pilih Packaging Material in product page
    And User click field and choose Pilih Packaging Color in product page
    And User click field and choose Pilih Main Ingredients in product page
    And User click field and choose Pilih Texture in product page
    And User click field and choose Pilih Taste in product page
    And User click fieldTargetUsia in product page 
    And User choose taget usia 
    And User click fieldPPNPenjualan in product page 
    And User choose PPN Penjualan

    And User click btnTambahAtribut in product page 
    And User click fieldSatuanModal in tambah atribut 
    And User choose satuan 
    And User click and input "<konversi>" in tambah atribut 
    And User click and input isi "<produk>" in tambah atribut 
    And User click btnSimpanModal
    And User click btnSimpan in product page 
    Then User able to see Berhasil membuat produk baru "<message>" verification
    Given User go to main page product

    Examples:
      | namaProduk        | konversi| produk | act     | message                    |
      | Produk Otomatis 0 |1        | 10     | Non RTP |Berhasil membuat produk baru|

  @PR-0003
  Scenario Outline: Memastikan membuat product RTP tanpa chekclist Ingredients
    # Given User login

    # When User click "navMenuPurchasing" button in "Global" page
    # And User click produk menu in Product page
    # And User directed to List barang yang terdaftar di Super page
    When User click btnCreateProduk button in Product page
    And User send image in uploadImage
    And User click fieldTipeProduk in product page 
    And User choose tipe product "<act>"

    And User click fieldSubType button in Product page
    And User click optSubtipe in fieldSubType
    And User click fieldNamaProduk in product page 
    And User fill fieldNamaProduk with "<namaProduk>" in fieldNamaPRoduk
    And User click fieldMerek in product page 
    And User choose merek in optMerek
    And User click fieldKategori in product page 
    And User choose optKategori in fieldKategori 
    And User click fieldInputBarcode in product page 
    And User click field and choose Pilih Tag Produk in product page
    And User click field and choose Pilih Referensi Produk in product page
    And User click field and choose Pilih Variant in product page
    And User click field and choose Pilih Packaging Material in product page
    And User click field and choose Pilih Packaging Color in product page
    And User click field and choose Pilih Main Ingredients in product page
    And User click field and choose Pilih Texture in product page
    And User click field and choose Pilih Taste in product page
    And User click fieldTargetUsia in product page 
    And User choose taget usia 
    And User click fieldPPNPenjualan in product page 
    And User choose PPN Penjualan

    And User click btnTambahAtribut in product page 
    And User click fieldSatuanModal in tambah atribut 
    And User choose satuan 
    And User click and input "<konversi>" in tambah atribut 
    And User click and input isi "<produk>" in tambah atribut 
    And User click btnSimpanModal
    And User click btnSimpan in product page 
    Then User able to see Berhasil membuat produk baru "<message>" verification    
    Given User go to main page product

    Examples:
      | namaProduk          | konversi| produk | act   |message                     |
      | Produk Otomatis RTP |1        | 10     | RTP   |Berhasil membuat produk baru|

  @PR-0004
  Scenario Outline: Memastikan user input product dengan atribute acak ketika simpan akan berurutan konversinya paling atas yang paling kecil
    # Given User login

    # When User click "navMenuPurchasing" button in "Global" page
    # And User click produk menu in Product page
    # And User directed to List barang yang terdaftar di Super page
    When User click btnCreateProduk button in Product page
    And User send image in uploadImage
    And User click fieldTipeProduk in product page 
    And User choose tipe product "<act>"

    And User click fieldSubType button in Product page
    And User click optSubtipe in fieldSubType
    And User click fieldNamaProduk in product page 
    And User fill fieldNamaProduk with "<namaProduk>" in fieldNamaPRoduk
    And User click fieldMerek in product page 
    And User choose merek in optMerek
    And User click fieldKategori in product page 
    And User choose optKategori in fieldKategori 
    And User click fieldInputBarcode in product page 
    And User click field and choose Pilih Tag Produk in product page
    And User click field and choose Pilih Referensi Produk in product page
    And User click field and choose Pilih Variant in product page
    And User click field and choose Pilih Packaging Material in product page
    And User click field and choose Pilih Packaging Color in product page
    And User click field and choose Pilih Main Ingredients in product page
    And User click field and choose Pilih Texture in product page
    And User click field and choose Pilih Taste in product page
    And User click fieldTargetUsia in product page 
    And User choose taget usia 
    And User click fieldPPNPenjualan in product page 
    And User choose PPN Penjualan

    And User click btnTambahAtribut in product page 
    And User click fieldSatuanModal in tambah atribut 
    And User choose satuan 
    And User click and input "<konvers2>" in tambah atribut 
    And User click and input isi "<produk2>" in tambah atribut 
    And User click btnTambahAtributModal
    
    And User click fieldSatuanModal row 1 in tambah atribut 
    And User choose satuan2 
    And User click and input "<konversi>" row 1 in tambah atribut 
    And User click and input isi "<produk>" row 1 in tambah atribut 

    And User click btnTambahAtributModal
    And User click fieldSatuanModal row 2 in tambah atribut
    And User choose satuan3 
    And User click and input "<konversi3>" row 2 in tambah atribut 
    And User click and input isi "<produk3>" row 2 in tambah atribut 

    And User click btnSimpanModal
    And User click btnSimpan in product page 
    Then User able to see Berhasil membuat produk baru "<message>" verification    
    Given User go to main page product

    Examples:
      | namaProduk           | konversi| produk | konversi2| produk2 | act   | konversi3| produk3 |message                     | 
      | Produk Otomatis RTP2 |1        | 10     |5        | 10       | RTP   |10        | 10      |Berhasil membuat produk baru|

  @PR-0005
  Scenario Outline: Memastikan ketika upload gambar yang pertama otomatis terselect thumnbnail
    # Given User login

    # When User click "navMenuPurchasing" button in "Global" page
    # And User click produk menu in Product page
    # And User directed to List barang yang terdaftar di Super page
    When User click btnCreateProduk button in Product page
    And User send image in uploadImage
    Then User able to see Gambar Utama message verification
    Given User go to main page product

    Examples: 
    |a|
    |b|

  @PR-0006
  Scenario Outline: Memastikan user bisa select thumbnail gambar ketika gambar lebih dari 1
    # Given User login

    # When User click "navMenuPurchasing" button in "Global" page
    # And User click produk menu in Product page
    # And User directed to List barang yang terdaftar di Super page
    When User click btnCreateProduk button in Product page
    And User send image in uploadImage
    And User send image in uploadImage
    When User click radio button 2
    Then User able to see Gambar Utama message verification
    Given User go to main page product

    Examples: 
    |a|
    |b|

  @PR-0007
  Scenario Outline: Memastikan user upload gambar format jpg
    # Given User login

    # When User click "navMenuPurchasing" button in "Global" page
    # And User click produk menu in Product page
    # And User directed to List barang yang terdaftar di Super page
    When User click btnCreateProduk button in Product page
    And User send "<file>" image in uploadImage
    Then User able to see Gambar Utama message verification
    Given User go to main page product

    Examples: 
    |file|
    |jpg |

  @PR-0008
  Scenario Outline: Memastikan user upload gambar format jpeg
    # Given User login

    # When User click "navMenuPurchasing" button in "Global" page
    # And User click produk menu in Product page
    # And User directed to List barang yang terdaftar di Super page
    When User click btnCreateProduk button in Product page
    And User send "<file>" image in uploadImage
    Then User able to see Gambar Utama message verification
    Given User go to main page product

   Examples: 
    |file |
    |jpeg |

  @PR-0009
  Scenario Outline: Memastikan user upload gambar format png
    # Given User login

    # When User click "navMenuPurchasing" button in "Global" page
    # And User click produk menu in Product page
    # And User directed to List barang yang terdaftar di Super page
    When User click btnCreateProduk button in Product page
    And User send "<file>" image in uploadImage
    Then User able to see Gambar Utama message verification
    Given User go to main page product

    Examples: 
    |file |
    |png  |

  @PR-0010
  Scenario Outline: Memastikan user bisa klik batal dan diarahkan kehalaman list product
    Given User login

    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    When User click btnCreateProduk button in Product page
    And User click btnCancelNewProduct in Product page
    Then User able to see list barang yang terdaftar di super message verification

    Examples: 
    |a |
    |b |

  @PR-0011
  Scenario Outline: Memastikan user bisa click panduan atribute product
    Given User login

    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    When User click btnCreateProduk button in Product page
    And User click btnPanduanAtribut button in Product page
    Then User is directed to the Guideline Konversi Produk

    Examples: 
    |a |
    |b |

  @PR-0012
  Scenario Outline: Memastikan gagal simpan Product RTP Ingredients ketika tidak ada Ingredients
    Given User login

    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    When User click btnCreateProduk button in Product page
    And User send image in uploadImage
    And User click fieldTipeProduk in product page 
    And User choose tipe product "<act>"

    And User click fieldSubType button in Product page
    And User click optSubtipe in fieldSubType
    And User click fieldNamaProduk in product page 
    And User fill fieldNamaProduk with "<namaProduk>" in fieldNamaPRoduk
    And User click fieldMerek in product page 
    And User choose merek in optMerek
    And User click fieldKategori in product page 
    And User choose optKategori in fieldKategori 
    And User click fieldInputBarcode in product page 
    And User click field and choose Pilih Tag Produk in product page
    And User click field and choose Pilih Referensi Produk in product page
    And User click field and choose Pilih Variant in product page
    And User click field and choose Pilih Packaging Material in product page
    And User click field and choose Pilih Packaging Color in product page
    And User click field and choose Pilih Main Ingredients in product page
    And User click field and choose Pilih Texture in product page
    And User click field and choose Pilih Taste in product page
    And User click fieldTargetUsia in product page 
    And User choose taget usia 
    And User click fieldPPNPenjualan in product page 
    And User choose PPN Penjualan
    When User click statusIngredients in product page

    And User click btnTambahAtribut in product page 
    And User click fieldSatuanModal in tambah atribut 
    And User choose satuan 
    And User click and input "<konversi>" in tambah atribut 
    And User click and input isi "<produk>" in tambah atribut 
    And User click btnSimpanModal
    And User click btnSimpan in product page
    And User wait for 5 seconds 
    Then User able to see "<message>" verification
    Given User go to main page product

    Examples:
      | namaProduk          | konversi| produk | act   |message                             |
      | Produk Otomatis RTP |1        | 10     | RTP   |Ingredient Produk tidak boleh kosong|

  @PR-0013
  Scenario Outline: Memastikan gagal simpan ketika tidak ada data sama sekali
    Given User login

    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    When User click btnCreateProduk button in Product page
    And User click btnSimpan in product page
    And User wait for 5 seconds
    Then User able to see Gambar Produk wajib diisi "<message>" verification

    Examples: 
    |message                   |
    |Gambar Produk wajib diisi |

  @PR-0014
  Scenario Outline: Memastikan gagal simpan ketika tidak upload gambar
    Given User login

    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    When User click btnCreateProduk button in Product page
    And User click btnSimpan in product page 
    And User wait for 5 seconds
    Then User able to see Gambar Produk wajib diisi "<message>" verification

    Examples: 
    |message                   |
    |Gambar Produk wajib diisi |

  @PR-0015
  Scenario Outline: Memastikan gagal simpan ketika tidak input nama product
    Given User login

    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    When User click btnCreateProduk button in Product page
    And User click btnSimpan in product page 
    And User send image in uploadImage
    And User click fieldTipeProduk in product page 
    And User choose tipe product "<act>"

    And User click fieldSubType button in Product page
    And User click optSubtipe in fieldSubType
    And User click btnSimpan in product page 
    And User wait for 5 seconds
    Then User able to see Nama Produk wajib diisi "<message>" verification

    Examples: 
    |message                   | act   |
    |Nama Produk wajib diisi   | RTP   |

  @PR-0016
  Scenario Outline: Memastikan gagal simpan ketika tidak input merek
    Given User login

    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    When User click btnCreateProduk button in Product page
    And User send image in uploadImage
    And User click fieldTipeProduk in product page 
    And User choose tipe product "<act>"

    And User click fieldSubType button in Product page
    And User click optSubtipe in fieldSubType
    And User click fieldNamaProduk in product page 
    And User fill fieldNamaProduk with "<namaProduk>" in fieldNamaPRoduk
    And User click btnSimpan in product page
    And User wait for 5 seconds
    Then User able to see Brand Produk wajib diisi "<message>" verification

    Examples: 
    | act   | namaProduk          |message                   |
    | RTP   | Produk otomatis1     |Brand Produk wajib diisi  |

  @PR-0017
  Scenario Outline: Memastikan gagal simpan ketika tidak input kategori
    Given User login

    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    When User click btnCreateProduk button in Product page
    And User send image in uploadImage
    And User click fieldTipeProduk in product page 
    And User choose tipe product "<act>"

    And User click fieldSubType button in Product page
    And User click optSubtipe in fieldSubType
    And User click fieldNamaProduk in product page 
    And User fill fieldNamaProduk with "<namaProduk>" in fieldNamaPRoduk
    And User click fieldMerek in product page 
    And User choose merek in optMerek 
    And User click btnSimpan in product page 
    And User wait for 5 seconds
    Then User able to see Kategori Produk wajib diisi "<message>" verification

    Examples: 
    | act   | namaProduk          |message                      |
    | RTP   | Produk otomatis2    |Kategori Produk wajib diisi  |

  @PR-0018
  Scenario Outline: Memastikan gagal simpan ketika tidak ada attibute product
    Given User login

    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    When User click btnCreateProduk button in Product page
    And User send image in uploadImage
    And User click fieldTipeProduk in product page 
    And User choose tipe product "<act>"

    And User click fieldSubType button in Product page
    And User click optSubtipe in fieldSubType
    And User click fieldNamaProduk in product page 
    And User fill fieldNamaProduk with "<namaProduk>" in fieldNamaPRoduk
    And User click fieldMerek in product page 
    And User choose merek in optMerek 
    And User click fieldKategori in product page 
    And User choose optKategori in fieldKategori
    And User click fieldKategori in product page 
    And User choose optKategori in fieldKategori 
    And User click fieldInputBarcode in product page 
    And User click field and choose Pilih Tag Produk in product page
    And User click field and choose Pilih Referensi Produk in product page
    And User click field and choose Pilih Variant in product page
    And User click field and choose Pilih Packaging Material in product page
    And User click field and choose Pilih Packaging Color in product page
    And User click field and choose Pilih Main Ingredients in product page
    And User click field and choose Pilih Texture in product page
    And User click field and choose Pilih Taste in product page
    And User click fieldTargetUsia in product page 
    And User choose taget usia 
    And User click fieldPPNPenjualan in product page 
    And User choose PPN Penjualan
    And User click btnSimpan in product page
    And User wait for 5 seconds
    Then User able to see Atribut Produk tidak boleh kosong "<message>" verification

    Examples: 
    | act   | namaProduk          | message                          |
    | RTP   | Produk otomatis     | Atribut Produk tidak boleh kosong|

  @PR-0019
  Scenario Outline: Memastikan tidak bisa upload gambar > 5
    Given User login

    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    When User click btnCreateProduk button in Product page
    And User send image in uploadImage
    And User send image in uploadImage
    And User send image in uploadImage
    And User send image in uploadImage
    And User send image in uploadImage
    And User send image in uploadImage6
    When User click radio button 2
    Then User able to see Gambar Utama message verification
    Given User go to main page product

    Examples: 
    | a |
    | b |

  @PR-0020
  Scenario Outline: Memastikan tidak bisa upload gambar dengan format pdf
    Given User login

    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    When User click btnCreateProduk button in Product page
    And User send "<file>" image in uploadImage
    Then User able to see File extension not allowed! "<message>" verification
    Given User go to main page product

    Examples: 
    | file | message                    |
    | pdf  | File extension not allowed!|

  @PR-0021
  Scenario Outline: Memastikan tidak bisa upload gambar dengan format csv
    Given User login

    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    When User click btnCreateProduk button in Product page
    And User send "<file>" image in uploadImage
    Then User able to see File extension not allowed! "<message>" verification
    Given User go to main page product

    Examples: 
    | file | message                    |
    | csv  | File extension not allowed!|

  @PR-0022
  Scenario Outline: Memastikan tidak bisa upload gambar dengan format tiff
    Given User login

    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    When User click btnCreateProduk button in Product page
    And User send "<file>" image in uploadImage
    Then User able to see File extension not allowed! "<message>" verification
    Given User go to main page product

    Examples: 
    | file  | message                    |
    | tiff  | File extension not allowed!|

  @PR-0023
  Scenario Outline: Memastikan tidak bisa upload gambar dengan format bmp
    Given User login

    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    When User click btnCreateProduk button in Product page
    And User send "<file>" image in uploadImage
    Then User able to see File extension not allowed! "<message>" verification
    Given User go to main page product

    Examples: 
    | file  | message                    |
    | bmp   | File extension not allowed!|

  @PR-0024
  Scenario: Memastikan kategori non active tidak nampil di dropdown kategori
    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    When User click btnCreateProduk button in Product page
    #And click kategori
    #Then user not get kategori"

  @PR-0025
  Scenario: Memastikan merek non active tidak nampil di dropdown merek
    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    When User click btnCreateProduk button in Product page
    #And click merek
    #Then user not get merek"

  @PR-0026
  Scenario Outline: Memastikan gagal simpan Product RTP Ingredients ketika tidak ada Ingredients
    Given User login

    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    When User click btnCreateProduk button in Product page
    And User send image in uploadImage
    And User click fieldTipeProduk in product page 
    And User choose tipe product "<act>"

    And User click fieldSubType button in Product page
    And User click optSubtipe in fieldSubType
    And User click fieldNamaProduk in product page 
    And User fill fieldNamaProduk with "<namaProduk>" in fieldNamaPRoduk
    And User click fieldMerek in product page 
    And User choose merek in optMerek
    And User click fieldKategori in product page 
    And User choose optKategori in fieldKategori 
    And User click fieldInputBarcode in product page 
    And User click field and choose Pilih Tag Produk in product page
    And User click field and choose Pilih Referensi Produk in product page
    And User click field and choose Pilih Variant in product page
    And User click field and choose Pilih Packaging Material in product page
    And User click field and choose Pilih Packaging Color in product page
    And User click field and choose Pilih Main Ingredients in product page
    And User click field and choose Pilih Texture in product page
    And User click field and choose Pilih Taste in product page
    And User click fieldTargetUsia in product page 
    And User choose taget usia 
    And User click fieldPPNPenjualan in product page 
    And User choose PPN Penjualan
    When User click statusIngredients in product page

    And User click btnTambahAtribut in product page 
    And User click fieldSatuanModal in tambah atribut 
    And User choose satuan 
    And User click and input "<konversi>" in tambah atribut 
    And User click and input isi "<produk>" in tambah atribut 
    Then User able to see btnCancelAttribute is disabled in Product page    
    Given User go to main page product

    Examples:
      | namaProduk          | konversi| produk | act   |                             
      | Produk Otomatis RTP |1        | 10     | RTP   |

  @PR-0027
  Scenario Outline: Memastikan Pin Produk terdisable ketika sudah 2 product yang terpilih
    Given User login

    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    When User click btnCreateProduk button in Product page
    Then User able to see Limit produk yang di pin sudah habis maks. 2 produk "<message>" verification

    Examples: 
    | message                                              |
    | Limit produk yang di pin sudah habis (maks. 2 produk)|

@PR-0028
  Scenario Outline: Memastikan gagal buat product dengan kondisi nama product sama dengan sebelumnya
    Given User login

    When User click "navMenuPurchasing" button in "Global" page
    And User click produk menu in Product page
    And User directed to List barang yang terdaftar di Super page
    When User click btnCreateProduk button in Product page
    And User send image in uploadImage
    And User click fieldTipeProduk in product page 
    And User choose tipe product "<act>"

    And User click fieldSubType button in Product page
    And User click optSubtipe in fieldSubType
    And User click fieldNamaProduk in product page 
    And User fill fieldNamaProduk with "<namaProduk>" in fieldNamaPRoduk
    And User click fieldMerek in product page 
    And User choose merek in optMerek
    And User click fieldKategori in product page 
    And User choose optKategori in fieldKategori 
    And User click fieldInputBarcode in product page 
    And User click field and choose Pilih Tag Produk in product page
    And User click field and choose Pilih Referensi Produk in product page
    And User click field and choose Pilih Variant in product page
    And User click field and choose Pilih Packaging Material in product page
    And User click field and choose Pilih Packaging Color in product page
    And User click field and choose Pilih Main Ingredients in product page
    And User click field and choose Pilih Texture in product page
    And User click field and choose Pilih Taste in product page
    And User click fieldTargetUsia in product page 
    And User choose taget usia 
    And User click fieldPPNPenjualan in product page 
    And User choose PPN Penjualan

    And User click btnTambahAtribut in product page 
    And User click fieldSatuanModal in tambah atribut 
    And User choose satuan 
    And User click and input "<konversi>" in tambah atribut 
    And User click and input isi "<produk>" in tambah atribut 
    And User click btnSimpanModal
    And User click btnSimpan in product page 
    And User wait for 5 seconds
    Then User able to see invalid "<message>" verification
    Given User go to main page product

    Examples:
      | namaProduk      | konversi| produk | act     | message                                                                          |
      | Automated Test  |1        | 10     | Non RTP | 3 INVALID_ARGUMENT: Nama produk sudah digunakan dengan kode SKU [KRT-111858123]  |
