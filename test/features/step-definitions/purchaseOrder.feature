@Regression @Purchasing-Purchase-Order
Feature: Create - Purchase Order

  Background: User login into the system
    Given I send login url
    When I login with credential
    Then I see usernameDisplay

  @PO-0001
  Scenario Outline: Memastikan Create PO Finish Good dan berhasil disimpan dengan status set
    When User click "purchasing" button in "Global" page
    And User click "menuPurchasingPO" button in "PO" page
    And User directed to "Purchase Order" page
    When User click "btnCreateNewPO" button in "PO" page
    And User clicks "fieldJenisPO" button in "PO" page
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
    And User clicks "optProdukModalPO2" button in "PO" page
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
    And User send PO document "Super.png" in "dropzoneNotaPengajuan"
    And User click "btnSimpanCreatePO" button in "PO" page
    Then User able to see "Purchase Order berhasil dibuat!" message verification

    Examples:
      | notes                  | pic   | productName     | qty  | price | diskon1 | diskonOffFaktur | textValueDPP      | textValuePPN      | textValueSubTotal  | textValueGrandTotal |
      | Catatan Purchase Order | Angga | Automated Stock | 1000 | 95000 |     500 |             100 | Rp 94.500.000,000 | Rp 10.395.000,000 | Rp 104.895.000,000 | Rp 104.894.900,000  |
# #   @PO-0002
# #   Scenario Outline: Memastikan bisa import product finish good dihalaman create PO
# #     When User click "navMenuPurchasing" button in "Global" page
# #     And User click "menuPurchasingPO" button in "PO" page
# #     And User directed to "Purchase Order" page
# #     When User click "btnCreateNewPO" button in "PO" page
# #     And User clicks "fieldJenisPO" button in "PO" page
# #     And User clicks "fieldGudang" button in "PO" page
# #     And User clicks "optGudangPOAloha" button in "PO" page
# #     And User clicks "fieldTipePT" button in "PO" page
# #     And User clicks "optTipePTPO" button in "PO" page
# #     And User clicks "fieldSupplier" button in "PO" page
# #     And User clicks "optSupplier" button in "PO" page
# #     And User clicks "textAreaCatatanPO" button in "PO" page
# #     And User fill "textAreaCatatanPO" with value "<notes>" in "PO" page
# #     And User clicks "fieldMetodePembayaran" button in "PO" page
# #     And User clicks "optMetodePembayaranTransfer" button in "PO" page
# #     And User clicks "fieldPengiriman" button in "PO" page
# #     And User clicks "optPengirimanLocco" button in "PO" page
# #     And User clicks "fieldPIC" button in "PO" page
# #     And User fill "fieldPIC" with value "<pic>" in "PO" page
# #     And User clicks "optPIC" button in "PO" page
# #     And User clicks "fieldBankSupplier" button in "PO" page
# #     And User clicks "optBankSupplier" button in "PO" page
# #     When User click "btnImportCSVPO" button in "PO" page
# #     And User send "import_CSV_PO.csv" in "containerUpload" in "PO" page
# #     And User click "btnSubmitImport" button in "PO" page
# #     And User scroll to "bottom" of the page
# #     Then User verified "purchase order cost" for "textValueDPP" is "<textValueDPP>"
# #     And User verified "purchase order cost" for "textValuePPN" is "<textValuePPN>"
# #     And User verified "purchase order cost" for "textValueSubTotal" is "<textValueSubTotal>"
# #     And User fill "fieldDiskonOffFaktur" with value "<diskonOffFaktur>" in "PO" page
# #     And User verified "purchase order cost" for "textValueGrandTotal" is "<textValueGrandTotal>"
# #     And User send PO document "Super.png" in "dropzoneNotaPengajuan"
# #     And User click "btnSimpanCreatePO" button in "PO" page
# #     Then User able to see "Purchase Order berhasil dibuat!" message verification
# #     Examples:
# #       | notes                  | pic   | productName | qty  | price | diskon1 | diskonOffFaktur | textValueDPP | textValuePPN | textValueSubTotal | textValueGrandTotal |
# #       | Catatan Purchase Order | Angga | Tamiya      | 1000 | 95000 | 500     | 100             | 94.500.000   | 10.395.000   | 104.895.000       | 104.894.900         |

  @PO-0003
  Scenario Outline: Memastikan Edit PO Finish Good dan berhasil disimpan dengan status set
    When User click "navMenuPurchasing" button in "Global" page
    And User click "menuPurchasingPO" button in "PO" page
    And User directed to "Purchase Order" page
    And User click "btnFilter" button in "PO" page
    And User click "optModalFilterPeriode" button in "PO" page
    And User click "optModalFilterPeriodeCustom" button in "PO" page
    And User act "7" element "optModalFilterPeriodeCustomStart" in "PO" page
    And User can wait loading application for "3" seconds
    And User fill "optModalFilterPeriodeCustomStart" with value "<date>" in "PO" page
    And User click "btnTerapkanFilter" button in "PO" page
    And User click "btnSearch" button in "PO" page
    And User click "fieldInputSearch" button in "PO" page
    And User fill "fieldInputSearch" with value "<poCode>" in "PO" page
    And User click "btnCari" button in "PO" page
    And User click "btnDetailRow0" button in "PO" page
    And User click "btnEditPO" button in "PO" page
    And User scroll to "bottom" of the page
    And User click "fieldDeskripsiDokumen" button in "PO" page
    And User act "clear" element "fieldDeskripsiDokumen" in "PO" page
    And User fill "fieldDeskripsiDokumen" with value "Dokumen Edited" in "PO" page
    And User click "btnSimpanCreatePO" button in "PO" page
    Then User able to see "Purchase Order berhasil diupdate" message verification
    And User click "btnFilter" button in "PO" page
    And User click "optModalFilterPeriode" button in "PO" page
    And User click "optModalFilterPeriodeCustom" button in "PO" page
    And User act "7" element "optModalFilterPeriodeCustomStart" in "PO" page
    And User can wait loading application for "3" seconds
    And User fill "optModalFilterPeriodeCustomStart" with value "<date>" in "PO" page
    And User click "btnTerapkanFilter" button in "PO" page
    And User click "btnSearch" button in "PO" page
    And User click "fieldInputSearch" button in "PO" page
    And User fill "fieldInputSearch" with value "<poCode>" in "PO" page
    And User click "btnCari" button in "PO" page
    Then User verified "status po" for "textStatusPO" is "<textStatusPO>"

    Examples:
      | poCode     | textStatusPO | date    |
      | POC2311-32 | Set          | 3-11-22 |
