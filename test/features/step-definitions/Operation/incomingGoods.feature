@Regression 
@Purchasing-Incoming-Goods
Feature: Create - Incoming Goods

  Background: User login into the system
    Given I send login url
    When I login with credential
    Then I see usernameDisplay

  @OPS-155
  Scenario Outline: Memastikan ketika sudah create PO "Finished Goods" maka akan tampil di list incoming goods
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
    And User click "btnSimpanCreatePO" button in "PO" page
    Then User able to see "Purchase Order berhasil dibuat!" message verification
    And User can wait loading application for "3" seconds
    And User get "kodePORow0" from purchase order list
    # And User click "btnDetailRow0" button in "PO" page
    # And User click "btnPrepayment" button in "PO" page
    # And User click "reqnavNotaPengajuan" button in "PO" page
    # And User fill "fieldDeskripsiPrepayment" with value "Notes Prepayment" in "PO" page
    # And User can wait loading application for "3" seconds
    # And User send PO document "Super.png" in "dropzonePrepaymentNota"
    # And User can wait loading application for "3" seconds
    # And User click "btnSimpanPrepayment" button in "PO" page
    # Then User able to see "Data has been updated" message verification
    When User click "navMenuFinances" button in "Global" page
    And User click "menuPaymentRequest" button in "Finance" page
    And User directed to "List semua payment request yang perlu disetujui" page
    And User click "btnSearch" button in "Finance" page
    And User clicks "fieldInputSearch" button in "Finance" page
    And User fill "fieldInputSearch" get value "keywordPOCode" in "Finance" page
    And User clicks "btnCari" button in "Finance" page
    And User clicks "btnDetailRow0" button in "Finance" page
    And User can wait loading application for "5" seconds
    And User clicks "btnSetujuiRequest" button in "Finance" page
    Then User able to see request payment confirmation "kodePOModal" is match
    And User able to see request payment confirmation "poCodeModal" is match
    #Then User able to see "Payment request status has been successfully updated" message verification
    And User can wait loading application for "3" seconds
    And User clicks "btnApprovePayment" button in "Finance" page
    And User clicks "fieldPaymentBy" button in "Finance" page
    And User clicks "optPaymentBy" button in "Finance" page
    And User send PO document "Super.png" in "imgUpload"
    And User clicks "btnSelesaikan" button in "Finance" page
    And User can wait loading application for "3" seconds
    When User click "navMenuFinances" button in "Global" page
    And User click "menuPaymentRequest" button in "Finance" page
    And User click "btnSearch" button in "Finance" page
    And User clicks "fieldInputSearch" button in "Finance" page
    And User fill "fieldInputSearch" get value "keywordPOCode" in "Finance" page
    And User clicks "btnCari" button in "Finance" page
    Then User verified "status finance po" for "textStatusPaymentRequest" is "Dibayar"
    And User can wait loading application for "3" seconds
    When User click "navMenuLogistic" button in "Global" page
    And User click "menuLogisticIncomingGoods" button in "Incoming" page
    And User can wait loading application for "2" seconds
    And User clicks "btnSearch" button in "Incoming" page
    And User click "fieldInputSearch" button in "Incoming" page
    And User fill "fieldInputSearch" get value "keywordPOCode" in "Incoming" page
    And User clicks "btnCari" button in "Incoming" page
    And User click "btnGetQueue" button in "Incoming" page
    And User send PO document "Super.png" in "imgUpload"
    And User fill "fieldDriverName" with value "<pic>" in "Incoming" page
    And User click "btnSubmitQueue" button in "Incoming" page
    #Then User able to see "Successful Action" message verification
    And User can wait loading application for "3" seconds
    When User click "navMenuLogistic" button in "Global" page
    And User click "menuLogisticIncomingChecker" button in "Incoming" page
    And User can wait loading application for "2" seconds
    And User clicks "btnSearch" button in "Incoming" page
    And User click "fieldInputSearch" button in "Incoming" page
    And User fill "fieldInputSearch" get value "keywordPOCode" in "Incoming" page
    And User clicks "btnCari" button in "Incoming" page
    And User can wait loading application for "10" seconds
    When User click "btnInputIncoming" button in "Incoming" page
    And User can wait loading application for "5" seconds
    And User click "btnAddProductIncoming" button in "Incoming" page
    And User send PO document "Super.png" in "zoneImageProduct0"
    And User send PO document "Super.png" in "zoneImageProduct1"
    And User clicks "dropdownProduct" button in "Incoming" page
    And User click "optProductIncoming" button in "Incoming" page
    And User clicks "dropdownUnitIncoming" button in "Incoming" page
    And User click "optUnitIncoming" button in "Incoming" page
    And User act "1" element "fieldQty" in "Incoming" page
    And User click "fieldQty" button in "Incoming" page
    And User fill "fieldQty" with value "1000" in "Incoming" page
    And User clicks "fieldExpiredDate" button in "Incoming" page
    And User can wait loading application for "3" seconds
    And User clicks "fieldExpiredDate" button in "Incoming" page
    And User clicks "fieldProductionDate" button in "Incoming" page
    And User clicks "fieldExpiredDate" button in "Incoming" page
    And User click "btnTodayCalendar1" button in "Incoming" page
    And User clicks "fieldProductionDate" button in "Incoming" page
    And User can wait loading application for "3" seconds
    And User click "btnTodayCalendar2" button in "Incoming" page
    When User click "btnSubmitIncomingChecker" button in "Incoming" page
    And User click "btnConfirmSubmitIncomingChecker" button in "Incoming" page
    #Then User able to see "Incoming untuk nomor antrian" message verification
    Then User "able" to see "statusDicekTL" in "Incoming" page
    And User can wait loading application for "3" seconds
    When User click "navMenuLogistic" button in "Global" page
    And User click "menuLogisticIncomingGoods" button in "Incoming" page
    And User can wait loading application for "2" seconds
    And User clicks "btnSearch" button in "Incoming" page
    And User click "fieldInputSearch" button in "Incoming" page
    And User fill "fieldInputSearch" get value "keywordPOCode" in "Incoming" page
    And User can wait loading application for "3" seconds
    And User clicks "btnCari" button in "Incoming" page
    When User click "btnValidateChecker" button in "Incoming" page
    And User click "btnEditValidateIncoming" button in "Incoming" page
    #And User click "fieldValidateRack" button in "Incoming" page
    #And User click "optRackFloor" button in "Incoming" page
    #And User click "optRack" button in "Incoming" page
    And User click "btnSubmitModalValidateEdit" button in "Incoming" page
    And User click "btnSubmitIncoming" button in "Incoming" page
    And User can wait loading application for "10" seconds
    And User click "btnFinalSubmit" button in "Incoming" page
    #Then User able to see "Data berhasil disimpan" message verification
    And User can wait loading application for "3" seconds
    When User click "navMenuFinances" button in "Global" page
    And User click "menuBillProcessing" button in "Finance" page
    And User can wait loading application for "3" seconds
    And User click "btnSearch" button in "Finance" page
    And User clicks "fieldInputSearch" button in "Finance" page
    And User fill "fieldInputSearch" get value "keywordPOCode" in "Finance" page
    And User clicks "btnCari" button in "Finance" page
    And User click "btnDetailRow0Bill" button in "Finance" page
    And User click "btnPayBill" button in "Finance" page
    #And User send PO document "Super.png" in "dropzoneNotaResmi"
    And User send document "Super.png" in "dropzoneNotaResmi" in "Finance" page
    And User click "btnSaveBill" button in "Finance" page
    And User click "btnSubmitSaveBill" button in "Finance" page
    And User can wait loading application for "3" seconds
    #Check Incoming List
    When User click "navMenuLogistic" button in "Global" page
    And User click "menuLogisticIncomingGoods" button in "Incoming" page
    And User can wait loading application for "2" seconds
    And User clicks "btnSearch" button in "Incoming" page
    And User clicks "fieldInputSearch" button in "Incoming" page
    And User fill "fieldInputSearch" get value "keywordPOCode" in "Incoming" page
    And User clicks "btnCari" button in "Incoming" page
    And User can wait loading application for "5" seconds

    Examples:
      | notes                  | pic   | productName     | qty  | price | diskon1 | diskonOffFaktur | textValueDPP      | textValuePPN      | textValueSubTotal  | textValueGrandTotal | kodePO    |
      | Catatan Purchase Order | Angga | Automated Stock | 1000 | 95000 |     500 |             100 | Rp 94.500.000,000 | Rp 10.395.000,000 | Rp 104.895.000,000 | Rp 104.894.900,000  | ASR2409-5 |

  @OPS-02
  Scenario Outline: Memastikan ketika sudah create PO "Raw Material" maka akan tampil di list incoming goods
    When User click "navMenuPurchasing" button in "Global" page
    And User click "menuPurchasingPO" button in "PO" page
    And User directed to "Purchase Order" page
    When User click "btnCreateNewPO" button in "PO" page
    And User clicks "fieldJenisPO" button in "PO" page
    And User can wait loading application for "3" seconds
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
    And User clicks "fieldProdukModalPO" button in "PO" page
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
    And User click "btnSimpanCreatePO" button in "PO" page
    Then User able to see "Purchase Order berhasil dibuat!" message verification
    And User can wait loading application for "3" seconds
    And User get "kodePORow0" from purchase order list
    And User click "btnDetailRow0" button in "PO" page
    And User click "btnPrepayment" button in "PO" page
    And User click "reqnavNotaPengajuan" button in "PO" page
    And User fill "fieldDeskripsiPrepayment" with value "Notes Prepayment" in "PO" page
    And User can wait loading application for "3" seconds
    And User send PO document "Super.png" in "dropzonePrepaymentNota"
    And User can wait loading application for "3" seconds
    And User click "btnSimpanPrepayment" button in "PO" page
    Then User able to see "Data has been updated" message verification
    When User click "navMenuFinances" button in "Global" page
    And User click "menuPaymentRequest" button in "Finance" page
    And User directed to "List semua payment request yang perlu disetujui" page
    And User click "btnSearch" button in "Finance" page
    And User clicks "fieldInputSearch" button in "Finance" page
    And User fill "fieldInputSearch" get value "keywordPOCode" in "Finance" page
    And User clicks "btnCari" button in "Finance" page
    And User clicks "btnDetailRow0" button in "Finance" page
    And User can wait loading application for "5" seconds
    And User clicks "btnApprove" button in "Finance" page
    Then User able to see request payment confirmation "poCodeModal" is match
    And User clicks "btnSimpan" button in "Finance" page
    #Then User able to see "Payment request status has been successfully updated" message verification
    And User can wait loading application for "3" seconds
    And User clicks "btnApprovePayment" button in "Finance" page
    And User clicks "fieldPaymentBy" button in "Finance" page
    And User clicks "optPaymentBy" button in "Finance" page
    And User send PO document "Super.png" in "imgUpload"
    And User clicks "btnSelesaikan" button in "Finance" page
    And User can wait loading application for "3" seconds
    When User click "navMenuFinances" button in "Global" page
    And User click "menuPaymentRequest" button in "Finance" page
    And User click "btnSearch" button in "Finance" page
    And User clicks "fieldInputSearch" button in "Finance" page
    And User fill "fieldInputSearch" get value "keywordPOCode" in "Finance" page
    And User clicks "btnCari" button in "Finance" page
    Then User verified "status finance po" for "textStatusPaymentRequest" is "Dibayar"
    And User can wait loading application for "3" seconds
    When User click "navMenuLogistic" button in "Global" page
    And User click "menuLogisticIncomingGoods" button in "Incoming" page
    And User can wait loading application for "2" seconds
    And User clicks "btnSearch" button in "Incoming" page
    And User click "fieldInputSearch" button in "Incoming" page
    And User fill "fieldInputSearch" get value "keywordPOCode" in "Incoming" page
    And User clicks "btnCari" button in "Incoming" page
    And User click "btnGetQueue" button in "Incoming" page
    And User send PO document "Super.png" in "imgUpload"
    And User fill "fieldDriverName" with value "<pic>" in "Incoming" page
    And User click "btnSubmitQueue" button in "Incoming" page
    #Then User able to see "Successful Action" message verification
    And User can wait loading application for "3" seconds
    When User click "navMenuLogistic" button in "Global" page
    And User click "menuLogisticIncomingChecker" button in "Incoming" page
    And User can wait loading application for "2" seconds
    And User clicks "btnSearch" button in "Incoming" page
    And User click "fieldInputSearch" button in "Incoming" page
    And User fill "fieldInputSearch" get value "keywordPOCode" in "Incoming" page
    And User clicks "btnCari" button in "Incoming" page
    And User can wait loading application for "7" seconds
    When User click "btnInputIncoming" button in "Incoming" page
    And User can wait loading application for "5" seconds
    And User click "btnAddProductIncoming" button in "Incoming" page
    And User send PO document "Super.png" in "zoneImageProduct0"
    And User send PO document "Super.png" in "zoneImageProduct1"
    And User clicks "dropdownProduct" button in "Incoming" page
    And User click "optProductIncomingRaw" button in "Incoming" page
    And User clicks "dropdownUnitIncoming" button in "Incoming" page
    And User click "optUnitIncoming" button in "Incoming" page
    And User act "1" element "fieldQty" in "Incoming" page
    And User click "fieldQty" button in "Incoming" page
    And User fill "fieldQty" with value "1000" in "Incoming" page
    And User clicks "fieldExpiredDate" button in "Incoming" page
    And User can wait loading application for "3" seconds
    And User clicks "fieldExpiredDate" button in "Incoming" page
    And User clicks "fieldProductionDate" button in "Incoming" page
    And User clicks "fieldExpiredDate" button in "Incoming" page
    And User click "btnTodayCalendar1" button in "Incoming" page
    And User clicks "fieldProductionDate" button in "Incoming" page
    And User can wait loading application for "3" seconds
    And User click "btnTodayCalendar2" button in "Incoming" page
    When User click "btnSubmitIncomingChecker" button in "Incoming" page
    And User click "btnConfirmSubmitIncomingChecker" button in "Incoming" page
    #Then User able to see "Incoming untuk nomor antrian" message verification
    Then User "able" to see "statusDicekTL" in "Incoming" page
    And User can wait loading application for "3" seconds
    When User click "navMenuLogistic" button in "Global" page
    And User click "menuLogisticIncomingGoods" button in "Incoming" page
    And User can wait loading application for "2" seconds
    And User clicks "btnSearch" button in "Incoming" page
    And User click "fieldInputSearch" button in "Incoming" page
    And User fill "fieldInputSearch" get value "keywordPOCode" in "Incoming" page
    And User can wait loading application for "3" seconds
    And User clicks "btnCari" button in "Incoming" page
    When User click "btnValidateChecker" button in "Incoming" page
    And User click "btnEditValidateIncoming" button in "Incoming" page
    #And User click "fieldValidateRack" button in "Incoming" page
    #And User click "optRackFloor" button in "Incoming" page
    #And User click "optRack" button in "Incoming" page
    And User click "btnSubmitModalValidateEdit" button in "Incoming" page
    And User click "btnSubmitIncoming" button in "Incoming" page
    And User can wait loading application for "5" seconds
    And User click "btnFinalSubmit" button in "Incoming" page
    #Then User able to see "Data berhasil disimpan" message verification
    And User can wait loading application for "3" seconds
    When User click "navMenuFinances" button in "Global" page
    And User click "menuBillProcessing" button in "Finance" page
    And User can wait loading application for "3" seconds
    And User click "btnSearch" button in "Finance" page
    And User clicks "fieldInputSearch" button in "Finance" page
    And User fill "fieldInputSearch" get value "keywordPOCode" in "Finance" page
    And User clicks "btnCari" button in "Finance" page
    And User click "btnDetailRow0Bill" button in "Finance" page
    And User click "btnPayBill" button in "Finance" page
    #And User send PO document "Super.png" in "dropzoneNotaResmi"
    And User send document "Super.png" in "dropzoneNotaResmi" in "Finance" page
    And User click "btnSaveBill" button in "Finance" page
    And User click "btnSubmitSaveBill" button in "Finance" page
    And User can wait loading application for "3" seconds
    #Check Incoming List
    When User click "navMenuLogistic" button in "Global" page
    And User click "menuLogisticIncomingGoods" button in "Incoming" page
    And User can wait loading application for "2" seconds
    And User clicks "btnSearch" button in "Incoming" page
    And User clicks "fieldInputSearch" button in "Incoming" page
    And User fill "fieldInputSearch" get value "keywordPOCode" in "Incoming" page
    And User clicks "btnCari" button in "Incoming" page
    And User can wait loading application for "5" seconds

    Examples:
      | notes                  | pic   | productName | qty  | price | diskon1 | diskonOffFaktur | textValueDPP | textValuePPN | textValueSubTotal | textValueGrandTotal |
      | Catatan Purchase Order | Angga | Raw         | 1000 | 95000 |     500 |             100 |   94.500.000 |   10.395.000 |       104.895.000 |         104.894.900 |

  @OPS-05
  Scenario Outline: search by kode PO dapat berfungsi dengan baik
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
    And User click "btnSimpanCreatePO" button in "PO" page
    Then User able to see "Purchase Order berhasil dibuat!" message verification
    And User get "kodePORow0" from purchase order list
    And User click "btnSearch" button in "PO" page
    And User clicks "fieldInputSearch" button in "PO" page
    And User fill "fieldInputSearch" get value "keywordPOCode" in "PO" page
    And User clicks "btnCari" button in "PO" page
    And User can wait loading application for "3" seconds

    Examples:
      | notes                  | pic   | productName | qty  | price | diskon1 | diskonOffFaktur | textValueDPP | textValuePPN | textValueSubTotal | textValueGrandTotal |
      | Catatan Purchase Order | Angga | Tamiya      | 1000 | 95000 |     500 |             100 |   94.500.000 |   10.395.000 |       104.895.000 |         104.894.900 |
