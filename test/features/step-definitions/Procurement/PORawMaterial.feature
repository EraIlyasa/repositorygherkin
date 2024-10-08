@Purchasing-Purchase-Order-Raw-Material
Feature: Create - Purchase Order Raw Material

  # Background: User login into the system
  #   Given I send login url
  #   When I login with credential
  #   Then I see usernameDisplay

  @PO-0028
  Scenario Outline: Memastikan Create PO Raw Material dan berhasil disimpan dengan status set
    Given User login
    When User click "navMenuPurchasing" button in "Global" page
    And User click "menuPurchasingPO" button in "PO" page
    And User directed to "Purchase Order" page
    When User click "btnCreateNewPO" button in "PO" page
    And User clicks "fieldJenisPO" button in "PO" page
    And User clicks "optJenisPORM" button in "PO" page
    And User clicks "fieldGudang" button in "PO" page
    And User clicks "optGudangPOAloha" button in "PO" page
    And User clicks "fieldTipePT" button in "PO" page
    And User clicks "optTipePTPO" button in "PO" page
    And User clicks "fieldSupplier" button in "PO" page
    And User clicks "optSupplier" button in "PO" page
    And User clicks "textAreaCatatanPO" button in "PO" page
    And User fill "textAreaCatatanPO" with value "<notes>" in "PO" page
    And User clicks "fieldMetodePembayaran" button in "PO" page
    And User clicks "optMetodePembayaranTransfer" button in "PO" page
    And User clicks "fieldPengiriman" button in "PO" page
    And User clicks "optPengirimanLocco" button in "PO" page
    And User clicks "fieldPIC" button in "PO" page
    And User fill "fieldPIC" with value "<pic>" in "PO" page
    And User clicks "optPIC" button in "PO" page
    And User clicks "fieldBankSupplier" button in "PO" page
    And User clicks "optBankSupplier" button in "PO" page
    When User clicks "btnTambahProdukPO" button in "PO" page
    And User can wait loading application for "3" seconds
    And User clicks "fieldProdukModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User fill "fieldProdukModalPO" with value "<productName>" in "PO" page
    # And User clicks "fieldProdukModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User clicks "optProdukModalPORaw" button in "PO" page
    And User clicks "fieldSatuanModalPO" button in "PO" page
    And User clicks "optSatuanModalPO" button in "PO" page
    And User fill "fieldQtyModalPO" with value "<qty>" in "PO" page
    And User fill "fieldHargaSatuanModalPO" with value "<price>" in "PO" page
    And User fill "fieldDiskon1ModalPO" with value "<diskon1>" in "PO" page
    And User clicks "togglePPNModalPO" button in "PO" page
    And User clicks "btnSimpanModalPO" button in "PO" page
    And User scroll to "bottom" of the page
    Then User verified "purchase order cost" for "textValueDPP" is "<textValueDPP>"
    And User verified "purchase order cost" for "textValuePPN" is "<textValuePPN>"
    And User verified "purchase order cost" for "textValueSubTotal" is "<textValueSubTotal>"
    And User fill "fieldDiskonOffFaktur" with value "<diskonOffFaktur>" in "PO" page
    And User verified "purchase order cost" for "textValueGrandTotal" is "<textValueGrandTotal>"
    And User click "navNotaPengajuan"
    And User upload image to "imgUploadNotaPengajuan" in "PO" page
    And User click "btnSimpanCreatePO" button in "PO" page
    Then User able to see Purchase Order berhasil dibuat! message

    Examples:
      | notes                  | pic   | productName   | qty  | price | diskon1 | diskonOffFaktur | textValueDPP      | textValuePPN      | textValueSubTotal  | textValueGrandTotal |
      | Catatan Purchase Order | Angga | Automated Raw | 1000 | 95000 |     500 |             100 | Rp 94.500.000,000 | Rp 10.395.000,000 | Rp 104.895.000,000 | Rp 104.894.900,000  |

  @PO-0029
  Scenario Outline: Memastikan bisa import product Raw Material  dihalaman create PO
    Given User login
    When User click "navMenuPurchasing" button in "Global" page
    And User click "menuPurchasingPO" button in "PO" page
    And User directed to "Purchase Order" page
    When User click "btnCreateNewPO" button in "PO" page
    And User clicks "fieldJenisPO" button in "PO" page
    And User clicks "optJenisPORM" button in "PO" page
    And User clicks "fieldGudang" button in "PO" page
    And User clicks "optGudangPOAloha" button in "PO" page
    And User clicks "fieldTipePT" button in "PO" page
    And User clicks "optTipePTPO" button in "PO" page
    And User clicks "fieldSupplier" button in "PO" page
    And User clicks "optSupplier" button in "PO" page
    And User clicks "textAreaCatatanPO" button in "PO" page
    And User fill "textAreaCatatanPO" with value "<notes>" in "PO" page
    And User clicks "fieldMetodePembayaran" button in "PO" page
    And User clicks "optMetodePembayaranTransfer" button in "PO" page
    And User clicks "fieldPengiriman" button in "PO" page
    And User clicks "optPengirimanLocco" button in "PO" page
    And User clicks "fieldPIC" button in "PO" page
    And User fill "fieldPIC" with value "<pic>" in "PO" page
    And User clicks "optPIC" button in "PO" page
    And User clicks "fieldBankSupplier" button in "PO" page
    And User clicks "optBankSupplier" button in "PO" page
    When User click "btnImportCSVPO" button in "PO" page
    And User send "template-PO-RAW.csv" in "uploadFilePO" in "PO" page
    And User click "btnSubmitImport" button in "PO" page
    And User can wait loading application for "5" seconds
    Then User verified "purchase order cost" for "textValueDPP" is "<textValueDPP>"
    And User verified "purchase order cost" for "textValuePPN" is "<textValuePPN>"
    And User verified "purchase order cost" for "textValueSubTotal" is "<textValueSubTotal>"
    And User fill "fieldDiskonOffFaktur" with value "<diskonOffFaktur>" in "PO" page
    And User verified "purchase order cost" for "textValueGrandTotal" is "<textValueGrandTotal>"
    And User click "navNotaPengajuan"
    And User upload image to "imgUploadNotaPengajuan" in "PO" page
    And User click "btnSimpanCreatePO" button in "PO" page
    Then User able to see Purchase Order berhasil dibuat! message
    Given User get to dashboard url

    Examples:
      | notes                  | pic   | qty  | price | diskon1 | diskonOffFaktur | textValueDPP      | textValuePPN      | textValueSubTotal  | textValueGrandTotal |
      | Catatan Purchase Order | Angga | 1000 | 95000 |     500 |             100 | Rp 94.500.000,000 | Rp 10.395.000,000 | Rp 104.895.000,000 | Rp 104.894.900,000  |

  @PO-0030
  Scenario Outline: Memastikan Edit PO Raw Material dan berhasil disimpan dengan status set
    When User click "navMenuPurchasing" button in "Global" page
    And User click "menuPurchasingPO" button in "PO" page
    And User directed to "Purchase Order" page
    When User click "btnCreateNewPO" button in "PO" page
    And User clicks "fieldJenisPO" button in "PO" page
    And User clicks "optJenisPORM" button in "PO" page
    And User clicks "fieldGudang" button in "PO" page
    And User clicks "optGudangPOAloha" button in "PO" page
    And User clicks "fieldTipePT" button in "PO" page
    And User clicks "optTipePTPO" button in "PO" page
    And User clicks "fieldSupplier" button in "PO" page
    And User clicks "optSupplier" button in "PO" page
    And User clicks "textAreaCatatanPO" button in "PO" page
    And User fill "textAreaCatatanPO" with value "<notes>" in "PO" page
    And User clicks "fieldMetodePembayaran" button in "PO" page
    And User clicks "optMetodePembayaranTransfer" button in "PO" page
    And User clicks "fieldPengiriman" button in "PO" page
    And User clicks "optPengirimanLocco" button in "PO" page
    And User clicks "fieldPIC" button in "PO" page
    And User fill "fieldPIC" with value "<pic>" in "PO" page
    And User clicks "optPIC" button in "PO" page
    And User clicks "fieldBankSupplier" button in "PO" page
    And User clicks "optBankSupplier" button in "PO" page
    When User clicks "btnTambahProdukPO" button in "PO" page
    And User can wait loading application for "3" seconds
    And User clicks "fieldProdukModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User fill "fieldProdukModalPO" with value "<productName>" in "PO" page
    # And User clicks "fieldProdukModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User clicks "optProdukModalPORaw" button in "PO" page
    And User clicks "fieldSatuanModalPO" button in "PO" page
    And User clicks "optSatuanModalPO" button in "PO" page
    And User fill "fieldQtyModalPO" with value "<qty>" in "PO" page
    And User fill "fieldHargaSatuanModalPO" with value "<price>" in "PO" page
    And User fill "fieldDiskon1ModalPO" with value "<diskon1>" in "PO" page
    And User clicks "togglePPNModalPO" button in "PO" page
    And User clicks "btnSimpanModalPO" button in "PO" page
    And User scroll to "bottom" of the page
    Then User verified "purchase order cost" for "textValueDPP" is "<textValueDPP>"
    And User verified "purchase order cost" for "textValuePPN" is "<textValuePPN>"
    And User verified "purchase order cost" for "textValueSubTotal" is "<textValueSubTotal>"
    And User fill "fieldDiskonOffFaktur" with value "<diskonOffFaktur>" in "PO" page
    And User verified "purchase order cost" for "textValueGrandTotal" is "<textValueGrandTotal>"
    And User click "navNotaPengajuan"
    And User upload image to "imgUploadNotaPengajuan" in "PO" page
    And User click "btnSimpanCreatePO" button in "PO" page
    Then User able to see Purchase Order berhasil dibuat! message
    And User get kode invoice PO
    And User click "btnDetailRow0" button in "PO" page
    And User click "btnEditPO" button in "PO" page
    And User click "fieldDeskripsiNota" in "PO" page
    And User input "<desc>" into "fieldDeskripsiNota"
    And User click "btnSimpanCreatePO" button in "PO" page
    Then User able to see "Purchase Order berhasil diupdate" message verification
    Given User get url to "PO" page
    When User click "btnSearch" in "PO" page
    When User input "kodeInvoice" into "fieldInputSearch"
    And User click "btnCari" in "PO" page
    Then User verified "status po" for "textStatusPO" is "<textStatusPO>"
    Given User get to dashboard url

    Examples:
      | notes                  | pic   | productName   | qty  | price | diskon1 | diskonOffFaktur | textValueDPP      | textValuePPN      | textValueSubTotal  | textValueGrandTotal | desc           | textStatusPO |
      | Catatan Purchase Order | Angga | Automated Raw | 1000 | 95000 |     500 |             100 | Rp 94.500.000,000 | Rp 10.395.000,000 | Rp 104.895.000,000 | Rp 104.894.900,000  | Dokumen Edited | Set          |

  @PO-0031
  Scenario Outline: Memastikan bisa import product Raw Material dihalaman edit PO dengan kondisi product tidak sama dengan sebelumnya
    When User click "navMenuPurchasing" button in "Global" page
    And User click "menuPurchasingPO" button in "PO" page
    And User directed to "Purchase Order" page
    When User click "btnCreateNewPO" button in "PO" page
    And User clicks "fieldJenisPO" button in "PO" page
    And User clicks "optJenisPORM" button in "PO" page
    And User clicks "fieldGudang" button in "PO" page
    And User clicks "optGudangPOAloha" button in "PO" page
    And User clicks "fieldTipePT" button in "PO" page
    And User clicks "optTipePTPO" button in "PO" page
    And User clicks "fieldSupplier" button in "PO" page
    And User clicks "optSupplier" button in "PO" page
    And User clicks "textAreaCatatanPO" button in "PO" page
    And User fill "textAreaCatatanPO" with value "<notes>" in "PO" page
    And User clicks "fieldMetodePembayaran" button in "PO" page
    And User clicks "optMetodePembayaranTransfer" button in "PO" page
    And User clicks "fieldPengiriman" button in "PO" page
    And User clicks "optPengirimanLocco" button in "PO" page
    And User clicks "fieldPIC" button in "PO" page
    And User fill "fieldPIC" with value "<pic>" in "PO" page
    And User clicks "optPIC" button in "PO" page
    And User clicks "fieldBankSupplier" button in "PO" page
    And User clicks "optBankSupplier" button in "PO" page
    When User clicks "btnTambahProdukPO" button in "PO" page
    And User can wait loading application for "3" seconds
    And User clicks "fieldProdukModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User fill "fieldProdukModalPO" with value "<productName>" in "PO" page
    # And User clicks "fieldProdukModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User clicks "optProdukModalPORaw" button in "PO" page
    And User clicks "fieldSatuanModalPO" button in "PO" page
    And User clicks "optSatuanModalPO" button in "PO" page
    And User fill "fieldQtyModalPO" with value "<qty>" in "PO" page
    And User fill "fieldHargaSatuanModalPO" with value "<price>" in "PO" page
    And User fill "fieldDiskon1ModalPO" with value "<diskon1>" in "PO" page
    And User clicks "togglePPNModalPO" button in "PO" page
    And User clicks "btnSimpanModalPO" button in "PO" page
    And User scroll to "bottom" of the page
    Then User verified "purchase order cost" for "textValueDPP" is "<textValueDPP>"
    And User verified "purchase order cost" for "textValuePPN" is "<textValuePPN>"
    And User verified "purchase order cost" for "textValueSubTotal" is "<textValueSubTotal>"
    And User fill "fieldDiskonOffFaktur" with value "<diskonOffFaktur>" in "PO" page
    And User verified "purchase order cost" for "textValueGrandTotal" is "<textValueGrandTotal>"
    And User click "navNotaPengajuan"
    And User upload image to "imgUploadNotaPengajuan" in "PO" page
    And User click "btnSimpanCreatePO" button in "PO" page
    Then User able to see Purchase Order berhasil dibuat! message
    And User get kode invoice PO
    And User click "btnDetailRow0" button in "PO" page
    And User click "btnEditPO" button in "PO" page
    And User click "btnEditProdukPO" in "Edit PO" page
    And User click "btnHapusRow1ModalPO" in "Edit produk modal"
    And User click "btnSimpanModalPO" in "Edit produk modal"
    When User click "btnImportCSVPO" button in "PO" page
    And User send "template-PO-RAW-2.csv" in "uploadFilePO" in "PO" page
    And User click "btnSubmitImport" button in "PO" page
    And User can wait loading application for "5" seconds
    # And User click "fieldDeskripsiNota" in "PO" page
    # And User input "<desc>" into "fieldDeskripsiNota"
    And User click "btnSimpanCreatePO" button in "PO" page
    Then User able to see "Purchase Order berhasil diupdate" message verification
    Given User get to dashboard url

    Examples:
      | notes                  | pic   | productName   | qty  | price | diskon1 | diskonOffFaktur | textValueDPP      | textValuePPN      | textValueSubTotal  | textValueGrandTotal | desc           | textStatusPO |
      | Catatan Purchase Order | Angga | Automated Raw | 1000 | 95000 |     500 |             100 | Rp 94.500.000,000 | Rp 10.395.000,000 | Rp 104.895.000,000 | Rp 104.894.900,000  | Dokumen Edited | Set          |

  @PO-0032
  Scenario Outline: Memastikan Cancel PO Raw Material dan berhasil disimpan dengan Cancel
    When User click "navMenuPurchasing" button in "Global" page
    And User click "menuPurchasingPO" button in "PO" page
    And User directed to "Purchase Order" page
    When User click "btnCreateNewPO" button in "PO" page
    And User clicks "fieldJenisPO" button in "PO" page
    And User clicks "optJenisPORM" button in "PO" page
    And User clicks "fieldGudang" button in "PO" page
    And User clicks "optGudangPOAloha" button in "PO" page
    And User clicks "fieldTipePT" button in "PO" page
    And User clicks "optTipePTPO" button in "PO" page
    And User clicks "fieldSupplier" button in "PO" page
    And User clicks "optSupplier" button in "PO" page
    And User clicks "textAreaCatatanPO" button in "PO" page
    And User fill "textAreaCatatanPO" with value "<notes>" in "PO" page
    And User clicks "fieldMetodePembayaran" button in "PO" page
    And User clicks "optMetodePembayaranTransfer" button in "PO" page
    And User clicks "fieldPengiriman" button in "PO" page
    And User clicks "optPengirimanLocco" button in "PO" page
    And User clicks "fieldPIC" button in "PO" page
    And User fill "fieldPIC" with value "<pic>" in "PO" page
    And User clicks "optPIC" button in "PO" page
    And User clicks "fieldBankSupplier" button in "PO" page
    And User clicks "optBankSupplier" button in "PO" page
    When User clicks "btnTambahProdukPO" button in "PO" page
    And User can wait loading application for "3" seconds
    And User clicks "fieldProdukModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User fill "fieldProdukModalPO" with value "<productName>" in "PO" page
    # And User clicks "fieldProdukModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User clicks "optProdukModalPORaw" button in "PO" page
    And User clicks "fieldSatuanModalPO" button in "PO" page
    And User clicks "optSatuanModalPO" button in "PO" page
    And User fill "fieldQtyModalPO" with value "<qty>" in "PO" page
    And User fill "fieldHargaSatuanModalPO" with value "<price>" in "PO" page
    And User fill "fieldDiskon1ModalPO" with value "<diskon1>" in "PO" page
    And User clicks "togglePPNModalPO" button in "PO" page
    And User clicks "btnSimpanModalPO" button in "PO" page
    And User scroll to "bottom" of the page
    Then User verified "purchase order cost" for "textValueDPP" is "<textValueDPP>"
    And User verified "purchase order cost" for "textValuePPN" is "<textValuePPN>"
    And User verified "purchase order cost" for "textValueSubTotal" is "<textValueSubTotal>"
    And User fill "fieldDiskonOffFaktur" with value "<diskonOffFaktur>" in "PO" page
    And User verified "purchase order cost" for "textValueGrandTotal" is "<textValueGrandTotal>"
    And User click "navNotaPengajuan"
    And User upload image to "imgUploadNotaPengajuan" in "PO" page
    And User click "btnSimpanCreatePO" button in "PO" page
    Then User able to see Purchase Order berhasil dibuat! message
    And User click "btnDetailRow0" button in "PO" page
    And User click "btnCancelPO" in "PO" page
    And User click "btnLanjutkanCancel" to proceed cancelation
    Then Userr able to see "Data Berhasil Dibatalkan" message verification
    Given User get to dashboard url

    Examples:
      | notes                  | pic   | productName   | qty  | price | diskon1 | diskonOffFaktur | textValueDPP      | textValuePPN      | textValueSubTotal  | textValueGrandTotal |
      | Catatan Purchase Order | Angga | Automated Raw | 1000 | 95000 |     500 |             100 | Rp 94.500.000,000 | Rp 10.395.000,000 | Rp 104.895.000,000 | Rp 104.894.900,000  |

  @PO-0033
  Scenario Outline: Memastikan Request payment berhasil untuk PO dengan payment method tf
    When User click "navMenuPurchasing" button in "Global" page
    And User click "menuPurchasingPO" button in "PO" page
    And User directed to "Purchase Order" page
    When User click "btnCreateNewPO" button in "PO" page
    And User clicks "fieldJenisPO" button in "PO" page
    And User clicks "optJenisPORM" button in "PO" page
    And User clicks "fieldGudang" button in "PO" page
    And User clicks "optGudangPOAloha" button in "PO" page
    And User clicks "fieldTipePT" button in "PO" page
    And User clicks "optTipePTPO" button in "PO" page
    And User clicks "fieldSupplier" button in "PO" page
    And User clicks "optSupplier" button in "PO" page
    And User clicks "textAreaCatatanPO" button in "PO" page
    And User fill "textAreaCatatanPO" with value "<notes>" in "PO" page
    And User clicks "fieldMetodePembayaran" button in "PO" page
    And User choose metode pembayaran "<metodePembayaran>"
    # And User clicks "optMetodePembayaranTransfer" button in "PO" page
    And User clicks "fieldPengiriman" button in "PO" page
    And User clicks "optPengirimanLocco" button in "PO" page
    And User clicks "fieldPIC" button in "PO" page
    And User fill "fieldPIC" with value "<pic>" in "PO" page
    And User clicks "optPIC" button in "PO" page
    And User clicks "fieldBankSupplier" button in "PO" page
    And User clicks "optBankSupplier" button in "PO" page
    When User clicks "btnTambahProdukPO" button in "PO" page
    And User can wait loading application for "3" seconds
    And User clicks "fieldProdukModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User fill "fieldProdukModalPO" with value "<productName>" in "PO" page
    # And User clicks "fieldProdukModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User clicks "optProdukModalPORaw" button in "PO" page
    And User clicks "fieldSatuanModalPO" button in "PO" page
    And User clicks "optSatuanModalPO" button in "PO" page
    And User fill "fieldQtyModalPO" with value "<qty>" in "PO" page
    And User fill "fieldHargaSatuanModalPO" with value "<price>" in "PO" page
    And User fill "fieldDiskon1ModalPO" with value "<diskon1>" in "PO" page
    And User clicks "togglePPNModalPO" button in "PO" page
    And User clicks "btnSimpanModalPO" button in "PO" page
    And User scroll to "bottom" of the page
    Then User verified "purchase order cost" for "textValueDPP" is "<textValueDPP>"
    And User verified "purchase order cost" for "textValuePPN" is "<textValuePPN>"
    And User verified "purchase order cost" for "textValueSubTotal" is "<textValueSubTotal>"
    And User fill "fieldDiskonOffFaktur" with value "<diskonOffFaktur>" in "PO" page
    And User verified "purchase order cost" for "textValueGrandTotal" is "<textValueGrandTotal>"
    And User click "navNotaPengajuan"
    And User upload image to "imgUploadNotaPengajuan" in "PO" page
    And User click "btnSimpanCreatePO" button in "PO" page
    Then User able to see Data Berhasil Dibatalkan message verification
    Given User get to dashboard url

    Examples:
      | metodePembayaran | notes                  | pic   | productName   | qty  | price | diskon1 | diskonOffFaktur | textValueDPP      | textValuePPN      | textValueSubTotal  | textValueGrandTotal |
      | Transfer         | Catatan Purchase Order | Angga | Automated Raw | 1000 | 95000 |     500 |             100 | Rp 94.500.000,000 | Rp 10.395.000,000 | Rp 104.895.000,000 | Rp 104.894.900,000  |

  @PO-0034
  Scenario Outline: Memastikan Request payment berhasil untuk PO dengan payment method cod
    When User click "navMenuPurchasing" button in "Global" page
    And User click "menuPurchasingPO" button in "PO" page
    And User directed to "Purchase Order" page
    When User click "btnCreateNewPO" button in "PO" page
    And User clicks "fieldJenisPO" button in "PO" page
    And User clicks "optJenisPORM" button in "PO" page
    And User clicks "fieldGudang" button in "PO" page
    And User clicks "optGudangPOAloha" button in "PO" page
    And User clicks "fieldTipePT" button in "PO" page
    And User clicks "optTipePTPO" button in "PO" page
    And User clicks "fieldSupplier" button in "PO" page
    And User clicks "optSupplier" button in "PO" page
    And User clicks "textAreaCatatanPO" button in "PO" page
    And User fill "textAreaCatatanPO" with value "<notes>" in "PO" page
    And User clicks "fieldMetodePembayaran" button in "PO" page
    And User choose metode pembayaran "<metodePembayaran>"
    # And User clicks "optMetodePembayaranTransfer" button in "PO" page
    And User clicks "fieldPengiriman" button in "PO" page
    And User clicks "optPengirimanLocco" button in "PO" page
    And User clicks "fieldPIC" button in "PO" page
    And User fill "fieldPIC" with value "<pic>" in "PO" page
    And User clicks "optPIC" button in "PO" page
    And User clicks "fieldBankSupplier" button in "PO" page
    And User clicks "optBankSupplier" button in "PO" page
    When User clicks "btnTambahProdukPO" button in "PO" page
    And User can wait loading application for "3" seconds
    And User clicks "fieldProdukModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User fill "fieldProdukModalPO" with value "<productName>" in "PO" page
    # And User clicks "fieldProdukModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User clicks "optProdukModalPORaw" button in "PO" page
    And User clicks "fieldSatuanModalPO" button in "PO" page
    And User clicks "optSatuanModalPO" button in "PO" page
    And User fill "fieldQtyModalPO" with value "<qty>" in "PO" page
    And User fill "fieldHargaSatuanModalPO" with value "<price>" in "PO" page
    And User fill "fieldDiskon1ModalPO" with value "<diskon1>" in "PO" page
    And User clicks "togglePPNModalPO" button in "PO" page
    And User clicks "btnSimpanModalPO" button in "PO" page
    And User scroll to "bottom" of the page
    Then User verified "purchase order cost" for "textValueDPP" is "<textValueDPP>"
    And User verified "purchase order cost" for "textValuePPN" is "<textValuePPN>"
    And User verified "purchase order cost" for "textValueSubTotal" is "<textValueSubTotal>"
    And User fill "fieldDiskonOffFaktur" with value "<diskonOffFaktur>" in "PO" page
    And User verified "purchase order cost" for "textValueGrandTotal" is "<textValueGrandTotal>"
    And User click "navNotaPengajuan"
    And User upload image to "imgUploadNotaPengajuan" in "PO" page
    And User click "btnSimpanCreatePO" button in "PO" page
    Then User able to see Purchase Order berhasil dibuat! message
    Given User get to dashboard url

    Examples:
      | metodePembayaran | notes                  | pic   | productName   | qty  | price | diskon1 | diskonOffFaktur | textValueDPP      | textValuePPN      | textValueSubTotal  | textValueGrandTotal |
      | Cash On Delivery | Catatan Purchase Order | Angga | Automated Raw | 1000 | 95000 |     500 |             100 | Rp 94.500.000,000 | Rp 10.395.000,000 | Rp 104.895.000,000 | Rp 104.894.900,000  |

  @PO-0035
  Scenario Outline: Memastikan Request payment berhasil untuk PO dengan payment method TF grandtotal =0
    When User click "navMenuPurchasing" button in "Global" page
    And User click "menuPurchasingPO" button in "PO" page
    And User directed to "Purchase Order" page
    When User click "btnCreateNewPO" button in "PO" page
    And User clicks "fieldJenisPO" button in "PO" page
    And User clicks "optJenisPORM" button in "PO" page
    And User clicks "fieldGudang" button in "PO" page
    And User clicks "optGudangPOAloha" button in "PO" page
    And User clicks "fieldTipePT" button in "PO" page
    And User clicks "optTipePTPO" button in "PO" page
    And User clicks "fieldSupplier" button in "PO" page
    And User clicks "optSupplier" button in "PO" page
    And User clicks "textAreaCatatanPO" button in "PO" page
    And User fill "textAreaCatatanPO" with value "<notes>" in "PO" page
    And User clicks "fieldMetodePembayaran" button in "PO" page
    And User choose metode pembayaran "<metodePembayaran>"
    # And User clicks "optMetodePembayaranTransfer" button in "PO" page
    And User clicks "fieldPengiriman" button in "PO" page
    And User clicks "optPengirimanLocco" button in "PO" page
    And User clicks "fieldPIC" button in "PO" page
    And User fill "fieldPIC" with value "<pic>" in "PO" page
    And User clicks "optPIC" button in "PO" page
    And User clicks "fieldBankSupplier" button in "PO" page
    And User clicks "optBankSupplier" button in "PO" page
    When User clicks "btnTambahProdukPO" button in "PO" page
    And User can wait loading application for "3" seconds
    And User clicks "fieldProdukModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User fill "fieldProdukModalPO" with value "<productName>" in "PO" page
    # And User clicks "fieldProdukModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User clicks "optProdukModalPORaw" button in "PO" page
    And User clicks "fieldSatuanModalPO" button in "PO" page
    And User clicks "optSatuanModalPO" button in "PO" page
    And User fill "fieldQtyModalPO" with value "<qty>" in "PO" page
    And User fill "fieldHargaSatuanModalPO" with value "<price>" in "PO" page
    And User fill "fieldDiskon1ModalPO" with value "<diskon1>" in "PO" page
    And User clicks "togglePPNModalPO" button in "PO" page
    And User clicks "btnSimpanModalPO" button in "PO" page
    And User scroll to "bottom" of the page
    Then User verified "purchase order cost" for "textValueDPP" is "<textValueDPP>"
    And User verified "purchase order cost" for "textValuePPN" is "<textValuePPN>"
    And User verified "purchase order cost" for "textValueSubTotal" is "<textValueSubTotal>"
    And User fill "fieldDiskonOffFaktur" with value "<diskonOffFaktur>" in "PO" page
    And User verified "purchase order cost" for "textValueGrandTotal" is "<textValueGrandTotal>"
    And User click "navNotaPengajuan"
    And User upload image to "imgUploadNotaPengajuan" in "PO" page
    And User click "btnSimpanCreatePO" button in "PO" page
    Then User able to see Purchase Order berhasil dibuat! message
    Given User get to dashboard url

    Examples:
      | metodePembayaran | notes                  | pic   | productName   | qty  | price | diskon1 | diskonOffFaktur | textValueDPP | textValuePPN | textValueSubTotal | textValueGrandTotal |
      | Transfer         | Catatan Purchase Order | Angga | Automated Raw | 1000 |     0 |       0 |               0 |        0,000 |        0,000 |             0,000 |               0,000 |

  @PO-0036
  Scenario Outline: Memastikan Request payment berhasil untuk PO dengan payment method COD grandtotal =0
    When User click "navMenuPurchasing" button in "Global" page
    And User click "menuPurchasingPO" button in "PO" page
    And User directed to "Purchase Order" page
    When User click "btnCreateNewPO" button in "PO" page
    And User clicks "fieldJenisPO" button in "PO" page
    And User clicks "optJenisPORM" button in "PO" page
    And User clicks "fieldGudang" button in "PO" page
    And User clicks "optGudangPOAloha" button in "PO" page
    And User clicks "fieldTipePT" button in "PO" page
    And User clicks "optTipePTPO" button in "PO" page
    And User clicks "fieldSupplier" button in "PO" page
    And User clicks "optSupplier" button in "PO" page
    And User clicks "textAreaCatatanPO" button in "PO" page
    And User fill "textAreaCatatanPO" with value "<notes>" in "PO" page
    And User clicks "fieldMetodePembayaran" button in "PO" page
    And User choose metode pembayaran "<metodePembayaran>"
    # And User clicks "optMetodePembayaranTransfer" button in "PO" page
    And User clicks "fieldPengiriman" button in "PO" page
    And User clicks "optPengirimanLocco" button in "PO" page
    And User clicks "fieldPIC" button in "PO" page
    And User fill "fieldPIC" with value "<pic>" in "PO" page
    And User clicks "optPIC" button in "PO" page
    And User clicks "fieldBankSupplier" button in "PO" page
    And User clicks "optBankSupplier" button in "PO" page
    When User clicks "btnTambahProdukPO" button in "PO" page
    And User can wait loading application for "3" seconds
    And User clicks "fieldProdukModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User fill "fieldProdukModalPO" with value "<productName>" in "PO" page
    # And User clicks "fieldProdukModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User clicks "optProdukModalPORaw" button in "PO" page
    And User clicks "fieldSatuanModalPO" button in "PO" page
    And User clicks "optSatuanModalPO" button in "PO" page
    And User fill "fieldQtyModalPO" with value "<qty>" in "PO" page
    And User fill "fieldHargaSatuanModalPO" with value "<price>" in "PO" page
    And User fill "fieldDiskon1ModalPO" with value "<diskon1>" in "PO" page
    And User clicks "togglePPNModalPO" button in "PO" page
    And User clicks "btnSimpanModalPO" button in "PO" page
    And User scroll to "bottom" of the page
    Then User verified "purchase order cost" for "textValueDPP" is "<textValueDPP>"
    And User verified "purchase order cost" for "textValuePPN" is "<textValuePPN>"
    And User verified "purchase order cost" for "textValueSubTotal" is "<textValueSubTotal>"
    And User fill "fieldDiskonOffFaktur" with value "<diskonOffFaktur>" in "PO" page
    And User verified "purchase order cost" for "textValueGrandTotal" is "<textValueGrandTotal>"
    And User click "navNotaPengajuan"
    And User upload image to "imgUploadNotaPengajuan" in "PO" page
    And User click "btnSimpanCreatePO" button in "PO" page
    Then User able to see Purchase Order berhasil dibuat! message
    Given User get to dashboard url

    Examples:
      | metodePembayaran | notes                  | pic   | productName   | qty  | price | diskon1 | diskonOffFaktur | textValueDPP | textValuePPN | textValueSubTotal | textValueGrandTotal |
      | Cash On Delivery | Catatan Purchase Order | Angga | Automated Raw | 1000 |     0 |       0 |               0 |        0,000 |        0,000 |             0,000 |               0,000 |

  @PO-0037
  Scenario Outline: Memastikan Request payment berhasil untuk PO dengan payment method Tempo grandtotal =0
    When User click "navMenuPurchasing" button in "Global" page
    And User click "menuPurchasingPO" button in "PO" page
    And User directed to "Purchase Order" page
    When User click "btnCreateNewPO" button in "PO" page
    And User clicks "fieldJenisPO" button in "PO" page
    And User clicks "optJenisPORM" button in "PO" page
    And User clicks "fieldGudang" button in "PO" page
    And User clicks "optGudangPOAloha" button in "PO" page
    And User clicks "fieldTipePT" button in "PO" page
    And User clicks "optTipePTPO" button in "PO" page
    And User clicks "fieldSupplier" button in "PO" page
    And User clicks "optSupplier" button in "PO" page
    And User clicks "textAreaCatatanPO" button in "PO" page
    And User fill "textAreaCatatanPO" with value "<notes>" in "PO" page
    And User clicks "fieldMetodePembayaran" button in "PO" page
    And User choose metode pembayaran "<metodePembayaran>"
    # And User clicks "optMetodePembayaranTransfer" button in "PO" page
    And User clicks "fieldPengiriman" button in "PO" page
    And User clicks "optPengirimanLocco" button in "PO" page
    And User clicks "fieldPIC" button in "PO" page
    And User fill "fieldPIC" with value "<pic>" in "PO" page
    And User clicks "optPIC" button in "PO" page
    And User clicks "fieldBankSupplier" button in "PO" page
    And User clicks "optBankSupplier" button in "PO" page
    When User clicks "btnTambahProdukPO" button in "PO" page
    And User can wait loading application for "3" seconds
    And User clicks "fieldProdukModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User fill "fieldProdukModalPO" with value "<productName>" in "PO" page
    # And User clicks "fieldProdukModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User clicks "optProdukModalPORaw" button in "PO" page
    And User clicks "fieldSatuanModalPO" button in "PO" page
    And User clicks "optSatuanModalPO" button in "PO" page
    And User fill "fieldQtyModalPO" with value "<qty>" in "PO" page
    And User fill "fieldHargaSatuanModalPO" with value "<price>" in "PO" page
    And User fill "fieldDiskon1ModalPO" with value "<diskon1>" in "PO" page
    And User clicks "togglePPNModalPO" button in "PO" page
    And User clicks "btnSimpanModalPO" button in "PO" page
    And User scroll to "bottom" of the page
    Then User verified "purchase order cost" for "textValueDPP" is "<textValueDPP>"
    And User verified "purchase order cost" for "textValuePPN" is "<textValuePPN>"
    And User verified "purchase order cost" for "textValueSubTotal" is "<textValueSubTotal>"
    And User fill "fieldDiskonOffFaktur" with value "<diskonOffFaktur>" in "PO" page
    And User verified "purchase order cost" for "textValueGrandTotal" is "<textValueGrandTotal>"
    And User click "navNotaPengajuan"
    And User upload image to "imgUploadNotaPengajuan" in "PO" page
    And User click "btnSimpanCreatePO" button in "PO" page
    Then User able to see Purchase Order berhasil dibuat! message

    Examples:
      | metodePembayaran | notes                  | pic   | productName   | qty  | price | diskon1 | diskonOffFaktur | textValueDPP | textValuePPN | textValueSubTotal | textValueGrandTotal |
      | Tempo            | Catatan Purchase Order | Angga | Automated Raw | 1000 |     0 |       0 |               0 |        0,000 |        0,000 |             0,000 |               0,000 |

  @PO-0038
  Scenario Outline: Memastikan Request payment berhasil untuk PO dengan payment method Tempo
    When User click "navMenuPurchasing" button in "Global" page
    And User click "menuPurchasingPO" button in "PO" page
    And User directed to "Purchase Order" page
    When User click "btnCreateNewPO" button in "PO" page
    And User clicks "fieldJenisPO" button in "PO" page
    And User clicks "optJenisPORM" button in "PO" page
    And User clicks "fieldGudang" button in "PO" page
    And User clicks "optGudangPOAloha" button in "PO" page
    And User clicks "fieldTipePT" button in "PO" page
    And User clicks "optTipePTPO" button in "PO" page
    And User clicks "fieldSupplier" button in "PO" page
    And User clicks "optSupplier" button in "PO" page
    And User clicks "textAreaCatatanPO" button in "PO" page
    And User fill "textAreaCatatanPO" with value "<notes>" in "PO" page
    And User clicks "fieldMetodePembayaran" button in "PO" page
    And User choose metode pembayaran "<metodePembayaran>"
    # And User clicks "optMetodePembayaranTransfer" button in "PO" page
    And User clicks "fieldPengiriman" button in "PO" page
    And User clicks "optPengirimanLocco" button in "PO" page
    And User clicks "fieldPIC" button in "PO" page
    And User fill "fieldPIC" with value "<pic>" in "PO" page
    And User clicks "optPIC" button in "PO" page
    And User clicks "fieldBankSupplier" button in "PO" page
    And User clicks "optBankSupplier" button in "PO" page
    When User clicks "btnTambahProdukPO" button in "PO" page
    And User can wait loading application for "3" seconds
    And User clicks "fieldProdukModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User fill "fieldProdukModalPO" with value "<productName>" in "PO" page
    # And User clicks "fieldProdukModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User clicks "optProdukModalPORaw" button in "PO" page
    And User clicks "fieldSatuanModalPO" button in "PO" page
    And User clicks "optSatuanModalPO" button in "PO" page
    And User fill "fieldQtyModalPO" with value "<qty>" in "PO" page
    And User fill "fieldHargaSatuanModalPO" with value "<price>" in "PO" page
    And User fill "fieldDiskon1ModalPO" with value "<diskon1>" in "PO" page
    And User clicks "togglePPNModalPO" button in "PO" page
    And User clicks "btnSimpanModalPO" button in "PO" page
    And User scroll to "bottom" of the page
    Then User verified "purchase order cost" for "textValueDPP" is "<textValueDPP>"
    And User verified "purchase order cost" for "textValuePPN" is "<textValuePPN>"
    And User verified "purchase order cost" for "textValueSubTotal" is "<textValueSubTotal>"
    And User fill "fieldDiskonOffFaktur" with value "<diskonOffFaktur>" in "PO" page
    And User verified "purchase order cost" for "textValueGrandTotal" is "<textValueGrandTotal>"
    And User click "navNotaPengajuan"
    And User upload image to "imgUploadNotaPengajuan" in "PO" page
    And User click "btnSimpanCreatePO" button in "PO" page
    Then User able to see Purchase Order berhasil dibuat! message
    And User click "btnDetailRow0" button in "PO" page
    And User click "btnSubmitPO" in detail page
    And User click "reqNavNotaPengajuan" button in "PO" page
    # And User fill "fieldDeskripsiPrepayment" with value "Notes Prepayment" in "PO" page
    And User upload image to "imgUploadRPNP" in request payment modal
    And User can wait loading application for "3" seconds
    And User click "btnSimpanRPModal" button in request payment modal
    Then User able to see Data has been updated message verification

    Examples:
      | metodePembayaran | notes                  | pic   | productName   | qty  | price | diskon1 | diskonOffFaktur | textValueDPP      | textValuePPN      | textValueSubTotal  | textValueGrandTotal |
      | Tempo            | Catatan Purchase Order | Angga | Automated Raw | 1000 | 95000 |     500 |             100 | Rp 94.500.000,000 | Rp 10.395.000,000 | Rp 104.895.000,000 | Rp 104.894.900,000  |

  @PO-0039
  Scenario Outline: Memastikan Atur Prouduct berhasil untuk PO status Submit
    When User click "navMenuPurchasing" button in "Global" page
    And User click "menuPurchasingPO" button in "PO" page
    And User directed to "Purchase Order" page
    When User click "btnCreateNewPO" button in "PO" page
    And User clicks "fieldJenisPO" button in "PO" page
    And User clicks "optJenisPORM" button in "PO" page
    And User clicks "fieldGudang" button in "PO" page
    And User clicks "optGudangPOAloha" button in "PO" page
    And User clicks "fieldTipePT" button in "PO" page
    And User clicks "optTipePTPO" button in "PO" page
    And User clicks "fieldSupplier" button in "PO" page
    And User clicks "optSupplier" button in "PO" page
    And User clicks "textAreaCatatanPO" button in "PO" page
    And User fill "textAreaCatatanPO" with value "<notes>" in "PO" page
    And User clicks "fieldMetodePembayaran" button in "PO" page
    And User choose metode pembayaran "<metodePembayaran>"
    # And User clicks "optMetodePembayaranTransfer" button in "PO" page
    And User clicks "fieldPengiriman" button in "PO" page
    And User clicks "optPengirimanLocco" button in "PO" page
    And User clicks "fieldPIC" button in "PO" page
    And User fill "fieldPIC" with value "<pic>" in "PO" page
    And User clicks "optPIC" button in "PO" page
    And User clicks "fieldBankSupplier" button in "PO" page
    And User clicks "optBankSupplier" button in "PO" page
    When User clicks "btnTambahProdukPO" button in "PO" page
    And User can wait loading application for "3" seconds
    And User clicks "fieldProdukModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User fill "fieldProdukModalPO" with value "<productName>" in "PO" page
    # And User clicks "fieldProdukModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User clicks "optProdukModalPORaw" button in "PO" page
    And User clicks "fieldSatuanModalPO" button in "PO" page
    And User clicks "optSatuanModalPO" button in "PO" page
    And User fill "fieldQtyModalPO" with value "<qty>" in "PO" page
    And User fill "fieldHargaSatuanModalPO" with value "<price>" in "PO" page
    And User fill "fieldDiskon1ModalPO" with value "<diskon1>" in "PO" page
    And User clicks "togglePPNModalPO" button in "PO" page
    And User clicks "btnSimpanModalPO" button in "PO" page
    And User scroll to "bottom" of the page
    Then User verified "purchase order cost" for "textValueDPP" is "<textValueDPP>"
    And User verified "purchase order cost" for "textValuePPN" is "<textValuePPN>"
    And User verified "purchase order cost" for "textValueSubTotal" is "<textValueSubTotal>"
    And User fill "fieldDiskonOffFaktur" with value "<diskonOffFaktur>" in "PO" page
    And User verified "purchase order cost" for "textValueGrandTotal" is "<textValueGrandTotal>"
    And User click "navNotaPengajuan"
    And User upload image to "imgUploadNotaPengajuan" in "PO" page
    And User click "btnSimpanCreatePO" button in "PO" page
    Then User able to see Purchase Order berhasil dibuat! message
    And User get kode invoice PO
    And User click "btnDetailRow0" button in "PO" page
    And User click "btnSubmitPO" in detail page
    And User click "reqNavNotaPengajuan" button in "PO" page
    # And User fill "fieldDeskripsiPrepayment" with value "Notes Prepayment" in "PO" page
    # And User upload image to "imgUploadRPNP" in request payment modal
    And User can wait loading application for "3" seconds
    And User click "btnSimpanRPModal" button in request payment modal
    Then User able to see Data has been updated message verification
    And User click "btnAturProdukBonus" in "PO" page
    And User clicks "fieldProdukModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User fill "fieldProdukModalPO" produk bonus with value "<productName2>" in "PO" page
    And User clicks "optProdukModalPORaw1" button in "PO" page
    And User clicks "fieldSatuanModalPOId" button in "PO" page
    And User clicks "optSatuanModalPO" button in "PO" page
    And User fill "fieldQtyModalPO" with value "<qty2>" in "PO" page

    Examples:
      | metodePembayaran | notes                  | pic   | productName   | productName2    | qty  | qty2 | price | diskon1 | diskonOffFaktur | textValueDPP      | textValuePPN      | textValueSubTotal  | textValueGrandTotal |
      | Tempo            | Catatan Purchase Order | Angga | Automated Raw | Automated Raw 2 | 1000 |   50 | 95000 |     500 |             100 | Rp 94.500.000,000 | Rp 10.395.000,000 | Rp 104.895.000,000 | Rp 104.894.900,000  |

  @PO-0040
  Scenario Outline: Memastikan Create PO Raw Material dan Gagal simpan
    When User click "navMenuPurchasing" button in "Global" page
    And User click "menuPurchasingPO" button in "PO" page
    And User directed to "Purchase Order" page
    When User click "btnCreateNewPO" button in "PO" page
    And User clicks "fieldJenisPO" button in "PO" page
    And User clicks "optJenisPORM" button in "PO" page
    And User click "btnSimpanCreatePO" button in "PO" page
    And User can wait loading application for "5" seconds
    Then User able to see Gagal menyimpan PO message verification
    Given User get url to "PO" page

    Examples:
      | a |
      | b |

  @PO-0041
  Scenario Outline: Memastikan Create PO Raw Material dan Gagal simpan ketika hanya input Jenis PO dan gudang
    When User click "navMenuPurchasing" button in "Global" page
    And User click "menuPurchasingPO" button in "PO" page
    And User directed to "Purchase Order" page
    When User click "btnCreateNewPO" button in "PO" page
    And User clicks "fieldJenisPO" button in "PO" page
    And User clicks "optJenisPORM" button in "PO" page
    And User clicks "fieldGudang" button in "PO" page
    And User clicks "optGudangPOAloha" button in "PO" page
    And User click "btnSimpanCreatePO" button in "PO" page
    And User can wait loading application for "5" seconds
    Then User able to see Gagal menyimpan PO message verification
    Given User get url to "PO" page

    Examples:
      | a |
      | b |

  @PO-0042
  Scenario Outline: Memastikan Create PO Raw Material  dan Gagal simpan ketika hanya input Jenis PO, gudang dan Tipe PT
    When User click "navMenuPurchasing" button in "Global" page
    And User click "menuPurchasingPO" button in "PO" page
    And User directed to "Purchase Order" page
    When User click "btnCreateNewPO" button in "PO" page
    And User clicks "fieldJenisPO" button in "PO" page
    And User clicks "optJenisPORM" button in "PO" page
    And User clicks "fieldGudang" button in "PO" page
    And User clicks "optGudangPOAloha" button in "PO" page
    And User click "btnSimpanCreatePO" button in "PO" page
    And User clicks "fieldTipePT" button in "PO" page
    And User clicks "optTipePTPO" button in "PO" page
    And User can wait loading application for "5" seconds
    Then User able to see Gagal menyimpan PO message verification
    Given User get url to "PO" page

    Examples:
      | a |
      | b |

  @PO-0043
  Scenario Outline: Memastikan Create PO Raw Material  dan Gagal simpan ketika hanya input Jenis PO, gudang , Tipe PT, dan Supplier
    When User click "navMenuPurchasing" button in "Global" page
    And User click "menuPurchasingPO" button in "PO" page
    And User directed to "Purchase Order" page
    When User click "btnCreateNewPO" button in "PO" page
    And User clicks "fieldJenisPO" button in "PO" page
    And User clicks "optJenisPORM" button in "PO" page
    And User clicks "fieldGudang" button in "PO" page
    And User clicks "optGudangPOAloha" button in "PO" page
    And User clicks "fieldTipePT" button in "PO" page
    And User clicks "optTipePTPO" button in "PO" page
    And User clicks "fieldSupplier" button in "PO" page
    And User clicks "optSupplier" button in "PO" page
    And User can wait loading application for "5" seconds
    And User click "btnSimpanCreatePO" button in "PO" page
    Then User able to see Gagal menyimpan PO message verification
    Given User get url to "PO" page

    Examples:
      | a |
      | b |

  @PO-0044
  Scenario Outline: Memastikan Create PO Raw Material dan Gagal simpan ketika hanya input Jenis PO, gudang , Tipe PT, Supplier, dan Payment Method
    When User click "navMenuPurchasing" button in "Global" page
    And User click "menuPurchasingPO" button in "PO" page
    And User directed to "Purchase Order" page
    When User click "btnCreateNewPO" button in "PO" page
    And User clicks "fieldJenisPO" button in "PO" page
    And User clicks "optJenisPORM" button in "PO" page
    And User clicks "fieldGudang" button in "PO" page
    And User clicks "optGudangPOAloha" button in "PO" page
    And User clicks "fieldTipePT" button in "PO" page
    And User clicks "optTipePTPO" button in "PO" page
    And User clicks "fieldSupplier" button in "PO" page
    And User clicks "optSupplier" button in "PO" page
    And User clicks "fieldMetodePembayaran" button in "PO" page
    And User choose metode pembayaran "<metodePembayaran>"
    And User can wait loading application for "5" seconds
    And User click "btnSimpanCreatePO" button in "PO" page
    Then User able to see Gagal menyimpan PO message verification
    Given User get url to "PO" page

    Examples:
      | metodePembayaran |
      | Transfer         |

  @PO-0045
  Scenario Outline: Memastikan Create PO Raw Material  dan Gagal simpan ketika hanya input Jenis PO, gudang , Tipe PT, Supplier,  Payment Method dan Pengiriman
    When User click "navMenuPurchasing" button in "Global" page
    And User click "menuPurchasingPO" button in "PO" page
    And User directed to "Purchase Order" page
    When User click "btnCreateNewPO" button in "PO" page
    And User clicks "fieldJenisPO" button in "PO" page
    And User clicks "optJenisPORM" button in "PO" page
    And User clicks "fieldGudang" button in "PO" page
    And User clicks "optGudangPOAloha" button in "PO" page
    And User clicks "fieldTipePT" button in "PO" page
    And User clicks "optTipePTPO" button in "PO" page
    And User clicks "fieldSupplier" button in "PO" page
    And User clicks "optSupplier" button in "PO" page
    And User clicks "fieldMetodePembayaran" button in "PO" page
    And User choose metode pembayaran "<metodePembayaran>"
    And User clicks "fieldPengiriman" button in "PO" page
    And User clicks "optPengirimanLocco" button in "PO" page
    And User can wait loading application for "5" seconds
    And User click "btnSimpanCreatePO" button in "PO" page
    Then User able to see Gagal menyimpan PO message verification
    Given User get url to "PO" page

    Examples:
      | metodePembayaran |
      | Transfer         |

  @PO-0046
  Scenario Outline: Memastikan Create PO Raw Material  dan Gagal simpan ketika hanya input Jenis PO, gudang , Tipe PT, Supplier,  Payment Method, Pengiriman, dan PIC
    When User click "navMenuPurchasing" button in "Global" page
    And User click "menuPurchasingPO" button in "PO" page
    And User directed to "Purchase Order" page
    When User click "btnCreateNewPO" button in "PO" page
    And User clicks "fieldJenisPO" button in "PO" page
    And User clicks "optJenisPORM" button in "PO" page
    And User clicks "fieldGudang" button in "PO" page
    And User clicks "optGudangPOAloha" button in "PO" page
    And User clicks "fieldTipePT" button in "PO" page
    And User clicks "optTipePTPO" button in "PO" page
    And User clicks "fieldSupplier" button in "PO" page
    And User clicks "optSupplier" button in "PO" page
    And User clicks "fieldMetodePembayaran" button in "PO" page
    And User choose metode pembayaran "<metodePembayaran>"
    And User clicks "fieldPengiriman" button in "PO" page
    And User clicks "optPengirimanLocco" button in "PO" page
    And User clicks "fieldPIC" button in "PO" page
    And User fill "fieldPIC" with value "<pic>" in "PO" page
    And User can wait loading application for "5" seconds
    And User click "btnSimpanCreatePO" button in "PO" page
    Then User able to see Gagal menyimpan PO message verification
    Given User get url to "PO" page

    Examples:
      | metodePembayaran | pic   |
      | Transfer         | Angga |

  @PO-0047
  Scenario Outline: Memastikan Create PO Raw Material  dan Gagal simpan ketika hanya input Jenis PO, gudang , Tipe PT, Supplier,  Payment Method (Transfer), Pengiriman, dan PIC
    When User click "navMenuPurchasing" button in "Global" page
    And User click "menuPurchasingPO" button in "PO" page
    And User directed to "Purchase Order" page
    When User click "btnCreateNewPO" button in "PO" page
    And User clicks "fieldJenisPO" button in "PO" page
    And User clicks "optJenisPORM" button in "PO" page
    And User clicks "fieldGudang" button in "PO" page
    And User clicks "optGudangPOAloha" button in "PO" page
    And User clicks "fieldTipePT" button in "PO" page
    And User clicks "optTipePTPO" button in "PO" page
    And User clicks "fieldSupplier" button in "PO" page
    And User clicks "optSupplier" button in "PO" page
    And User clicks "fieldMetodePembayaran" button in "PO" page
    And User choose metode pembayaran "<metodePembayaran>"
    And User clicks "fieldPengiriman" button in "PO" page
    And User clicks "optPengirimanLocco" button in "PO" page
    And User clicks "fieldPIC" button in "PO" page
    And User fill "fieldPIC" with value "<pic>" in "PO" page
    And User can wait loading application for "5" seconds
    And User click "btnSimpanCreatePO" button in "PO" page
    Then User able to see Gagal menyimpan PO message verification
    Given User get url to "PO" page

    Examples:
      | metodePembayaran | pic   |
      | Transfer         | Angga |

  @PO-0048
  Scenario Outline: Memastikan Create PO Raw Material  dan Gagal simpan ketika hanya input Jenis PO, gudang , Tipe PT, Supplier,  Payment Method (tempo), Pengiriman, dan PIC
    When User click "navMenuPurchasing" button in "Global" page
    And User click "menuPurchasingPO" button in "PO" page
    And User directed to "Purchase Order" page
    When User click "btnCreateNewPO" button in "PO" page
    And User clicks "fieldJenisPO" button in "PO" page
    And User clicks "optJenisPORM" button in "PO" page
    And User clicks "fieldGudang" button in "PO" page
    And User clicks "optGudangPOAloha" button in "PO" page
    And User clicks "fieldTipePT" button in "PO" page
    And User clicks "optTipePTPO" button in "PO" page
    And User clicks "fieldSupplier" button in "PO" page
    And User clicks "optSupplier" button in "PO" page
    And User clicks "fieldMetodePembayaran" button in "PO" page
    And User choose metode pembayaran "<metodePembayaran>"
    And User clicks "fieldPengiriman" button in "PO" page
    And User clicks "optPengirimanLocco" button in "PO" page
    And User clicks "fieldPIC" button in "PO" page
    And User fill "fieldPIC" with value "<pic>" in "PO" page
    And User can wait loading application for "5" seconds
    And User click "btnSimpanCreatePO" button in "PO" page
    Then User able to see Gagal menyimpan PO message verification
    Given User get url to "PO" page

    Examples:
      | metodePembayaran | pic   |
      | Tempo            | Angga |

  @PO-0049
  Scenario Outline: Memastikan Create PO Raw Material  dan Gagal simpan ketika hanya input Jenis PO, gudang , Tipe PT, Supplier,  Payment Method , Pengiriman, PIC, Bank Supplier(Transfer)  dan Product Duplikat
    When User click "navMenuPurchasing" button in "Global" page
    And User click "menuPurchasingPO" button in "PO" page
    And User directed to "Purchase Order" page
    When User click "btnCreateNewPO" button in "PO" page
    And User clicks "fieldJenisPO" button in "PO" page
    And User clicks "optJenisPORM" button in "PO" page
    And User clicks "fieldGudang" button in "PO" page
    And User clicks "optGudangPOAloha" button in "PO" page
    And User clicks "fieldTipePT" button in "PO" page
    And User clicks "optTipePTPO" button in "PO" page
    And User clicks "fieldSupplier" button in "PO" page
    And User clicks "optSupplier" button in "PO" page
    And User clicks "textAreaCatatanPO" button in "PO" page
    And User fill "textAreaCatatanPO" with value "<notes>" in "PO" page
    And User clicks "fieldMetodePembayaran" button in "PO" page
    And User choose metode pembayaran "<metodePembayaran>"
    # And User clicks "optMetodePembayaranTransfer" button in "PO" page
    And User clicks "fieldPengiriman" button in "PO" page
    And User clicks "optPengirimanLocco" button in "PO" page
    And User clicks "fieldPIC" button in "PO" page
    And User fill "fieldPIC" with value "<pic>" in "PO" page
    And User clicks "optPIC" button in "PO" page
    And User clicks "fieldBankSupplier" button in "PO" page
    And User clicks "optBankSupplier" button in "PO" page
    When User clicks "btnTambahProdukPO" button in "PO" page
    And User can wait loading application for "3" seconds
    And User clicks "fieldProdukModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User fill "fieldProdukModalPO" with value "<productName>" in "PO" page
    # And User clicks "fieldProdukModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User clicks "optProdukModalPORaw" button in "PO" page
    And User clicks "fieldSatuanModalPO" button in "PO" page
    And User clicks "optSatuanModalPO" button in "PO" page
    And User fill "fieldQtyModalPO" with value "<qty>" in "PO" page
    And User fill "fieldHargaSatuanModalPO" with value "<price>" in "PO" page
    And User fill "fieldDiskon1ModalPO" with value "<diskon1>" in "PO" page
    And User clicks "togglePPNModalPO" button in "PO" page
    And User click "btnTambahProdukModalPO" button in "PO" page
    And User clicks "fieldProdukModalPO2" button in "PO" page
    And User can wait loading application for "5" seconds
    And User clicks "optProdukModalPORaw" button in "PO" page
    And User clicks "fieldSatuanModalPO2" button in "PO" page
    And User clicks "optSatuanModalPO2" button in "PO" page
    And User fill "fieldQtyModalPO2" with value "<qty>" in "PO" page
    And User fill "fieldHargaSatuanModalPO2" with value "<price>" in "PO" page
    And User fill "fieldDiskon1ModalPO2" with value "<diskon1>" in "PO" page
    And User clicks "togglePPNModalPO2" button in "PO" page
    And User clicks "btnSimpanModalPO" button in "PO" page
    Then User able to see Terdapat info yang belum lengkap message verification

    Examples:
      | metodePembayaran | pic   | notes                  | productName   | qty  | price | diskon1 |
      | Transfer         | Angga | Catatan Purchase Order | Automated Raw | 1000 | 95000 |     500 |

  @PO-0050
  Scenario Outline: Memastikan Create PO Raw Material  dan Gagal simpan ketika hanya input Jenis PO, gudang , Tipe PT, Supplier,  Payment Method , Pengiriman, PIC, Bank Supplier(Tempo)  dan Product Duplikat
    When User click "navMenuPurchasing" button in "Global" page
    And User click "menuPurchasingPO" button in "PO" page
    And User directed to "Purchase Order" page
    When User click "btnCreateNewPO" button in "PO" page
    And User clicks "fieldJenisPO" button in "PO" page
    And User clicks "optJenisPORM" button in "PO" page
    And User clicks "fieldGudang" button in "PO" page
    And User clicks "optGudangPOAloha" button in "PO" page
    And User clicks "fieldTipePT" button in "PO" page
    And User clicks "optTipePTPO" button in "PO" page
    And User clicks "fieldSupplier" button in "PO" page
    And User clicks "optSupplier" button in "PO" page
    And User clicks "textAreaCatatanPO" button in "PO" page
    And User fill "textAreaCatatanPO" with value "<notes>" in "PO" page
    And User clicks "fieldMetodePembayaran" button in "PO" page
    And User choose metode pembayaran "<metodePembayaran>"
    # And User clicks "optMetodePembayaranTransfer" button in "PO" page
    And User clicks "fieldPengiriman" button in "PO" page
    And User clicks "optPengirimanLocco" button in "PO" page
    And User clicks "fieldPIC" button in "PO" page
    And User fill "fieldPIC" with value "<pic>" in "PO" page
    And User clicks "optPIC" button in "PO" page
    And User clicks "fieldBankSupplier" button in "PO" page
    And User clicks "optBankSupplier" button in "PO" page
    When User clicks "btnTambahProdukPO" button in "PO" page
    And User can wait loading application for "3" seconds
    And User clicks "fieldProdukModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User fill "fieldProdukModalPO" with value "<productName>" in "PO" page
    # And User clicks "fieldProdukModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User clicks "optProdukModalPORaw" button in "PO" page
    And User clicks "fieldSatuanModalPO" button in "PO" page
    And User clicks "optSatuanModalPO" button in "PO" page
    And User fill "fieldQtyModalPO" with value "<qty>" in "PO" page
    And User fill "fieldHargaSatuanModalPO" with value "<price>" in "PO" page
    And User fill "fieldDiskon1ModalPO" with value "<diskon1>" in "PO" page
    And User clicks "togglePPNModalPO" button in "PO" page
    And User click "btnTambahProdukModalPO" button in "PO" page
    And User clicks "fieldProdukModalPO2" button in "PO" page
    And User can wait loading application for "5" seconds
    And User clicks "optProdukModalPORaw" button in "PO" page
    And User clicks "fieldSatuanModalPO2" button in "PO" page
    And User clicks "optSatuanModalPO2" button in "PO" page
    And User fill "fieldQtyModalPO2" with value "<qty>" in "PO" page
    And User fill "fieldHargaSatuanModalPO2" with value "<price>" in "PO" page
    And User fill "fieldDiskon1ModalPO2" with value "<diskon1>" in "PO" page
    And User clicks "togglePPNModalPO2" button in "PO" page
    And User clicks "btnSimpanModalPO" button in "PO" page
    Then User able to see Terdapat info yang belum lengkap message verification

    Examples:
      | metodePembayaran | pic   | notes                  | productName   | qty  | price | diskon1 |
      | Tempo            | Angga | Catatan Purchase Order | Automated Raw | 1000 | 95000 |     500 |

  @PO-0051
  Scenario Outline: Memastikan Request payment gagal simpan ketika belum upload pengajuan
    When User click "navMenuPurchasing" button in "Global" page
    And User click "menuPurchasingPO" button in "PO" page
    And User directed to "Purchase Order" page
    When User click "btnCreateNewPO" button in "PO" page
    And User clicks "fieldJenisPO" button in "PO" page
    And User clicks "optJenisPORM" button in "PO" page
    And User clicks "fieldGudang" button in "PO" page
    And User clicks "optGudangPOAloha" button in "PO" page
    And User clicks "fieldTipePT" button in "PO" page
    And User clicks "optTipePTPO" button in "PO" page
    And User clicks "fieldSupplier" button in "PO" page
    And User clicks "optSupplier" button in "PO" page
    And User clicks "textAreaCatatanPO" button in "PO" page
    And User fill "textAreaCatatanPO" with value "<notes>" in "PO" page
    And User clicks "fieldMetodePembayaran" button in "PO" page
    And User choose metode pembayaran "<metodePembayaran>"
    # And User clicks "optMetodePembayaranTransfer" button in "PO" page
    And User clicks "fieldPengiriman" button in "PO" page
    And User clicks "optPengirimanLocco" button in "PO" page
    And User clicks "fieldPIC" button in "PO" page
    And User fill "fieldPIC" with value "<pic>" in "PO" page
    And User clicks "optPIC" button in "PO" page
    And User clicks "fieldBankSupplier" button in "PO" page
    And User clicks "optBankSupplier" button in "PO" page
    When User clicks "btnTambahProdukPO" button in "PO" page
    And User can wait loading application for "3" seconds
    And User clicks "fieldProdukModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User fill "fieldProdukModalPO" with value "<productName>" in "PO" page
    # And User clicks "fieldProdukModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User clicks "optProdukModalPORaw" button in "PO" page
    And User clicks "fieldSatuanModalPO" button in "PO" page
    And User clicks "optSatuanModalPO" button in "PO" page
    And User fill "fieldQtyModalPO" with value "<qty>" in "PO" page
    And User fill "fieldHargaSatuanModalPO" with value "<price>" in "PO" page
    And User fill "fieldDiskon1ModalPO" with value "<diskon1>" in "PO" page
    And User clicks "togglePPNModalPO" button in "PO" page
    And User clicks "btnSimpanModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User click "btnSimpanCreatePO" button in "PO" page
    Then User able to see Purchase Order berhasil dibuat! message
    And User can wait loading application for "5" seconds
    And User click "btnDetailRow0" button in "PO" page
    And User click "btnPrepayment" button in "PO" page
    And User click "reqNavNotaPengajuan" button in "PO" page
    # And User fill "fieldDeskripsiPrepayment" with value "Notes Prepayment" in "PO" page
    # And User upload image to "imgUploadRPNP" in request payment modal
    # And User can wait loading application for "3" seconds
    And User click "btnSimpanRPModal" button in request payment modal
    Then User "able" to see "allertNotaPengajuanTempo" in "PO" page

    Examples:
      | metodePembayaran | pic   | notes                  | productName   | qty  | price | diskon1 |
      | Transfer         | Angga | Catatan Purchase Order | Automated Raw | 1000 | 95000 |     500 |

  @PO-0052
  Scenario Outline: Memastikan submit po berhasil simpan ketika belum upload pengajuan
    When User click "navMenuPurchasing" button in "Global" page
    And User click "menuPurchasingPO" button in "PO" page
    And User directed to "Purchase Order" page
    When User click "btnCreateNewPO" button in "PO" page
    And User clicks "fieldJenisPO" button in "PO" page
    And User clicks "optJenisPORM" button in "PO" page
    And User clicks "fieldGudang" button in "PO" page
    And User clicks "optGudangPOAloha" button in "PO" page
    And User clicks "fieldTipePT" button in "PO" page
    And User clicks "optTipePTPO" button in "PO" page
    And User clicks "fieldSupplier" button in "PO" page
    And User clicks "optSupplier" button in "PO" page
    And User clicks "textAreaCatatanPO" button in "PO" page
    And User fill "textAreaCatatanPO" with value "<notes>" in "PO" page
    And User clicks "fieldMetodePembayaran" button in "PO" page
    And User choose metode pembayaran "<metodePembayaran>"
    # And User clicks "optMetodePembayaranTransfer" button in "PO" page
    And User clicks "fieldPengiriman" button in "PO" page
    And User clicks "optPengirimanLocco" button in "PO" page
    And User clicks "fieldPIC" button in "PO" page
    And User fill "fieldPIC" with value "<pic>" in "PO" page
    And User clicks "optPIC" button in "PO" page
    And User clicks "fieldBankSupplier" button in "PO" page
    And User clicks "optBankSupplier" button in "PO" page
    When User clicks "btnTambahProdukPO" button in "PO" page
    And User can wait loading application for "3" seconds
    And User clicks "fieldProdukModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User fill "fieldProdukModalPO" with value "<productName>" in "PO" page
    # And User clicks "fieldProdukModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User clicks "optProdukModalPORaw" button in "PO" page
    And User clicks "fieldSatuanModalPO" button in "PO" page
    And User clicks "optSatuanModalPO" button in "PO" page
    And User fill "fieldQtyModalPO" with value "<qty>" in "PO" page
    And User fill "fieldHargaSatuanModalPO" with value "<price>" in "PO" page
    And User fill "fieldDiskon1ModalPO" with value "<diskon1>" in "PO" page
    And User clicks "togglePPNModalPO" button in "PO" page
    And User clicks "btnSimpanModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User click "btnSimpanCreatePO" button in "PO" page
    Then User able to see Purchase Order berhasil dibuat! message

    Examples:
      | metodePembayaran | pic   | notes                  | productName   | qty  | price | diskon1 |
      | Transfer         | Angga | Catatan Purchase Order | Automated Raw | 1000 | 95000 |     500 |

  @PO-0053
  Scenario Outline: Memastikan gagal import product ketika product dan satuannya sama pada halaman create
    When User click "navMenuPurchasing" button in "Global" page
    And User click "menuPurchasingPO" button in "PO" page
    And User directed to "Purchase Order" page
    When User click "btnCreateNewPO" button in "PO" page
    And User clicks "fieldJenisPO" button in "PO" page
    And User clicks "optJenisPORM" button in "PO" page
    And User clicks "fieldGudang" button in "PO" page
    And User clicks "optGudangPOAloha" button in "PO" page
    And User clicks "fieldTipePT" button in "PO" page
    And User clicks "optTipePTPO" button in "PO" page
    And User clicks "fieldSupplier" button in "PO" page
    And User clicks "optSupplier" button in "PO" page
    And User clicks "textAreaCatatanPO" button in "PO" page
    And User fill "textAreaCatatanPO" with value "<notes>" in "PO" page
    And User clicks "fieldMetodePembayaran" button in "PO" page
    And User choose metode pembayaran "<metodePembayaran>"
    # And User clicks "optMetodePembayaranTransfer" button in "PO" page
    And User clicks "fieldPengiriman" button in "PO" page
    And User clicks "optPengirimanLocco" button in "PO" page
    And User clicks "fieldPIC" button in "PO" page
    And User fill "fieldPIC" with value "<pic>" in "PO" page
    And User clicks "optPIC" button in "PO" page
    And User clicks "fieldBankSupplier" button in "PO" page
    And User clicks "optBankSupplier" button in "PO" page
    When User clicks "btnTambahProdukPO" button in "PO" page
    And User can wait loading application for "3" seconds
    And User clicks "fieldProdukModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User fill "fieldProdukModalPO" with value "<productName>" in "PO" page
    # And User clicks "fieldProdukModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User clicks "optProdukModalPORaw" button in "PO" page
    And User clicks "fieldSatuanModalPO" button in "PO" page
    And User clicks "optSatuanModalPO" button in "PO" page
    And User fill "fieldQtyModalPO" with value "<qty>" in "PO" page
    And User fill "fieldHargaSatuanModalPO" with value "<price>" in "PO" page
    And User fill "fieldDiskon1ModalPO" with value "<diskon1>" in "PO" page
    And User clicks "togglePPNModalPO" button in "PO" page
    And User clicks "btnSimpanModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    When User click "btnImportCSVPO" button in "PO" page
    And User send "template-PO-RAW.csv" in "uploadFilePO" in "PO" page
    And User click "btnSubmitImport" button in "PO" page
    Then User able to see "<alert>" message verification

    Examples:
      | alert                                                            | metodePembayaran | pic   | notes                  | productName   | qty  | price | diskon1 |
      | 3 INVALID_ARGUMENT: Item Automated Raw [Bag] [RAW-0140] Duplikat | Transfer         | Angga | Catatan Purchase Order | Automated Raw | 1000 | 95000 |     500 |

  @PO-0054
  Scenario Outline: Memastikan gagal import product ketika product dengan sku tidak terdaftar atau asal pada halaman create
    When User click "navMenuPurchasing" button in "Global" page
    And User click "menuPurchasingPO" button in "PO" page
    And User directed to "Purchase Order" page
    When User click "btnCreateNewPO" button in "PO" page
    And User clicks "fieldJenisPO" button in "PO" page
    And User clicks "optJenisPORM" button in "PO" page
    And User clicks "fieldGudang" button in "PO" page
    And User clicks "optGudangPOAloha" button in "PO" page
    And User clicks "fieldTipePT" button in "PO" page
    And User clicks "optTipePTPO" button in "PO" page
    And User clicks "fieldSupplier" button in "PO" page
    And User clicks "optSupplier" button in "PO" page
    And User clicks "textAreaCatatanPO" button in "PO" page
    And User fill "textAreaCatatanPO" with value "<notes>" in "PO" page
    And User clicks "fieldMetodePembayaran" button in "PO" page
    And User choose metode pembayaran "<metodePembayaran>"
    # And User clicks "optMetodePembayaranTransfer" button in "PO" page
    And User clicks "fieldPengiriman" button in "PO" page
    And User clicks "optPengirimanLocco" button in "PO" page
    And User clicks "fieldPIC" button in "PO" page
    And User fill "fieldPIC" with value "<pic>" in "PO" page
    And User clicks "optPIC" button in "PO" page
    And User clicks "fieldBankSupplier" button in "PO" page
    And User clicks "optBankSupplier" button in "PO" page
    When User clicks "btnTambahProdukPO" button in "PO" page
    And User can wait loading application for "3" seconds
    And User clicks "fieldProdukModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User fill "fieldProdukModalPO" with value "<productName>" in "PO" page
    # And User clicks "fieldProdukModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User clicks "optProdukModalPORaw" button in "PO" page
    And User clicks "fieldSatuanModalPO" button in "PO" page
    And User clicks "optSatuanModalPO" button in "PO" page
    And User fill "fieldQtyModalPO" with value "<qty>" in "PO" page
    And User fill "fieldHargaSatuanModalPO" with value "<price>" in "PO" page
    And User fill "fieldDiskon1ModalPO" with value "<diskon1>" in "PO" page
    And User clicks "togglePPNModalPO" button in "PO" page
    And User clicks "btnSimpanModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    When User click "btnImportCSVPO" button in "PO" page
    And User send "template-invalid-sku-PO-RAW" in "uploadFilePO" in "PO" page
    And User click "btnSubmitImport" button in "PO" page
    Then User able to see "<alert>" message verification

    Examples:
      | alert                                                                  | metodePembayaran | pic   | notes                  | productName   | qty  | price | diskon1 |
      | 3 INVALID_ARGUMENT: raw material dengan SKU: RAW-01400 tidak ditemukan | Transfer         | Angga | Catatan Purchase Order | Automated Raw | 1000 | 95000 |     500 |

  @PO-0055
  Scenario Outline: Memastikan gagal import product ketika product qty decimal pada halaman create
    When User click "navMenuPurchasing" button in "Global" page
    And User click "menuPurchasingPO" button in "PO" page
    And User directed to "Purchase Order" page
    When User click "btnCreateNewPO" button in "PO" page
    And User clicks "fieldJenisPO" button in "PO" page
    And User clicks "optJenisPORM" button in "PO" page
    And User clicks "fieldGudang" button in "PO" page
    And User clicks "optGudangPOAloha" button in "PO" page
    And User clicks "fieldTipePT" button in "PO" page
    And User clicks "optTipePTPO" button in "PO" page
    And User clicks "fieldSupplier" button in "PO" page
    And User clicks "optSupplier" button in "PO" page
    And User clicks "textAreaCatatanPO" button in "PO" page
    And User fill "textAreaCatatanPO" with value "<notes>" in "PO" page
    And User clicks "fieldMetodePembayaran" button in "PO" page
    And User choose metode pembayaran "<metodePembayaran>"
    # And User clicks "optMetodePembayaranTransfer" button in "PO" page
    And User clicks "fieldPengiriman" button in "PO" page
    And User clicks "optPengirimanLocco" button in "PO" page
    And User clicks "fieldPIC" button in "PO" page
    And User fill "fieldPIC" with value "<pic>" in "PO" page
    And User clicks "optPIC" button in "PO" page
    And User clicks "fieldBankSupplier" button in "PO" page
    And User clicks "optBankSupplier" button in "PO" page
    And User can wait loading application for "5" seconds
    When User click "btnImportCSVPO" button in "PO" page
    And User send "template-invalid-qty decimal-PO-RAW" in "uploadFilePO" in "PO" page
    And User click "btnSubmitImport" button in "PO" page
    Then User able to see "<alert>" message verification

    Examples:
      | alert                                                                          | metodePembayaran | pic   | notes                  | productName   | qty  | price | diskon1 |
      | 3 INVALID_ARGUMENT: Quantity RAW-0140 Automated Raw [Bag] harus bilangan bulat | Transfer         | Angga | Catatan Purchase Order | Automated Raw | 1000 | 95000 |     500 |