# #   @PO-0004
# #   Scenario Outline: Memastikan bisa import product finish good dihalaman  edit PO dengan kondisi product tidak sama dengan sebelumnya
# #     When User click "navMenuPurchasing" button in "Global" page
# #     And User click "menuPurchasingPO" button in "PO" page
# #     And User directed to "Purchase Order" page
# #     And User click "btnSearch" button in "PO" page
# #     And User click "fieldInputSearch" button in "PO" page
# #     And User fill "fieldInputSearch" with value "<poCode>" in "PO" page
# #     And User click "btnCari" button in "PO" page
# #     And User click "btnDetailRow0" button in "PO" page
# #     Then User verified "product name" for "textProductName" is "<productName>"
# #     And User click "btnEditPO" button in "PO" page
# #     And User click "btnEditProdukPO" button in "PO" page
# #     And User click "btnHapusRow1ModalPO" button in "PO" page
# #     And User click "btnSimpanModalPO" button in "PO" page
# #     When User click "btnImportCSVPO" button in "PO" page
# #     And User send "<importType>" in "containerUpload" in "PO" page
# #     And User click "btnSubmitImport" button in "PO" page
# #     And User scroll to "bottom" of the page
# #     Then User verified "purchase order cost" for "textValueDPP" is "<textValueDPP>"
# #     And User verified "purchase order cost" for "textValueDPP" is "<textValueDPP>"
# #     And User verified "purchase order cost" for "textValuePPN" is "<textValuePPN>"
# #     And User verified "purchase order cost" for "textValueSubTotal" is "<textValueSubTotal>"
# #     And User verified "purchase order cost" for "textValueGrandTotal" is "<textValueGrandTotal>"
# #     And User click "btnSimpanCreatePO" button in "PO" page
# #     Then User able to see "Purchase Order berhasil diupdate" message verification
# #     Examples:
# #       | poCode     | importType         | diskonOffFaktur | textValueDPP | textValuePPN | textValueSubTotal | textValueGrandTotal | productName                      |
# #       | POC2311-32 | import_CSV_PO2.csv | 100             | 94.500.000   | 10.395.000   | 104.895.000       | 104.894.900         | Tamiya Broken G (Jangan Dipakai) |
# #       | POC2311-32 | import_CSV_PO.csv  | 100             | 94.500.000   | 10.395.000   | 104.895.000       | 104.894.900         | Tamiya Magnum (Jangan Pakai)     |
# #   

  @PO-0005
  Scenario Outline: Memastikan Cancel PO Finish Good dan berhasil disimpan dengan Cancel
    When User click "navMenuPurchasing" button in "Global" page
    And User click "menuPurchasingPO" button in "PO" page
    And User directed to "Purchase Order" page
    When User click "btnCreateNewPO" button in "PO" page
    And User clicks "fieldJenisPO" button in "PO" page
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
    And User clicks "fieldProdukModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User clicks "optProdukModalPO" button in "PO" page
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
    And User send PO document "Super.png" in "dropzoneNotaPengajuan"
    And User click "btnSimpanCreatePO" button in "PO" page
    Then User able to see "Purchase Order berhasil dibuat!" message verification
    And User click "btnDetailRow0" button in "PO" page
    And User click "btnCancelPO" button in "PO" page
    And User click "btnLanjutkanCancel" button in "PO" page
    Then User able to see "Data Berhasil Dibatalkan" message verification

    Examples:
      | notes                  | pic   | productName     | qty  | price | diskon1 | diskonOffFaktur | textValueDPP      | textValuePPN      | textValueSubTotal  | textValueGrandTotal |
      | Catatan Purchase Order | Angga | Automated Stock | 1000 | 95000 |     500 |             100 | Rp 94.500.000,000 | Rp 10.395.000,000 | Rp 104.895.000,000 | Rp 104.894.900,000  |

  @PO-0006
  Scenario Outline: Memastikan  Request payment berhasil untuk PO dengan payment method cod/tf
    When User click "navMenuPurchasing" button in "Global" page
    And User click "menuPurchasingPO" button in "PO" page
    And User directed to "Purchase Order" page
    When User click "btnCreateNewPO" button in "PO" page
    And User clicks "fieldJenisPO" button in "PO" page
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
    And User clicks "fieldProdukModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User clicks "optProdukModalPO" button in "PO" page
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
    And User send PO document "Super.png" in "dropzoneNotaPengajuan"
    And User click "btnSimpanCreatePO" button in "PO" page
    Then User able to see "Purchase Order berhasil dibuat!" message verification
    And User click "btnDetailRow0" button in "PO" page
    And User click "btnPrepayment" button in "PO" page
    And User click "reqnavNotaPengajuan" button in "PO" page
    And User fill "fieldDeskripsiPrepayment" with value "Notes Prepayment" in "PO" page
    And User send PO document "Super.png" in "dropzonePrepaymentNota"
    And User can wait loading application for "3" seconds
    And User click "btnSimpanPrepayment" button in "PO" page
    Then User able to see "Data has been updated" message verification

    Examples:
      | notes                  | pic   | productName     | qty  | price | diskon1 | diskonOffFaktur | textValueDPP      | textValuePPN      | textValueSubTotal  | textValueGrandTotal |
      | Catatan Purchase Order | Angga | Automated Stock | 1000 | 95000 |     500 |             100 | Rp 94.500.000,000 | Rp 10.395.000,000 | Rp 104.895.000,000 | Rp 104.894.900,000  |

  @PO-0007
  Scenario Outline: Memastikan submit berhasil untuk PO dengan payment method TF/COD/Tempo grandtotal =0
    When User click "navMenuPurchasing" button in "Global" page
    And User click "menuPurchasingPO" button in "PO" page
    And User directed to "Purchase Order" page
    When User click "btnCreateNewPO" button in "PO" page
    And User clicks "fieldJenisPO" button in "PO" page
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
    And User clicks "fieldProdukModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User clicks "optProdukModalPO" button in "PO" page
    And User clicks "fieldSatuanModalPO" button in "PO" page
    And User clicks "optSatuanModalPO" button in "PO" page
    And User fill "fieldQtyModalPO" with value "<qty>" in "PO" page
    And User fill "fieldHargaSatuanModalPO" with value "<price>" in "PO" page
    And User fill "fieldDiskon1ModalPO" with value "<diskon1>" in "PO" page
    And User clicks "togglePPNModalPO" button in "PO" page
    And User clicks "btnSimpanModalPO" button in "PO" page
    Then User verified "status po product" for "textBonusProductPO" is "Bonus"
    And User scroll to "bottom" of the page
    Then User verified "purchase order cost" for "textValueDPP" is "<textValueDPP>"
    And User verified "purchase order cost" for "textValuePPN" is "<textValuePPN>"
    And User verified "purchase order cost" for "textValueSubTotal" is "<textValueSubTotal>"
    And User fill "fieldDiskonOffFaktur" with value "<diskonOffFaktur>" in "PO" page
    And User verified "purchase order cost" for "textValueGrandTotal" is "<textValueGrandTotal>"
    And User send PO document "Super.png" in "dropzoneNotaPengajuan"
    And User click "btnSimpanCreatePO" button in "PO" page
    Then User able to see "Purchase Order berhasil dibuat!" message verification

    Examples:
      | notes                  | pic   | productName    | qty  | price | diskon1 | diskonOffFaktur | textValueDPP | textValuePPN | textValueSubTotal | textValueGrandTotal |
      | Catatan Purchase Order | Angga | Automate Stock | 1000 |     0 |       0 |               0 |            0 |            0 |                 0 |                   0 |

  @PO-0008
  Scenario Outline: Memastikan Request payment berhasil untuk PO dengan payment method Tempo
    When User click "navMenuPurchasing" button in "Global" page
    And User click "menuPurchasingPO" button in "PO" page
    And User directed to "Purchase Order" page
    When User click "btnCreateNewPO" button in "PO" page
    And User clicks "fieldJenisPO" button in "PO" page
    And User clicks "fieldGudang" button in "PO" page
    And User clicks "optGudangPOAloha" button in "PO" page
    And User clicks "fieldTipePT" button in "PO" page
    And User clicks "optTipePTPO" button in "PO" page
    And User clicks "fieldSupplier" button in "PO" page
    And User clicks "optSupplier" button in "PO" page
    And User clicks "textAreaCatatanPO" button in "PO" page
    And User fill "textAreaCatatanPO" with value "<notes>" in "PO" page
    And User clicks "fieldMetodePembayaran" button in "PO" page
    And User clicks "optMetodePembayaranTempo" button in "PO" page
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
    And User clicks "fieldProdukModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User clicks "optProdukModalPO" button in "PO" page
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
    And User send PO document "Super.png" in "dropzoneNotaPengajuan"
    And User click "btnSimpanCreatePO" button in "PO" page
    Then User able to see "Purchase Order berhasil dibuat!" message verification
    And User click "btnDetailRow0" button in "PO" page
    And User click "btnSubmitPO" button in "PO" page
    And User click "reqnavNotaPengajuan" button in "PO" page
    And User fill "fieldDeskripsiPrepayment" with value "Notes Prepayment" in "PO" page
    And User send PO document "Super.png" in "dropzonePrepaymentNota"
    And User can wait loading application for "3" seconds
    And User click "btnSimpanPrepayment" button in "PO" page
    Then User able to see "Data has been updated" message verification

    Examples:
      | notes                  | pic   | productName     | qty  | price | diskon1 | diskonOffFaktur | textValueDPP      | textValuePPN      | textValueSubTotal  | textValueGrandTotal |
      | Catatan Purchase Order | Angga | Automated Stock | 1000 | 95000 |     500 |             100 | Rp 94.500.000,000 | Rp 10.395.000,000 | Rp 104.895.000,000 | Rp 104.894.900,000  |

  @PO-0009
  Scenario Outline: Memastikan Atur Prouduct berhasil untuk PO status Submit
    When User click "navMenuPurchasing" button in "Global" page
    And User click "menuPurchasingPO" button in "PO" page
    And User directed to "Purchase Order" page
    When User click "btnCreateNewPO" button in "PO" page
    And User clicks "fieldJenisPO" button in "PO" page
    And User clicks "fieldGudang" button in "PO" page
    And User clicks "optGudangPOAloha" button in "PO" page
    And User clicks "fieldTipePT" button in "PO" page
    And User clicks "optTipePTPO" button in "PO" page
    And User clicks "fieldSupplier" button in "PO" page
    And User clicks "optSupplier" button in "PO" page
    And User clicks "textAreaCatatanPO" button in "PO" page
    And User fill "textAreaCatatanPO" with value "<notes>" in "PO" page
    And User clicks "fieldMetodePembayaran" button in "PO" page
    And User clicks "optMetodePembayaranTempo" button in "PO" page
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
    And User clicks "fieldProdukModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User clicks "optProdukModalPO" button in "PO" page
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
    And User send PO document "Super.png" in "dropzoneNotaPengajuan"
    And User click "btnSimpanCreatePO" button in "PO" page
    Then User able to see "Purchase Order berhasil dibuat!" message verification
    And User click "btnDetailRow0" button in "PO" page
    And User click "btnSubmitPO" button in "PO" page
    And User click "reqnavNotaPengajuan" button in "PO" page
    And User fill "fieldDeskripsiPrepayment" with value "Notes Prepayment" in "PO" page
    And User send PO document "Super.png" in "dropzonePrepaymentNota"
    And User can wait loading application for "3" seconds
    And User click "btnSimpanPrepayment" button in "PO" page
    Then User able to see "Data has been updated" message verification
    And User click "btnAturProdukBonus" button in "PO" page
    Then User able to see "Atur Produk Bonus" message verification
    And User clicks "fieldProdukModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User fill "fieldProdukModalPO" with value "<productName>" in "PO" page
    And User clicks "fieldProdukModalPO" button in "PO" page
    And User can wait loading application for "5" seconds
    And User clicks "optProdukModalPO" button in "PO" page
    And User clicks "fieldSatuanModalPO" button in "PO" page
    And User clicks "optSatuanModalPO" button in "PO" page
    And User fill "fieldQtyModalPO" with value "<qty2>" in "PO" page
    And User click "btnSimpanPrepayment" button in "PO" page
    Then User verified "product name" for "textProductName2" is "<productName2>"

    Examples:
      | notes                  | pic   | productName     | qty  | price | diskon1 | diskonOffFaktur | textValueDPP      | textValuePPN      | textValueSubTotal  | textValueGrandTotal | qty2 | productName2                     |
      | Catatan Purchase Order | Angga | Automated Stock | 1000 | 95000 |     500 |             100 | Rp 94.500.000,000 | Rp 10.395.000,000 | Rp 104.895.000,000 | Rp 104.894.900,000  |   50 | Tamiya Broken G (Jangan Dipakai) |

  @PO-0010
  Scenario: Memastikan Create PO Finish Good dan Gagal simpan
    When User click "purchasing" button in "Global" page
    And User click "menuPurchasingPO" button in "PO" page
    And User directed to "Purchase Order" page
    When User click "btnCreateNewPO" button in "PO" page
    And User click "btnSimpanCreatePO" button in "PO" page
    Then User able to see "Gagal menyimpan PO" message verification

  @PO-0011
  Scenario: Memastikan Create PO Finish Good dan Gagal simpan ketika hanya input Jenis PO dan gudang
    When User click "purchasing" button in "Global" page
    And User click "menuPurchasingPO" button in "PO" page
    And User directed to "Purchase Order" page
    When User click "btnCreateNewPO" button in "PO" page
    And User clicks "fieldJenisPO" button in "PO" page
    And User clicks "fieldGudang" button in "PO" page
    And User clicks "optGudangPOAloha" button in "PO" page
    And User click "btnSimpanCreatePO" button in "PO" page
    Then User able to see "Gagal menyimpan PO" message verification

  @PO-0012
  Scenario: Memastikan Create PO Finish Good dan Gagal simpan ketika hanya input Jenis PO, gudang dan Tipe PT
    When User click "purchasing" button in "Global" page
    And User click "menuPurchasingPO" button in "PO" page
    And User directed to "Purchase Order" page
    When User click "btnCreateNewPO" button in "PO" page
    And User clicks "fieldJenisPO" button in "PO" page
    And User clicks "fieldGudang" button in "PO" page
    And User clicks "optGudangPOAloha" button in "PO" page
    And User clicks "fieldTipePT" button in "PO" page
    And User clicks "optTipePTPO" button in "PO" page
    And User click "btnSimpanCreatePO" button in "PO" page
    Then User able to see "Gagal menyimpan PO" message verification
@PO-0013
Scenario: Memastikan Create PO Finish Good dan Gagal simpan ketika hanya input Jenis PO, gudang , Tipe PT, dan Supplier
  When User click "purchasing" button in "Global" page
  And User click "menuPurchasingPO" button in "PO" page
  And User directed to "Purchase Order" page
  When User click "btnCreateNewPO" button in "PO" page
  And User clicks "fieldJenisPO" button in "PO" page
  And User clicks "fieldGudang" button in "PO" page
  And User clicks "optGudangPOAloha" button in "PO" page
  And User clicks "fieldTipePT" button in "PO" page
  And User clicks "optTipePTPO" button in "PO" page
  And User clicks "fieldSupplier" button in "PO" page
  And User clicks "optSupplier" button in "PO" page
  And User click "btnSimpanCreatePO" button in "PO" page
  Then User able to see "Gagal menyimpan PO" message verification
  @PO-0014
  Scenario: Memastikan Create PO Finish Good dan Gagal simpan ketika hanya input Jenis PO, gudang , Tipe PT, Supplier,  dan Payment Method
    When User click "purchasing" button in "Global" page
    And User click "menuPurchasingPO" button in "PO" page
    And User directed to "Purchase Order" page
    When User click "btnCreateNewPO" button in "PO" page
    And User clicks "fieldJenisPO" button in "PO" page
    And User clicks "fieldGudang" button in "PO" page
    And User clicks "optGudangPOAloha" button in "PO" page
    And User clicks "fieldTipePT" button in "PO" page
    And User clicks "optTipePTPO" button in "PO" page
    And User clicks "fieldSupplier" button in "PO" page
    And User clicks "optSupplier" button in "PO" page
    And User clicks "fieldMetodePembayaran" button in "PO" page
    And User clicks "optMetodePembayaranTransfer" button in "PO" page
    And User click "btnSimpanCreatePO" button in "PO" page
    Then User able to see "Gagal menyimpan PO" message verification
# #   @PO-0015
# #   Scenario: Memastikan Create PO Finish Good dan Gagal simpan ketika hanya input Jenis PO, gudang , Tipe PT, Supplier,  Payment Method dan Pengiriman
# #     When User click "navMenuPurchasing" button in "Global" page
# #     And User click "menuPurchasingPO" button in "PO" page
# #     And User directed to "Purchase Order" page
# #     When User click "btnCreateNewPO" button in "PO" page
# #     And User clicks "fieldJenisPO" button in "PO" page
# #     And User clicks "fieldGudang" button in "PO" page
# #     And User clicks "optGudangPOAloha" button in "PO" page
# #     And User clicks "fieldTipePT" button in "PO" page
# #     And User clicks "optTipePTPO" button in "PO" page
# #     And User clicks "fieldSupplier" button in "PO" page
# #     And User clicks "optSupplier" button in "PO" page
# #     And User clicks "fieldMetodePembayaran" button in "PO" page
# #     And User clicks "optMetodePembayaranTransfer" button in "PO" page
# #     And User clicks "fieldPengiriman" button in "PO" page
# #     And User clicks "optPengirimanLocco" button in "PO" page
# #     And User click "btnSimpanCreatePO" button in "PO" page
# #     Then User able to see "Gagal menyimpan PO" message verification
# #   @PO-0016
# #   Scenario Outline: Memastikan Create PO Finish Good dan Gagal simpan ketika hanya input Jenis PO, gudang , Tipe PT, Supplier,  Payment Method, Pengiriman, dan PIC
# #     When User click "navMenuPurchasing" button in "Global" page
# #     And User click "menuPurchasingPO" button in "PO" page
# #     And User directed to "Purchase Order" page
# #     When User click "btnCreateNewPO" button in "PO" page
# #     And User clicks "fieldJenisPO" button in "PO" page
# #     And User clicks "fieldGudang" button in "PO" page
# #     And User clicks "optGudangPOAloha" button in "PO" page
# #     And User clicks "fieldTipePT" button in "PO" page
# #     And User clicks "optTipePTPO" button in "PO" page
# #     And User clicks "fieldSupplier" button in "PO" page
# #     And User clicks "optSupplier" button in "PO" page
# #     And User clicks "fieldMetodePembayaran" button in "PO" page
# #     And User clicks "optMetodePembayaranTransfer" button in "PO" page
# #     And User clicks "fieldPengiriman" button in "PO" page
# #     And User clicks "optPengirimanLocco" button in "PO" page
# #     And User clicks "fieldPIC" button in "PO" page
# #     And User fill "fieldPIC" with value "<pic>" in "PO" page
# #     And User clicks "optPIC" button in "PO" page
# #     And User click "btnSimpanCreatePO" button in "PO" page
# #     Then User able to see "Gagal menyimpan PO" message verification
# #     Examples:
# #       | pic   |
# #       | Angga |
# #   @PO-0017
# #   Scenario Outline: Memastikan Create PO Finish Good dan Gagal simpan ketika hanya input Jenis PO, gudang , Tipe PT, Supplier,  Payment Method (tempo/Transfer), Pengiriman, dan PIC
# #     When User click "navMenuPurchasing" button in "Global" page
# #     And User click "menuPurchasingPO" button in "PO" page
# #     And User directed to "Purchase Order" page
# #     When User click "btnCreateNewPO" button in "PO" page
# #     And User clicks "fieldJenisPO" button in "PO" page
# #     And User clicks "fieldGudang" button in "PO" page
# #     And User clicks "optGudangPOAloha" button in "PO" page
# #     And User clicks "fieldTipePT" button in "PO" page
# #     And User clicks "optTipePTPO" button in "PO" page
# #     And User clicks "fieldSupplier" button in "PO" page
# #     And User clicks "optSupplier" button in "PO" page
# #     And User clicks "fieldMetodePembayaran" button in "PO" page
# #     And User clicks "<optPayment>" button in "PO" page
# #     And User clicks "fieldPengiriman" button in "PO" page
# #     And User clicks "optPengirimanLocco" button in "PO" page
# #     And User clicks "fieldPIC" button in "PO" page
# #     And User fill "fieldPIC" with value "<pic>" in "PO" page
# #     And User clicks "optPIC" button in "PO" page
# #     And User click "btnSimpanCreatePO" button in "PO" page
# #     Then User able to see "Gagal menyimpan PO" message verification
# #     Examples:
# #       | pic   | optPayment                  |
# #       | Angga | optMetodePembayaranTransfer |
# #       | Angga | optMetodePembayaranTempo    |
# #   @PO-0018
# #   Scenario Outline: Memastikan Create PO Finish Good dan Gagal simpan ketika hanya input Jenis PO, gudang , Tipe PT, Supplier,  Payment Method , Pengiriman, PIC, Bank Supplier(Tempo/Transfer)  dan Product Duplikat
# #     When User click "navMenuPurchasing" button in "Global" page
# #     And User click "menuPurchasingPO" button in "PO" page
# #     And User directed to "Purchase Order" page
# #     When User click "btnCreateNewPO" button in "PO" page
# #     And User clicks "fieldJenisPO" button in "PO" page
# #     And User clicks "fieldGudang" button in "PO" page
# #     And User clicks "optGudangPOAloha" button in "PO" page
# #     And User clicks "fieldTipePT" button in "PO" page
# #     And User clicks "optTipePTPO" button in "PO" page
# #     And User clicks "fieldSupplier" button in "PO" page
# #     And User clicks "optSupplier" button in "PO" page
# #     And User clicks "fieldMetodePembayaran" button in "PO" page
# #     And User clicks "optMetodePembayaranTransfer" button in "PO" page
# #     And User clicks "fieldPengiriman" button in "PO" page
# #     And User clicks "optPengirimanLocco" button in "PO" page
# #     And User clicks "fieldPIC" button in "PO" page
# #     And User fill "fieldPIC" with value "<pic>" in "PO" page
# #     And User clicks "optPIC" button in "PO" page
# #     And User clicks "fieldBankSupplier" button in "PO" page
# #     And User clicks "optBankSupplier" button in "PO" page
# #     When User clicks "btnTambahProdukPO" button in "PO" page
# #     And User can wait loading application for "3" seconds
# #     And User clicks "fieldProdukModalPO" button in "PO" page
# #     And User can wait loading application for "5" seconds
# #     And User fill "fieldProdukModalPO" with value "<productName>" in "PO" page
# #     And User clicks "fieldProdukModalPO" button in "PO" page
# #     And User can wait loading application for "5" seconds
# #     And User clicks "optProdukModalPO" button in "PO" page
# #     And User clicks "fieldSatuanModalPO" button in "PO" page
# #     And User clicks "optSatuanModalPO" button in "PO" page
# #     And User fill "fieldQtyModalPO" with value "<qty>" in "PO" page
# #     And User fill "fieldHargaSatuanModalPO" with value "<price>" in "PO" page
# #     And User fill "fieldDiskon1ModalPO" with value "<diskon1>" in "PO" page
# #     And User clicks "togglePPNModalPO" button in "PO" page
# #     And User clicks "btnSimpanModalPO" button in "PO" page
# #     When User clicks "btnEditProdukPO" button in "PO" page
# #     And User can wait loading application for "3" seconds
# #     And User click "btnTambahProdukModalPO" button in "PO" page
# #     And User clicks "fieldProdukModalPO2" button in "PO" page
# #     And User can wait loading application for "5" seconds
# #     And User fill "fieldProdukModalPO2" with value "<productName>" in "PO" page
# #     And User clicks "fieldProdukModalPO2" button in "PO" page
# #     And User can wait loading application for "5" seconds
# #     And User clicks "optProdukModalPO" button in "PO" page
# #     And User clicks "fieldSatuanModalPO2" button in "PO" page
# #     And User clicks "optSatuanModalPO" button in "PO" page
# #     And User fill "fieldQtyModalPO2" with value "<qty>" in "PO" page
# #     And User fill "fieldHargaSatuanModalPO2" with value "<price>" in "PO" page
# #     And User fill "fieldDiskon1ModalPO2" with value "<diskon1>" in "PO" page
# #     And User clicks "togglePPNModalPO2" button in "PO" page
# #     And User clicks "btnSimpanModalPO" button in "PO" page
# #     Then User able to see "Terdapat info yang belum lengkap" message verification
# #     Examples:
# #       | notes                  | pic   | productName | qty  | price | diskon1 |
# #       | Catatan Purchase Order | Angga | Tamiya      | 1000 | 95000 | 500     |
# #   @PO-0019
# #   Scenario Outline: Memastikan Request payment gagal simpan ketika belum upload pengajuan
# #     When User click "navMenuPurchasing" button in "Global" page
# #     And User click "menuPurchasingPO" button in "PO" page
# #     And User directed to "Purchase Order" page
# #     When User click "btnCreateNewPO" button in "PO" page
# #     And User clicks "fieldJenisPO" button in "PO" page
# #     And User clicks "fieldGudang" button in "PO" page
# #     And User clicks "optGudangPOAloha" button in "PO" page
# #     And User clicks "fieldTipePT" button in "PO" page
# #     And User clicks "optTipePTPO" button in "PO" page
# #     And User clicks "fieldSupplier" button in "PO" page
# #     And User clicks "optSupplier" button in "PO" page
# #     And User clicks "textAreaCatatanPO" button in "PO" page
# #     And User fill "textAreaCatatanPO" with value "<notes>" in "PO" page
# #     And User clicks "fieldMetodePembayaran" button in "PO" page
# #     And User clicks "optMetodePembayaranTransfer" button in "PO" page
# #     And User clicks "fieldPengiriman" button in "PO" page
# #     And User clicks "optPengirimanLocco" button in "PO" page
# #     And User clicks "fieldPIC" button in "PO" page
# #     And User fill "fieldPIC" with value "<pic>" in "PO" page
# #     And User clicks "optPIC" button in "PO" page
# #     And User clicks "fieldBankSupplier" button in "PO" page
# #     And User clicks "optBankSupplier" button in "PO" page
# #     When User clicks "btnTambahProdukPO" button in "PO" page
# #     And User can wait loading application for "3" seconds
# #     And User clicks "fieldProdukModalPO" button in "PO" page
# #     And User can wait loading application for "5" seconds
# #     And User fill "fieldProdukModalPO" with value "<productName>" in "PO" page
# #     And User clicks "fieldProdukModalPO" button in "PO" page
# #     And User can wait loading application for "5" seconds
# #     And User clicks "optProdukModalPO" button in "PO" page
# #     And User clicks "fieldSatuanModalPO" button in "PO" page
# #     And User clicks "optSatuanModalPO" button in "PO" page
# #     And User fill "fieldQtyModalPO" with value "<qty>" in "PO" page
# #     And User fill "fieldHargaSatuanModalPO" with value "<price>" in "PO" page
# #     And User fill "fieldDiskon1ModalPO" with value "<diskon1>" in "PO" page
# #     And User clicks "togglePPNModalPO" button in "PO" page
# #     And User clicks "btnSimpanModalPO" button in "PO" page
# #     And User scroll to "bottom" of the page
# #     Then User verified "purchase order cost" for "textValueDPP" is "<textValueDPP>"
# #     And User verified "purchase order cost" for "textValuePPN" is "<textValuePPN>"
# #     And User verified "purchase order cost" for "textValueSubTotal" is "<textValueSubTotal>"
# #     And User fill "fieldDiskonOffFaktur" with value "<diskonOffFaktur>" in "PO" page
# #     And User verified "purchase order cost" for "textValueGrandTotal" is "<textValueGrandTotal>"
# #     And User click "btnSimpanCreatePO" button in "PO" page
# #     Then User able to see "Purchase Order berhasil dibuat!" message verification
# #     And User click "btnDetailRow0" button in "PO" page
# #     And User click "btnPrepayment" button in "PO" page
# #     And User click "reqnavNotaPengajuan" button in "PO" page
# #     And User can wait loading application for "3" seconds
# #     And User click "btnSimpanPrepayment" button in "PO" page
# #     Then User "able" to see "alertPengajuan" in "PO" page
# #     Examples:
# #       | notes                  | pic   | productName | qty  | price | diskon1 | diskonOffFaktur | textValueDPP | textValuePPN | textValueSubTotal | textValueGrandTotal |
# #       | Catatan Purchase Order | Angga | Tamiya      | 1000 | 95000 | 500     | 100             | 94.500.000   | 10.395.000   | 104.895.000       | 104.894.900         |
# #   @PO-0020
# #   Scenario Outline: Memastikan submit po berhasil simpan ketika belum upload pengajuan
# #     When User click "navMenuPurchasing" button in "Global" page
# #     And User click "menuPurchasingPO" button in "PO" page
# #     And User directed to "Purchase Order" page
# #     When User click "btnCreateNewPO" button in "PO" page
# #     And User clicks "fieldJenisPO" button in "PO" page
# #     And User clicks "fieldGudang" button in "PO" page
# #     And User clicks "optGudangPOAloha" button in "PO" page
# #     And User clicks "fieldTipePT" button in "PO" page
# #     And User clicks "optTipePTPO" button in "PO" page
# #     And User clicks "fieldSupplier" button in "PO" page
# #     And User clicks "optSupplier" button in "PO" page
# #     And User clicks "textAreaCatatanPO" button in "PO" page
# #     And User fill "textAreaCatatanPO" with value "<notes>" in "PO" page
# #     And User clicks "fieldMetodePembayaran" button in "PO" page
# #     And User clicks "optMetodePembayaranTransfer" button in "PO" page
# #     And User clicks "fieldPengiriman" button in "PO" page
# #     And User clicks "optPengirimanLocco" button in "PO" page
# #     And User clicks "fieldPIC" button in "PO" page
# #     And User fill "fieldPIC" with value "<pic>" in "PO" page
# #     And User clicks "optPIC" button in "PO" page
# #     And User clicks "fieldBankSupplier" button in "PO" page
# #     And User clicks "optBankSupplier" button in "PO" page
# #     When User clicks "btnTambahProdukPO" button in "PO" page
# #     And User can wait loading application for "3" seconds
# #     And User clicks "fieldProdukModalPO" button in "PO" page
# #     And User can wait loading application for "5" seconds
# #     And User fill "fieldProdukModalPO" with value "<productName>" in "PO" page
# #     And User clicks "fieldProdukModalPO" button in "PO" page
# #     And User can wait loading application for "5" seconds
# #     And User clicks "optProdukModalPO" button in "PO" page
# #     And User clicks "fieldSatuanModalPO" button in "PO" page
# #     And User clicks "optSatuanModalPO" button in "PO" page
# #     And User fill "fieldQtyModalPO" with value "<qty>" in "PO" page
# #     And User fill "fieldHargaSatuanModalPO" with value "<price>" in "PO" page
# #     And User fill "fieldDiskon1ModalPO" with value "<diskon1>" in "PO" page
# #     And User clicks "togglePPNModalPO" button in "PO" page
# #     And User clicks "btnSimpanModalPO" button in "PO" page
# #     And User scroll to "bottom" of the page
# #     Then User verified "purchase order cost" for "textValueDPP" is "<textValueDPP>"
# #     And User verified "purchase order cost" for "textValuePPN" is "<textValuePPN>"
# #     And User verified "purchase order cost" for "textValueSubTotal" is "<textValueSubTotal>"
# #     And User fill "fieldDiskonOffFaktur" with value "<diskonOffFaktur>" in "PO" page
# #     And User verified "purchase order cost" for "textValueGrandTotal" is "<textValueGrandTotal>"
# #     And User click "btnSimpanCreatePO" button in "PO" page
# #     Then User able to see "Purchase Order berhasil dibuat!" message verification
# #     Examples:
# #       | notes                  | pic   | productName | qty  | price | diskon1 | diskonOffFaktur | textValueDPP | textValuePPN | textValueSubTotal | textValueGrandTotal |
# #       | Catatan Purchase Order | Angga | Tamiya      | 1000 | 95000 | 500     | 100             | 94.500.000   | 10.395.000   | 104.895.000       | 104.894.900         |
# #   @PO-0021
# #   Scenario Outline: memastikan gagal import product ketika product dan satuannya sama pada halaman create
# #     When User click "navMenuPurchasing" button in "Global" page
# #     And User click "menuPurchasingPO" button in "PO" page
# #     And User directed to "Purchase Order" page
# #     When User click "btnCreateNewPO" button in "PO" page
# #     And User clicks "fieldJenisPO" button in "PO" page
# #     And User clicks "fieldGudang" button in "PO" page
# #     And User clicks "optGudangPOAloha" button in "PO" page
# #     And User clicks "fieldTipePT" button in "PO" page
# #     And User clicks "optTipePTPO" button in "PO" page
# #     And User clicks "fieldSupplier" button in "PO" page
# #     And User clicks "optSupplier" button in "PO" page
# #     And User clicks "textAreaCatatanPO" button in "PO" page
# #     And User fill "textAreaCatatanPO" with value "<notes>" in "PO" page
# #     And User clicks "fieldMetodePembayaran" button in "PO" page
# #     And User clicks "optMetodePembayaranTransfer" button in "PO" page
# #     And User clicks "fieldPengiriman" button in "PO" page
# #     And User clicks "optPengirimanLocco" button in "PO" page
# #     And User clicks "fieldPIC" button in "PO" page
# #     And User fill "fieldPIC" with value "<pic>" in "PO" page
# #     And User clicks "optPIC" button in "PO" page
# #     And User clicks "fieldBankSupplier" button in "PO" page
# #     And User clicks "optBankSupplier" button in "PO" page
# #     When User click "btnImportCSVPO" button in "PO" page
# #     And User send "importPODuplicate.csv" in "containerUpload" in "PO" page
# #     And User click "btnSubmitImport" button in "PO" page
# #     Then User able to see "<alert>" message verification
# #     Examples:
# #       | notes                  | pic   | productName | qty  | price | diskon1 | diskonOffFaktur | textValueDPP | textValuePPN | textValueSubTotal | textValueGrandTotal | alert                                                                           |
# #       | Catatan Purchase Order | Angga | Tamiya      | 1000 | 95000 | 500     | 100             | 94.500.000   | 10.395.000   | 104.895.000       | 104.894.900         | 3 INVALID_ARGUMENT: Item Tamiya Magnum (Jangan Pakai) [Box] [OWL-0009] Duplikat |
# #   @PO-0022
# #   Scenario Outline: memastikan gagal import product ketika product denngan sku tidak terdaftar atau asal pada halaman create
# #     When User click "navMenuPurchasing" button in "Global" page
# #     And User click "menuPurchasingPO" button in "PO" page
# #     And User directed to "Purchase Order" page
# #     When User click "btnCreateNewPO" button in "PO" page
# #     And User clicks "fieldJenisPO" button in "PO" page
# #     And User clicks "fieldGudang" button in "PO" page
# #     And User clicks "optGudangPOAloha" button in "PO" page
# #     And User clicks "fieldTipePT" button in "PO" page
# #     And User clicks "optTipePTPO" button in "PO" page
# #     And User clicks "fieldSupplier" button in "PO" page
# #     And User clicks "optSupplier" button in "PO" page
# #     And User clicks "textAreaCatatanPO" button in "PO" page
# #     And User fill "textAreaCatatanPO" with value "<notes>" in "PO" page
# #     And User clicks "fieldMetodePembayaran" button in "PO" page
# #     And User clicks "optMetodePembayaranTransfer" button in "PO" page
# #     And User clicks "fieldPengiriman" button in "PO" page
# #     And User clicks "optPengirimanLocco" button in "PO" page
# #     And User clicks "fieldPIC" button in "PO" page
# #     And User fill "fieldPIC" with value "<pic>" in "PO" page
# #     And User clicks "optPIC" button in "PO" page
# #     And User clicks "fieldBankSupplier" button in "PO" page
# #     And User clicks "optBankSupplier" button in "PO" page
# #     When User click "btnImportCSVPO" button in "PO" page
# #     And User send "importPOUnregSKU.csv" in "containerUpload" in "PO" page
# #     And User click "btnSubmitImport" button in "PO" page
# #     Then User able to see "<alert>" message verification
# #     Examples:
# #       | notes                  | pic   | alert                                                                       |
# #       | Catatan Purchase Order | Angga | 3 INVALID_ARGUMENT: finished good dengan SKU: OWL-000987123 tidak ditemukan |
# #   @PO-0023
# #   Scenario Outline: memastikan gagal import product ketika product satuannya tidak terdaftar atau asal pada halaman create
# #     When User click "navMenuPurchasing" button in "Global" page
# #     And User click "menuPurchasingPO" button in "PO" page
# #     And User directed to "Purchase Order" page
# #     When User click "btnCreateNewPO" button in "PO" page
# #     And User clicks "fieldJenisPO" button in "PO" page
# #     And User clicks "fieldGudang" button in "PO" page
# #     And User clicks "optGudangPOAloha" button in "PO" page
# #     And User clicks "fieldTipePT" button in "PO" page
# #     And User clicks "optTipePTPO" button in "PO" page
# #     And User clicks "fieldSupplier" button in "PO" page
# #     And User clicks "optSupplier" button in "PO" page
# #     And User clicks "textAreaCatatanPO" button in "PO" page
# #     And User fill "textAreaCatatanPO" with value "<notes>" in "PO" page
# #     And User clicks "fieldMetodePembayaran" button in "PO" page
# #     And User clicks "optMetodePembayaranTransfer" button in "PO" page
# #     And User clicks "fieldPengiriman" button in "PO" page
# #     And User clicks "optPengirimanLocco" button in "PO" page
# #     And User clicks "fieldPIC" button in "PO" page
# #     And User fill "fieldPIC" with value "<pic>" in "PO" page
# #     And User clicks "optPIC" button in "PO" page
# #     And User clicks "fieldBankSupplier" button in "PO" page
# #     And User clicks "optBankSupplier" button in "PO" page
# #     When User click "btnImportCSVPO" button in "PO" page
# #     And User send "importPOInvalidSatuan.csv" in "containerUpload" in "PO" page
# #     And User click "btnSubmitImport" button in "PO" page
# #     Then User able to see "<alert>" message verification
# #     Examples:
# #       | notes                  | pic   | alert                                                                  |
# #       | Catatan Purchase Order | Angga | 3 INVALID_ARGUMENT: finished good dengan SKU: OWL-0009 tidak ditemukan |
# #   @PO-0024
# #   Scenario Outline: memastikan gagal import product ketika product qty decimal pada halaman create
# #     When User click "navMenuPurchasing" button in "Global" page
# #     And User click "menuPurchasingPO" button in "PO" page
# #     And User directed to "Purchase Order" page
# #     When User click "btnCreateNewPO" button in "PO" page
# #     And User clicks "fieldJenisPO" button in "PO" page
# #     And User clicks "fieldGudang" button in "PO" page
# #     And User clicks "optGudangPOAloha" button in "PO" page
# #     And User clicks "fieldTipePT" button in "PO" page
# #     And User clicks "optTipePTPO" button in "PO" page
# #     And User clicks "fieldSupplier" button in "PO" page
# #     And User clicks "optSupplier" button in "PO" page
# #     And User clicks "textAreaCatatanPO" button in "PO" page
# #     And User fill "textAreaCatatanPO" with value "<notes>" in "PO" page
# #     And User clicks "fieldMetodePembayaran" button in "PO" page
# #     And User clicks "optMetodePembayaranTransfer" button in "PO" page
# #     And User clicks "fieldPengiriman" button in "PO" page
# #     And User clicks "optPengirimanLocco" button in "PO" page
# #     And User clicks "fieldPIC" button in "PO" page
# #     And User fill "fieldPIC" with value "<pic>" in "PO" page
# #     And User clicks "optPIC" button in "PO" page
# #     And User clicks "fieldBankSupplier" button in "PO" page
# #     And User clicks "optBankSupplier" button in "PO" page
# #     When User click "btnImportCSVPO" button in "PO" page
# #     And User send "importPOInvalidQty.csv" in "containerUpload" in "PO" page
# #     And User click "btnSubmitImport" button in "PO" page
# #     Then User able to see "<alert>" message verification
# #     Examples:
# #       | notes                  | pic   | alert                                                                                                                                                           |
# #       | Catatan Purchase Order | Angga | 3 INVALID_ARGUMENT: Jumlah Item OWL-0009 Tamiya Magnum (Jangan Pakai) [Box] minimal 1,Quantity OWL-0009 Tamiya Magnum (Jangan Pakai) [Box] harus bilangan bulat |
# #   #Duplicate Scenario:
# #   @PO-0025
# #   Scenario Outline: memastikan gagal import product ketika product dan satuannya sama pada halaman create
# #     When User click "navMenuPurchasing" button in "Global" page
# #     And User click "menuPurchasingPO" button in "PO" page
# #     And User directed to "Purchase Order" page
# #     When User click "btnCreateNewPO" button in "PO" page
# #     And User clicks "fieldJenisPO" button in "PO" page
# #     And User clicks "fieldGudang" button in "PO" page
# #     And User clicks "optGudangPOAloha" button in "PO" page
# #     And User clicks "fieldTipePT" button in "PO" page
# #     And User clicks "optTipePTPO" button in "PO" page
# #     And User clicks "fieldSupplier" button in "PO" page
# #     And User clicks "optSupplier" button in "PO" page
# #     And User clicks "textAreaCatatanPO" button in "PO" page
# #     And User fill "textAreaCatatanPO" with value "<notes>" in "PO" page
# #     And User clicks "fieldMetodePembayaran" button in "PO" page
# #     And User clicks "optMetodePembayaranTransfer" button in "PO" page
# #     And User clicks "fieldPengiriman" button in "PO" page
# #     And User clicks "optPengirimanLocco" button in "PO" page
# #     And User clicks "fieldPIC" button in "PO" page
# #     And User fill "fieldPIC" with value "<pic>" in "PO" page
# #     And User clicks "optPIC" button in "PO" page
# #     And User clicks "fieldBankSupplier" button in "PO" page
# #     And User clicks "optBankSupplier" button in "PO" page
# #     When User click "btnImportCSVPO" button in "PO" page
# #     And User send "importPODuplicate.csv" in "containerUpload" in "PO" page
# #     And User click "btnSubmitImport" button in "PO" page
# #     Then User able to see "<alert>" message verification
# #     Examples:
# #       | notes                  | pic   | alert                                                                           |
# #       | Catatan Purchase Order | Angga | 3 INVALID_ARGUMENT: Item Tamiya Magnum (Jangan Pakai) [Box] [OWL-0009] Duplikat |
# #   #Duplicate Scenario:
# #   @PO-0026
# #   Scenario Outline: memastikan gagal import product ketika product denngan sku tidak terdaftar atau asal pada halaman create
# #     When User click "navMenuPurchasing" button in "Global" page
# #     And User click "menuPurchasingPO" button in "PO" page
# #     And User directed to "Purchase Order" page
# #     When User click "btnCreateNewPO" button in "PO" page
# #     And User clicks "fieldJenisPO" button in "PO" page
# #     And User clicks "fieldGudang" button in "PO" page
# #     And User clicks "optGudangPOAloha" button in "PO" page
# #     And User clicks "fieldTipePT" button in "PO" page
# #     And User clicks "optTipePTPO" button in "PO" page
# #     And User clicks "fieldSupplier" button in "PO" page
# #     And User clicks "optSupplier" button in "PO" page
# #     And User clicks "textAreaCatatanPO" button in "PO" page
# #     And User fill "textAreaCatatanPO" with value "<notes>" in "PO" page
# #     And User clicks "fieldMetodePembayaran" button in "PO" page
# #     And User clicks "optMetodePembayaranTransfer" button in "PO" page
# #     And User clicks "fieldPengiriman" button in "PO" page
# #     And User clicks "optPengirimanLocco" button in "PO" page
# #     And User clicks "fieldPIC" button in "PO" page
# #     And User fill "fieldPIC" with value "<pic>" in "PO" page
# #     And User clicks "optPIC" button in "PO" page
# #     And User clicks "fieldBankSupplier" button in "PO" page
# #     And User clicks "optBankSupplier" button in "PO" page
# #     When User click "btnImportCSVPO" button in "PO" page
# #     And User send "importPOUnregSKU.csv" in "containerUpload" in "PO" page
# #     And User click "btnSubmitImport" button in "PO" page
# #     Then User able to see "<alert>" message verification
# #     Examples:
# #       | notes                  | pic   | alert                                                                       |
# #       | Catatan Purchase Order | Angga | 3 INVALID_ARGUMENT: finished good dengan SKU: OWL-000987123 tidak ditemukan |
# #   @PO-0027
# #   Scenario Outline: Memastikan gagal import ketika jenis PO berbeda dengan tipe product yang di import
# #     When User click "navMenuPurchasing" button in "Global" page
# #     And User click "menuPurchasingPO" button in "PO" page
# #     And User directed to "Purchase Order" page
# #     When User click "btnCreateNewPO" button in "PO" page
# #     And User clicks "fieldJenisPO" button in "PO" page
# #     And User clicks "fieldGudang" button in "PO" page
# #     And User clicks "optGudangPOAloha" button in "PO" page
# #     And User clicks "fieldTipePT" button in "PO" page
# #     And User clicks "optTipePTPO" button in "PO" page
# #     And User clicks "fieldSupplier" button in "PO" page
# #     And User clicks "optSupplier" button in "PO" page
# #     And User clicks "textAreaCatatanPO" button in "PO" page
# #     And User fill "textAreaCatatanPO" with value "<notes>" in "PO" page
# #     And User clicks "fieldMetodePembayaran" button in "PO" page
# #     And User clicks "optMetodePembayaranTransfer" button in "PO" page
# #     And User clicks "fieldPengiriman" button in "PO" page
# #     And User clicks "optPengirimanLocco" button in "PO" page
# #     And User clicks "fieldPIC" button in "PO" page
# #     And User fill "fieldPIC" with value "<pic>" in "PO" page
# #     And User clicks "optPIC" button in "PO" page
# #     And User clicks "fieldBankSupplier" button in "PO" page
# #     And User clicks "optBankSupplier" button in "PO" page
# #     When User click "btnImportCSVPO" button in "PO" page
# #     And User send "importPORaw.csv" in "containerUpload" in "PO" page
# #     And User click "btnSubmitImport" button in "PO" page
# #     Then User able to see "<alert>" message verification
# #     Examples:
# #       | notes                  | pic   | alert                                                                                                               |
# #       | Catatan Purchase Order | Angga | 3 INVALID_ARGUMENT: finished good dengan SKU: RAW-0065 tidak ditemukan,Quantity raw-0065 [bag] harus bilangan bulat |
