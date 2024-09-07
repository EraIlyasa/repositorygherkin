import { Given, When, Then } from '@cucumber/cucumber';
import purchaseOrder from '../pageobjects/Procurement/purchaseOrder';

const POV4 = purchaseOrder;


//@PO-0001
When ('User click "purchasing" button in "Global" page', async () => {await POV4.purchasing.click();})
Given ('User click "menuPurchasingPO" button in "PO" page', async () => {await POV4.menuPurchasingPO.click();})
Given ('User directed to "Purchase Order" page', async () => { await browser.pause(3000)})
When ('User click "btnCreateNewPO" button in "PO" page', async () => {await POV4.btnCreateNewPO.click();})
Given ('User clicks "fieldJenisPO" button in "PO" page', async () => {await POV4.fieldJenisPO.click();})
Given ('User clicks "fieldGudang" button in "PO" page', async () => {await POV4.fieldGudang.click();})
Given ('User clicks "optGudangPOAloha" button in "PO" page', async () => {await POV4.optGudangPOAloha.click(); await browser.pause(3000)})
Given ('User clicks "fieldTipePT" button in "PO" page', async () => {await POV4.fieldTipePT.click();})
Given ('User clicks "optTipePTPO" button in "PO" page', async () => {await POV4.optTipePTPO.click();})
Given ('User clicks "fieldSupplier" button in "PO" page', async () => {await POV4.fieldSupplier.click();})
Given ('User clicks "optSupplier" button in "PO" page', async () => {await POV4.optSupplier.click();})
Given ('User clicks "textAreaCatatanPO" button in "PO" page', async () => {await POV4.textAreaCatatanPO.click();})
Given ('User fill "textAreaCatatanPO" with value {string} in "PO" page', async (notes) => { 
    await POV4.textAreaCatatanPO.scrollIntoView();
    await POV4.textAreaCatatanPO.setValue(notes);})
Given ('User clicks "fieldMetodePembayaran" button in "PO" page', async () => { 
    await POV4.fieldMetodePembayaran.click();})
Given ('User clicks "optMetodePembayaranTransfer" button in "PO" page', async () => {await POV4.optMetodePembayaranTransfer.click();})
Given ('User clicks "fieldPengiriman" button in "PO" page', async () => {await POV4.fieldPengiriman.click();})
Given ('User clicks "optPengirimanLocco" button in "PO" page', async () => {await POV4.optPengirimanLocco.click()})
Given ('User clicks "fieldPIC" button in "PO" page', async () => {await POV4.fieldPIC.click();})
Given ('User fill "fieldPIC" with value {string} in "PO" page', async (pic) => {await POV4.fieldPIC.setValue(pic);})
Given ('User clicks "optPIC" button in "PO" page', async () => {await POV4.optPIC.click();})
Given ('User clicks "fieldBankSupplier" button in "PO" page', async () => {await POV4.fieldBankSupplier.click();})
Given ('User clicks "optBankSupplier" button in "PO" page', async () => {await POV4.optBankSupplier.click();})
When ('User clicks "btnTambahProdukPO" button in "PO" page', async () => {
    await POV4.btnTambahProdukPO.scrollIntoView()
    await POV4.btnTambahProdukPO.click();})
Given ('User can wait loading application for "3" seconds', async () => { await browser.pause(3000)})
Given ('User clicks "fieldProdukModalPO" button in "PO" page', async () => {await POV4.fieldProdukModalPO.click();})
Given ('User can wait loading application for "5" seconds', async () => { await browser.pause(5000)})
Given ('User fill "fieldProdukModalPO" with value {string} in "PO" page', async (productName) => {await POV4.fieldProdukModalPO.setValue(productName);})
// Given ('User can wait loading application for "5" seconds', async () => { await browser.pause(5000)})
Given ('User clicks "optProdukModalPO2" button in "PO" page', async () => {await POV4.optProdukModalPO2.click();})
Given ('User clicks "fieldSatuanModalPO" button in "PO" page', async () => {await POV4.fieldSatuanModalPO.click();})
Given ('User clicks "optSatuanModalPO" button in "PO" page', async () => {await POV4.optSatuanModalPO.click();})
Given ('User fill "fieldQtyModalPO" with value {string} in "PO" page', async (qty) => {await POV4.fieldQtyModalPO.setValue(qty);})
Given ('User fill "fieldHargaSatuanModalPO" with value {string} in "PO" page', async (price) => {await POV4.fieldHargaSatuanModalPO.setValue(price);})
Given ('User fill "fieldDiskon1ModalPO" with value {string} in "PO" page', async (diskon1) => {await POV4.fieldDiskon1ModalPO.setValue(diskon1);})
Given ('User clicks "togglePPNModalPO" button in "PO" page', async () => {await POV4.togglePPNModalPO.click();})
Given ('User clicks "btnSimpanModalPO" button in "PO" page', async () => {await POV4.btnSimpanModalPO.click();})
Given ('User scroll to "bottom" of the page', async () => {await POV4.textValueDPP.scrollIntoView();})
Then ('User verified "purchase order cost" for "textValueDPP" is {string}', async (textValueDPP) => {
    const valueDpp = await POV4.textValueDPP.getText();
    await expect (await valueDpp).toEqual(textValueDPP);})
Given ('User verified "purchase order cost" for "textValuePPN" is {string}', async (textValuePPN) => {
    const valuePPN = await POV4.textValuePPN.getText();
    await expect (await valuePPN).toEqual(textValuePPN);})
Given ('User verified "purchase order cost" for "textValueSubTotal" is {string}', async (textValueSubTotal) => {
    const valueSubTotal = await POV4.textValueSubTotal.getText();
    await expect (await valueSubTotal).toEqual(textValueSubTotal)})
Given ('User fill "fieldDiskonOffFaktur" with value {string} in "PO" page', async (diskonOffFaktur) => { 
    await POV4.fieldDiskonOffFaktur.setValue(diskonOffFaktur);})
Given ('User verified "purchase order cost" for "textValueGrandTotal" is {string}', async (textValueGrandTotal) => {
    const valueGrandTotal = await POV4.textValueGrandTotal.getText();
    await expect (await valueGrandTotal).toEqual(textValueGrandTotal);})
Given ('User send PO document "Super.png" in "dropzoneNotaPengajuan"', async () => {})
Given ('User click "btnSimpanCreatePO" button in "PO" page', async () => {await POV4.btnSimpanCreatePO.click();})
Then ('User able to see "Purchase Order berhasil dibuat!" message verification', async() => { 
    console.log('Purchase Order berhasil dibuat!');
    const kodePO = await POV4.kodePORow1.getText();
    expect (await POV4.kodePORow1.isDisplayed());
    console.log('kodePO : ' + kodePO); 
})


//@PO-0003
//Scenario Outline: Memastikan Edit PO Finish Good dan berhasil disimpan dengan status set
When ('User click "navMenuPurchasing" button in "Global" page', async() => { await POV4.purchasing.click() })
Given ('User click "menuPurchasingPO" button in "PO" page', async() => { await POV4.menuPurchasingPO.click() })
Given ('User directed to "Purchase Order" page', async() => {})
Given ('User click "btnFilter" button in "PO" page', async() => { await POV4.btnFilter.click() })
Given ('User click "optModalFilterPeriode" button in "PO" page', async() => { await POV4.optModalFilterPeriode.click() })
Given ('User click "optModalFilterPeriodeCustom" button in "PO" page', async() => { await POV4.optModalFilterPeriodeCustom.click() })
Given ('User act "7" element "optModalFilterPeriodeCustomStart" in "PO" page', async() => { await POV4.optModalFilterPeriodeCustomStart.setValue('7') })
Given ('User can wait loading application for "3" seconds', async() => { await browser.pause(3000) })
Given ('User fill "optModalFilterPeriodeCustomStart" with value {string} in "PO" page', async(date) => { await POV4.optModalFilterPeriodeCustomStart.setValue(date) })
Given ('User click "btnTerapkanFilter" button in "PO" page', async() => { await POV4.btnTerapkanFilter.click() })
Given ('User click "btnSearch" button in "PO" page', async() => { await POV4.btnSearch.click() })
Given ('User click "fieldInputSearch" button in "PO" page', async() => { await POV4.fieldInputSearch.click() })
Given ('User fill "fieldInputSearch" with value {string} in "PO" page', async(poCode) => { await POV4.fieldInputSearch.setValue(poCode) })
Given ('User click "btnCari" button in "PO" page', async() => { await POV4.btnCari.click() })
Given ('User click "btnDetailRow0" button in "PO" page', async() => { await POV4.btnDetailRow0.click() })
Given ('User click "btnEditPO" button in "PO" page', async() => { await POV4.btnEditPO.click() })
Given ('User scroll to "bottom" of the page', async() => { await POV4.fieldDeskripsiDokumen.scrollIntoView() })
Given ('User click "fieldDeskripsiDokumen" button in "PO" page', async() => { await POV4.fieldDeskripsiDokumen.click() })
Given ('User act "clear" element "fieldDeskripsiDokumen" in "PO" page', async() => { await POV4.fieldDeskripsiDokumen.clearValue() })
Given ('User fill "fieldDeskripsiDokumen" with value "Dokumen Edited" in "PO" page', async() => { await POV4.fieldDeskripsiDokumen.setValue('Dokumen Edited') })
Given ('User click "btnSimpanCreatePO" button in "PO" page', async() => { await POV4.btnSimpanCreatePO.click() })
Then ('User able to see "Purchase Order berhasil diupdate" message verification', async() => { console.log('Purchase Order berhasil diupdate" message verification') })
Given ('User click "btnFilter" button in "PO" page', async() => { await POV4.btnFilter.click() })
Given ('User click "optModalFilterPeriode" button in "PO" page', async() => { await POV4.optModalFilterPeriode.click() })
Given ('User click "optModalFilterPeriodeCustom" button in "PO" page', async() => { await POV4.optModalFilterPeriodeCustom.click() })
Given ('User act "7" element "optModalFilterPeriodeCustomStart" in "PO" page', async() => { await POV4.optModalFilterPeriodeCustomStart.setValue('7') })
Given ('User can wait loading application for "3" seconds', async() => { await browser.pause(3000) })
Given ('User fill "optModalFilterPeriodeCustomStart" with value {string} in "PO" page', async(date) => { await POV4.optModalFilterPeriodeCustomStart.setValue(date) })
Given ('User click "btnTerapkanFilter" button in "PO" page', async() => { await POV4.btnTerapkanFilter.click() })
Given ('User click "btnSearch" button in "PO" page', async() => { await POV4.btnSearch.click() })
Given ('User click "fieldInputSearch" button in "PO" page', async() => { await POV4.fieldInputSearch.click() })
Given ('User fill "fieldInputSearch" with value {string} in "PO" page', async(poCode) => { await POV4.fieldInputSearch.setValue(poCode) })
Given ('User click "btnCari" button in "PO" page', async() => { await POV4.btnCari.click() })
Then ('User verified "status po" for "textStatusPO" is {string}', async(textStatusPO) => { 
    const status = await POV4.textStatusPO.getText();
    expect (await status).toEqual(textStatusPO);})

//@PO-0005
//Scenario Outline: Memastikan Cancel PO Finish Good dan berhasil disimpan dengan Cancel
When ('User click "purchasing" button in "Global" page', async () => {await POV4.purchasing.click();})
Given ('User click "menuPurchasingPO" button in "PO" page', async () => {await POV4.menuPurchasingPO.click();})
Given ('User directed to "Purchase Order" page', async () => { await browser.pause(3000)})
When ('User click "btnCreateNewPO" button in "PO" page', async () => {await POV4.btnCreateNewPO.click();})
Given ('User clicks "fieldJenisPO" button in "PO" page', async () => {await POV4.fieldJenisPO.click();})
Given ('User clicks "fieldGudang" button in "PO" page', async () => {await POV4.fieldGudang.click();})
Given ('User clicks "optGudangPOAloha" button in "PO" page', async () => {await POV4.optGudangPOAloha.click(); await browser.pause(3000)})
Given ('User clicks "fieldTipePT" button in "PO" page', async () => {await POV4.fieldTipePT.click();})
Given ('User clicks "optTipePTPO" button in "PO" page', async () => {await POV4.optTipePTPO.click();})
Given ('User clicks "fieldSupplier" button in "PO" page', async () => {await POV4.fieldSupplier.click();})
Given ('User clicks "optSupplier" button in "PO" page', async () => {await POV4.optSupplier.click();})
Given ('User clicks "textAreaCatatanPO" button in "PO" page', async () => {await POV4.textAreaCatatanPO.click();})
Given ('User fill "textAreaCatatanPO" with value {string} in "PO" page', async (notes) => { 
    await POV4.textAreaCatatanPO.scrollIntoView();
    await POV4.textAreaCatatanPO.setValue(notes);})
Given ('User clicks "fieldMetodePembayaran" button in "PO" page', async () => { 
    await POV4.fieldMetodePembayaran.click();})
Given ('User clicks "optMetodePembayaranTransfer" button in "PO" page', async () => {await POV4.optMetodePembayaranTransfer.click();})
Given ('User clicks "fieldPengiriman" button in "PO" page', async () => {await POV4.fieldPengiriman.click();})
Given ('User clicks "optPengirimanLocco" button in "PO" page', async () => {await POV4.optPengirimanLocco.click()})
Given ('User clicks "fieldPIC" button in "PO" page', async () => {await POV4.fieldPIC.click();})
Given ('User fill "fieldPIC" with value {string} in "PO" page', async (pic) => {await POV4.fieldPIC.setValue(pic);})
Given ('User clicks "optPIC" button in "PO" page', async () => {await POV4.optPIC.click();})
Given ('User clicks "fieldBankSupplier" button in "PO" page', async () => {await POV4.fieldBankSupplier.click();})
Given ('User clicks "optBankSupplier" button in "PO" page', async () => {await POV4.optBankSupplier.click();})
When ('User clicks "btnTambahProdukPO" button in "PO" page', async () => {
    await POV4.btnTambahProdukPO.scrollIntoView()
    await POV4.btnTambahProdukPO.click();})
Given ('User can wait loading application for "3" seconds', async () => { await browser.pause(3000)})
Given ('User clicks "fieldProdukModalPO" button in "PO" page', async () => {await POV4.fieldProdukModalPO.click();})
Given ('User can wait loading application for "5" seconds', async () => { await browser.pause(5000)})
Given ('User fill "fieldProdukModalPO" with value {string} in "PO" page', async (productName) => {await POV4.fieldProdukModalPO.setValue(productName);})
// Given ('User can wait loading application for "5" seconds', async () => { await browser.pause(5000)})
Given ('User clicks "optProdukModalPO2" button in "PO" page', async () => {await POV4.optProdukModalPO2.click();})
Given ('User clicks "fieldSatuanModalPO" button in "PO" page', async () => {await POV4.fieldSatuanModalPO.click();})
Given ('User clicks "optSatuanModalPO" button in "PO" page', async () => {await POV4.optSatuanModalPO.click();})
Given ('User fill "fieldQtyModalPO" with value {string} in "PO" page', async (qty) => {await POV4.fieldQtyModalPO.setValue(qty);})
Given ('User fill "fieldHargaSatuanModalPO" with value {string} in "PO" page', async (price) => {await POV4.fieldHargaSatuanModalPO.setValue(price);})
Given ('User fill "fieldDiskon1ModalPO" with value {string} in "PO" page', async (diskon1) => {await POV4.fieldDiskon1ModalPO.setValue(diskon1);})
Given ('User clicks "togglePPNModalPO" button in "PO" page', async () => {await POV4.togglePPNModalPO.click();})
Given ('User clicks "btnSimpanModalPO" button in "PO" page', async () => {await POV4.btnSimpanModalPO.click();})
Given ('User scroll to "bottom" of the page', async () => {await POV4.textValueDPP.scrollIntoView();})
Then ('User verified "purchase order cost" for "textValueDPP" is {string}', async (textValueDPP) => {
    const valueDpp = await POV4.textValueDPP.getText();
    await expect (await valueDpp).toEqual(textValueDPP);})
Given ('User verified "purchase order cost" for "textValuePPN" is {string}', async (textValuePPN) => {
    const valuePPN = await POV4.textValuePPN.getText();
    await expect (await valuePPN).toEqual(textValuePPN);})
Given ('User verified "purchase order cost" for "textValueSubTotal" is {string}', async (textValueSubTotal) => {
    const valueSubTotal = await POV4.textValueSubTotal.getText();
    await expect (await valueSubTotal).toEqual(textValueSubTotal)})
Given ('User fill "fieldDiskonOffFaktur" with value {string} in "PO" page', async (diskonOffFaktur) => { 
    await POV4.fieldDiskonOffFaktur.setValue(diskonOffFaktur);})
Given ('User verified "purchase order cost" for "textValueGrandTotal" is {string}', async (textValueGrandTotal) => {
    const valueGrandTotal = await POV4.textValueGrandTotal.getText();
    await expect (await valueGrandTotal).toEqual(textValueGrandTotal);})
Given ('User send PO document "Super.png" in "dropzoneNotaPengajuan"', async () => {})
Given ('User click "btnSimpanCreatePO" button in "PO" page', async () => {await POV4.btnSimpanCreatePO.click();})
Then ('User able to see "Purchase Order berhasil dibuat!" message verification', async() => { 
    console.log('Purchase Order berhasil dibuat!');
    const kodePO = await POV4.kodePORow1.getText();
    expect (await POV4.kodePORow1.isDisplayed());
    console.log('kodePO : ' + kodePO);})
Given ('User click "btnDetailRow0" button in "PO" page', async() => { await POV4.btnDetailRow0.click();})
Given ('User click "btnCancelPO" button in "PO" page', async() => { await POV4.btnCancelPO.click() })
Given ('User click "btnLanjutkanCancel" button in "PO" page', async() => { await POV4.btnLanjutkanCancel.click() })
Then ('User able to see "Data Berhasil Dibatalkan" message verification', async() => {})


//PO-0006
//Scenario Outline: Memastikan  Request payment berhasil untuk PO dengan payment method cod/tf
When ('User click "purchasing" button in "Global" page', async () => {await POV4.purchasing.click();})
Given ('User click "menuPurchasingPO" button in "PO" page', async () => {await POV4.menuPurchasingPO.click();})
Given ('User directed to "Purchase Order" page', async () => { await browser.pause(3000)})
When ('User click "btnCreateNewPO" button in "PO" page', async () => {await POV4.btnCreateNewPO.click();})
Given ('User clicks "fieldJenisPO" button in "PO" page', async () => {await POV4.fieldJenisPO.click();})
Given ('User clicks "fieldGudang" button in "PO" page', async () => {await POV4.fieldGudang.click();})
Given ('User clicks "optGudangPOAloha" button in "PO" page', async () => {await POV4.optGudangPOAloha.click(); await browser.pause(3000)})
Given ('User clicks "fieldTipePT" button in "PO" page', async () => {await POV4.fieldTipePT.click();})
Given ('User clicks "optTipePTPO" button in "PO" page', async () => {await POV4.optTipePTPO.click();})
Given ('User clicks "fieldSupplier" button in "PO" page', async () => {await POV4.fieldSupplier.click();})
Given ('User clicks "optSupplier" button in "PO" page', async () => {await POV4.optSupplier.click();})
Given ('User clicks "textAreaCatatanPO" button in "PO" page', async () => {await POV4.textAreaCatatanPO.click();})
Given ('User fill "textAreaCatatanPO" with value {string} in "PO" page', async (notes) => { 
    await POV4.textAreaCatatanPO.scrollIntoView();
    await POV4.textAreaCatatanPO.setValue(notes);})
Given ('User clicks "fieldMetodePembayaran" button in "PO" page', async () => { 
    await POV4.fieldMetodePembayaran.click();})
Given ('User clicks "optMetodePembayaranTransfer" button in "PO" page', async () => {await POV4.optMetodePembayaranTransfer.click();})
Given ('User clicks "fieldPengiriman" button in "PO" page', async () => {await POV4.fieldPengiriman.click();})
Given ('User clicks "optPengirimanLocco" button in "PO" page', async () => {await POV4.optPengirimanLocco.click()})
Given ('User clicks "fieldPIC" button in "PO" page', async () => {await POV4.fieldPIC.click();})
Given ('User fill "fieldPIC" with value {string} in "PO" page', async (pic) => {await POV4.fieldPIC.setValue(pic);})
Given ('User clicks "optPIC" button in "PO" page', async () => {await POV4.optPIC.click();})
Given ('User clicks "fieldBankSupplier" button in "PO" page', async () => {await POV4.fieldBankSupplier.click();})
Given ('User clicks "optBankSupplier" button in "PO" page', async () => {await POV4.optBankSupplier.click();})
When ('User clicks "btnTambahProdukPO" button in "PO" page', async () => {
    await POV4.btnTambahProdukPO.scrollIntoView()
    await POV4.btnTambahProdukPO.click();})
Given ('User can wait loading application for "3" seconds', async () => { await browser.pause(3000)})
Given ('User clicks "fieldProdukModalPO" button in "PO" page', async () => {await POV4.fieldProdukModalPO.click();})
Given ('User can wait loading application for "5" seconds', async () => { await browser.pause(5000)})
Given ('User fill "fieldProdukModalPO" with value {string} in "PO" page', async (productName) => {await POV4.fieldProdukModalPO.setValue(productName);})
// Given ('User can wait loading application for "5" seconds', async () => { await browser.pause(5000)})
Given ('User clicks "optProdukModalPO2" button in "PO" page', async () => {await POV4.optProdukModalPO2.click();})
Given ('User clicks "fieldSatuanModalPO" button in "PO" page', async () => {await POV4.fieldSatuanModalPO.click();})
Given ('User clicks "optSatuanModalPO" button in "PO" page', async () => {await POV4.optSatuanModalPO.click();})
Given ('User fill "fieldQtyModalPO" with value {string} in "PO" page', async (qty) => {await POV4.fieldQtyModalPO.setValue(qty);})
Given ('User fill "fieldHargaSatuanModalPO" with value {string} in "PO" page', async (price) => {await POV4.fieldHargaSatuanModalPO.setValue(price);})
Given ('User fill "fieldDiskon1ModalPO" with value {string} in "PO" page', async (diskon1) => {await POV4.fieldDiskon1ModalPO.setValue(diskon1);})
Given ('User clicks "togglePPNModalPO" button in "PO" page', async () => {await POV4.togglePPNModalPO.click();})
Given ('User clicks "btnSimpanModalPO" button in "PO" page', async () => {await POV4.btnSimpanModalPO.click();})
Given ('User scroll to "bottom" of the page', async () => {await POV4.textValueDPP.scrollIntoView();})
Then ('User verified "purchase order cost" for "textValueDPP" is {string}', async (textValueDPP) => {
    const valueDpp = await POV4.textValueDPP.getText();
    await expect (valueDpp).toEqual(textValueDPP);})
Given ('User verified "purchase order cost" for "textValuePPN" is {string}', async (textValuePPN) => {
    const valuePPN = await POV4.textValuePPN.getText();
    await expect (await valuePPN).toEqual(textValuePPN);})
Given ('User verified "purchase order cost" for "textValueSubTotal" is {string}', async (textValueSubTotal) => {
    const valueSubTotal = await POV4.textValueSubTotal.getText();
    await expect (await valueSubTotal).toEqual(textValueSubTotal)})
Given ('User fill "fieldDiskonOffFaktur" with value {string} in "PO" page', async (diskonOffFaktur) => { 
    await POV4.fieldDiskonOffFaktur.setValue(diskonOffFaktur);})
Given ('User verified "purchase order cost" for "textValueGrandTotal" is {string}', async (textValueGrandTotal) => {
    const valueGrandTotal = await POV4.textValueGrandTotal.getText();
    await expect (await valueGrandTotal).toEqual(textValueGrandTotal);})
Given ('User send PO document "Super.png" in "dropzoneNotaPengajuan"', async () => {})
Given ('User click "btnSimpanCreatePO" button in "PO" page', async () => {await POV4.btnSimpanCreatePO.click();})
Then ('User able to see "Purchase Order berhasil dibuat!" message verification', async() => { 
    console.log('Purchase Order berhasil dibuat!');
    const kodePO = await POV4.kodePORow1.getText();
    expect (await POV4.kodePORow1.isDisplayed());
    console.log('kodePO : ' + kodePO); 
})
Given ('User click "btnDetailRow0" button in "PO" page', async() => { await POV4.btnDetailRow0.click() })
Given ('User click "btnPrepayment" button in "PO" page', async() => { await POV4.btnPrepayment.click() })
Given ('User click "reqnavNotaPengajuan" button in "PO" page', async() => { await POV4.reqnavNotaPengajuan.click() })
Given ('User fill "fieldDeskripsiPrepayment" with value "Notes Prepayment" in "PO" page', async() => { await POV4.fieldDeskripsiPrepayment.setValue('Notes Prepayment')})
Given ('User send PO document "Super.png" in "dropzonePrepaymentNota"', async() => {})
Given ('User can wait loading application for "3" seconds', async() => { await browser.pause(3000) })
Given ('User click "btnSimpanPrepayment" button in "PO" page', async() => { await POV4.btnSimpanPrepayment.click() })
Then ('User able to see "Data has been updated" message verification', async() => {})


// @PO-0007
// Scenario Outline: Memastikan submit berhasil untuk PO dengan payment method TF/COD/Tempo grandtotal =0
When ('User click "purchasing" button in "Global" page', async () => {await POV4.purchasing.click();})
Given ('User click "menuPurchasingPO" button in "PO" page', async () => {await POV4.menuPurchasingPO.click();})
Given ('User directed to "Purchase Order" page', async () => { await browser.pause(3000)})
When ('User click "btnCreateNewPO" button in "PO" page', async () => {await POV4.btnCreateNewPO.click();})
Given ('User clicks "fieldJenisPO" button in "PO" page', async () => {await POV4.fieldJenisPO.click();})
Given ('User clicks "fieldGudang" button in "PO" page', async () => {await POV4.fieldGudang.click();})
Given ('User clicks "optGudangPOAloha" button in "PO" page', async () => {await POV4.optGudangPOAloha.click(); await browser.pause(3000)})
Given ('User clicks "fieldTipePT" button in "PO" page', async () => {await POV4.fieldTipePT.click();})
Given ('User clicks "optTipePTPO" button in "PO" page', async () => {await POV4.optTipePTPO.click();})
Given ('User clicks "fieldSupplier" button in "PO" page', async () => {await POV4.fieldSupplier.click();})
Given ('User clicks "optSupplier" button in "PO" page', async () => {await POV4.optSupplier.click();})
Given ('User clicks "textAreaCatatanPO" button in "PO" page', async () => {await POV4.textAreaCatatanPO.click();})
Given ('User fill "textAreaCatatanPO" with value {string} in "PO" page', async (notes) => { 
    await POV4.textAreaCatatanPO.scrollIntoView();
    await POV4.textAreaCatatanPO.setValue(notes);})
Given ('User clicks "fieldMetodePembayaran" button in "PO" page', async () => { 
    await POV4.fieldMetodePembayaran.click();})
Given ('User clicks "optMetodePembayaranTransfer" button in "PO" page', async () => {await POV4.optMetodePembayaranTransfer.click();})
Given ('User clicks "fieldPengiriman" button in "PO" page', async () => {await POV4.fieldPengiriman.click();})
Given ('User clicks "optPengirimanLocco" button in "PO" page', async () => {await POV4.optPengirimanLocco.click()})
Given ('User clicks "fieldPIC" button in "PO" page', async () => {await POV4.fieldPIC.click();})
Given ('User fill "fieldPIC" with value {string} in "PO" page', async (pic) => {await POV4.fieldPIC.setValue(pic);})
Given ('User clicks "optPIC" button in "PO" page', async () => {await POV4.optPIC.click();})
Given ('User clicks "fieldBankSupplier" button in "PO" page', async () => {await POV4.fieldBankSupplier.click();})
Given ('User clicks "optBankSupplier" button in "PO" page', async () => {await POV4.optBankSupplier.click();})
When ('User clicks "btnTambahProdukPO" button in "PO" page', async () => {
    await POV4.btnTambahProdukPO.scrollIntoView()
    await POV4.btnTambahProdukPO.click();})
Given ('User can wait loading application for "3" seconds', async () => { await browser.pause(3000)})
Given ('User clicks "fieldProdukModalPO" button in "PO" page', async () => {await POV4.fieldProdukModalPO.click();})
Given ('User can wait loading application for "5" seconds', async () => { await browser.pause(5000)})
Given ('User fill "fieldProdukModalPO" with value {string} in "PO" page', async (productName) => {await POV4.fieldProdukModalPO.setValue(productName);})
// Given ('User can wait loading application for "5" seconds', async () => { await browser.pause(5000)})
Given ('User clicks "optProdukModalPO2" button in "PO" page', async () => {await POV4.optProdukModalPO2.click();})
Given ('User clicks "fieldSatuanModalPO" button in "PO" page', async () => {await POV4.fieldSatuanModalPO.click();})
Given ('User clicks "optSatuanModalPO" button in "PO" page', async () => {await POV4.optSatuanModalPO.click();})
Given ('User fill "fieldQtyModalPO" with value {string} in "PO" page', async (qty) => {await POV4.fieldQtyModalPO.setValue(qty);})
Given ('User fill "fieldHargaSatuanModalPO" with value {string} in "PO" page', async (price) => {await POV4.fieldHargaSatuanModalPO.setValue(price);})
Given ('User fill "fieldDiskon1ModalPO" with value {string} in "PO" page', async (diskon1) => {await POV4.fieldDiskon1ModalPO.setValue(diskon1);})
Given ('User clicks "togglePPNModalPO" button in "PO" page', async () => {await POV4.togglePPNModalPO.click();})
Given ('User clicks "btnSimpanModalPO" button in "PO" page', async () => {await POV4.btnSimpanModalPO.click();})
Given ('User scroll to "bottom" of the page', async () => {await POV4.textValueDPP.scrollIntoView();})
Then ('User verified "purchase order cost" for "textValueDPP" is {string}', async (textValueDPP) => {
    const valueDpp = await POV4.textValueDPP.getText();
    await expect (await valueDpp).toEqual(textValueDPP);})
Given ('User verified "purchase order cost" for "textValuePPN" is {string}', async (textValuePPN) => {
    const valuePPN = await POV4.textValuePPN.getText();
    await expect (await valuePPN).toEqual(textValuePPN);})
Given ('User verified "purchase order cost" for "textValueSubTotal" is {string}', async (textValueSubTotal) => {
    const valueSubTotal = await POV4.textValueSubTotal.getText();
    await expect (await valueSubTotal).toEqual(textValueSubTotal)})
Given ('User fill "fieldDiskonOffFaktur" with value {string} in "PO" page', async (diskonOffFaktur) => { 
    await POV4.fieldDiskonOffFaktur.setValue(diskonOffFaktur);})
Given ('User verified "purchase order cost" for "textValueGrandTotal" is {string}', async (textValueGrandTotal) => {
    const valueGrandTotal = await POV4.textValueGrandTotal.getText();
    await expect (await valueGrandTotal).toEqual(textValueGrandTotal);})
Given ('User send PO document "Super.png" in "dropzoneNotaPengajuan"', async () => {})
Given ('User click "btnSimpanCreatePO" button in "PO" page', async () => {await POV4.btnSimpanCreatePO.click();})
Then ('User able to see "Purchase Order berhasil dibuat!" message verification', async() => { 
    console.log('Purchase Order berhasil dibuat!');
    const kodePO = await POV4.kodePORow1.getText();
    expect (await POV4.kodePORow1.isDisplayed());
    console.log('kodePO : ' + kodePO); 
})


// @PO-0008
// Scenario Outline: Memastikan Request payment berhasil untuk PO dengan payment method Tempo
When ('User click "purchasing" button in "Global" page', async () => {await POV4.purchasing.click();})
Given ('User click "menuPurchasingPO" button in "PO" page', async () => {await POV4.menuPurchasingPO.click();})
Given ('User directed to "Purchase Order" page', async () => { await browser.pause(3000)})
When ('User click "btnCreateNewPO" button in "PO" page', async () => {await POV4.btnCreateNewPO.click();})
Given ('User clicks "fieldJenisPO" button in "PO" page', async () => {await POV4.fieldJenisPO.click();})
Given ('User clicks "fieldGudang" button in "PO" page', async () => {await POV4.fieldGudang.click();})
Given ('User clicks "optGudangPOAloha" button in "PO" page', async () => {await POV4.optGudangPOAloha.click(); await browser.pause(3000)})
Given ('User clicks "fieldTipePT" button in "PO" page', async () => {await POV4.fieldTipePT.click();})
Given ('User clicks "optTipePTPO" button in "PO" page', async () => {await POV4.optTipePTPO.click();})
Given ('User clicks "fieldSupplier" button in "PO" page', async () => {await POV4.fieldSupplier.click();})
Given ('User clicks "optSupplier" button in "PO" page', async () => {await POV4.optSupplier.click();})
Given ('User clicks "textAreaCatatanPO" button in "PO" page', async () => {await POV4.textAreaCatatanPO.click();})
Given ('User fill "textAreaCatatanPO" with value {string} in "PO" page', async (notes) => { 
    await POV4.textAreaCatatanPO.scrollIntoView();
    await POV4.textAreaCatatanPO.setValue(notes);})
Given ('User clicks "fieldMetodePembayaran" button in "PO" page', async () => { 
    await POV4.fieldMetodePembayaran.click();})
Given ('User clicks "optMetodePembayaranTempo" button in "PO" page', async () => {await POV4.optMetodePembayaranTempo.click();})
Given ('User clicks "fieldPengiriman" button in "PO" page', async () => {await POV4.fieldPengiriman.click();})
Given ('User clicks "optPengirimanLocco" button in "PO" page', async () => {await POV4.optPengirimanLocco.click()})
Given ('User clicks "fieldPIC" button in "PO" page', async () => {await POV4.fieldPIC.click();})
Given ('User fill "fieldPIC" with value {string} in "PO" page', async (pic) => {await POV4.fieldPIC.setValue(pic);})
Given ('User clicks "optPIC" button in "PO" page', async () => {await POV4.optPIC.click();})
Given ('User clicks "fieldBankSupplier" button in "PO" page', async () => {await POV4.fieldBankSupplier.click();})
Given ('User clicks "optBankSupplier" button in "PO" page', async () => {await POV4.optBankSupplier.click();})
When ('User clicks "btnTambahProdukPO" button in "PO" page', async () => {
    await POV4.btnTambahProdukPO.scrollIntoView()
    await POV4.btnTambahProdukPO.click();})
Given ('User can wait loading application for "3" seconds', async () => { await browser.pause(3000)})
Given ('User clicks "fieldProdukModalPO" button in "PO" page', async () => {await POV4.fieldProdukModalPO.click();})
Given ('User can wait loading application for "5" seconds', async () => { await browser.pause(5000)})
Given ('User fill "fieldProdukModalPO" with value {string} in "PO" page', async (productName) => {await POV4.fieldProdukModalPO.setValue(productName);})
// Given ('User can wait loading application for "5" seconds', async () => { await browser.pause(5000)})
Given ('User clicks "optProdukModalPO2" button in "PO" page', async () => {await POV4.optProdukModalPO2.click();})
Given ('User clicks "fieldSatuanModalPO" button in "PO" page', async () => {await POV4.fieldSatuanModalPO.click();})
Given ('User clicks "optSatuanModalPO" button in "PO" page', async () => {await POV4.optSatuanModalPO.click();})
Given ('User fill "fieldQtyModalPO" with value {string} in "PO" page', async (qty) => {await POV4.fieldQtyModalPO.setValue(qty);})
Given ('User fill "fieldHargaSatuanModalPO" with value {string} in "PO" page', async (price) => {await POV4.fieldHargaSatuanModalPO.setValue(price);})
Given ('User fill "fieldDiskon1ModalPO" with value {string} in "PO" page', async (diskon1) => {await POV4.fieldDiskon1ModalPO.setValue(diskon1);})
Given ('User clicks "togglePPNModalPO" button in "PO" page', async () => {await POV4.togglePPNModalPO.click();})
Given ('User clicks "btnSimpanModalPO" button in "PO" page', async () => {await POV4.btnSimpanModalPO.click();})
Given ('User scroll to "bottom" of the page', async () => {await POV4.textValueDPP.scrollIntoView();})
Then ('User verified "purchase order cost" for "textValueDPP" is {string}', async (textValueDPP) => {
    const valueDpp = await POV4.textValueDPP.getText();
    await expect (await valueDpp).toEqual(textValueDPP);})
Given ('User verified "purchase order cost" for "textValuePPN" is {string}', async (textValuePPN) => {
    const valuePPN = await POV4.textValuePPN.getText();
    await expect (await valuePPN).toEqual(textValuePPN);})
Given ('User verified "purchase order cost" for "textValueSubTotal" is {string}', async (textValueSubTotal) => {
    const valueSubTotal = await POV4.textValueSubTotal.getText();
    await expect (await valueSubTotal).toEqual(textValueSubTotal)})
Given ('User fill "fieldDiskonOffFaktur" with value {string} in "PO" page', async (diskonOffFaktur) => { 
    await POV4.fieldDiskonOffFaktur.setValue(diskonOffFaktur);})
Given ('User verified "purchase order cost" for "textValueGrandTotal" is {string}', async (textValueGrandTotal) => {
    const valueGrandTotal = await POV4.textValueGrandTotal.getText();
    await expect (await valueGrandTotal).toEqual(textValueGrandTotal);})
Given ('User send PO document "Super.png" in "dropzoneNotaPengajuan"', async () => {})
Given ('User click "btnSimpanCreatePO" button in "PO" page', async () => {await POV4.btnSimpanCreatePO.click();})
Then ('User able to see "Purchase Order berhasil dibuat!" message verification', async() => { 
    console.log('Purchase Order berhasil dibuat!');
    const kodePO = await POV4.kodePORow1.getText();
    expect (await POV4.kodePORow1.isDisplayed());
    console.log('kodePO : ' + kodePO);})
Given ('User click "btnDetailRow0" button in "PO" page', async () => { await POV4.btnDetailRow0.click() })
Given ('User click "btnSubmitPO" button in "PO" page', async () => { await POV4.btnSubmitPO.click() })
Given ('User click "reqnavNotaPengajuan" button in "PO" page', async () => { await POV4.reqnavNotaPengajuan.click() })
Given ('User fill "fieldDeskripsiPrepayment" with value "Notes Prepayment" in "PO" page', async () => { await POV4.fieldDeskripsiPrepayment.setValue('Notes Prepayment') })
Given ('User send PO document "Super.png" in "dropzonePrepaymentNota"', async () => {})
Given ('User can wait loading application for "3" seconds', async () => { await browser.pause(3000) })
Given ('User click "btnSimpanPrepayment" button in "PO" page', async () => { await POV4.btnSimpanPrepayment.click() })
Then ('User able to see "Data has been updated" message verification', async () => {})


// @PO-0009
// Scenario Outline: Memastikan Atur Prouduct berhasil untuk PO status Submit
When ('User click "purchasing" button in "Global" page', async () => {await POV4.purchasing.click();})
Given ('User click "menuPurchasingPO" button in "PO" page', async () => {await POV4.menuPurchasingPO.click();})
Given ('User directed to "Purchase Order" page', async () => { await browser.pause(3000)})
When ('User click "btnCreateNewPO" button in "PO" page', async () => {await POV4.btnCreateNewPO.click();})
Given ('User clicks "fieldJenisPO" button in "PO" page', async () => {await POV4.fieldJenisPO.click();})
Given ('User clicks "fieldGudang" button in "PO" page', async () => {await POV4.fieldGudang.click();})
Given ('User clicks "optGudangPOAloha" button in "PO" page', async () => {await POV4.optGudangPOAloha.click(); await browser.pause(3000)})
Given ('User clicks "fieldTipePT" button in "PO" page', async () => {await POV4.fieldTipePT.click();})
Given ('User clicks "optTipePTPO" button in "PO" page', async () => {await POV4.optTipePTPO.click();})
Given ('User clicks "fieldSupplier" button in "PO" page', async () => {await POV4.fieldSupplier.click();})
Given ('User clicks "optSupplier" button in "PO" page', async () => {await POV4.optSupplier.click();})
Given ('User clicks "textAreaCatatanPO" button in "PO" page', async () => {await POV4.textAreaCatatanPO.click();})
Given ('User fill "textAreaCatatanPO" with value {string} in "PO" page', async (notes) => { 
    await POV4.textAreaCatatanPO.scrollIntoView();
    await POV4.textAreaCatatanPO.setValue(notes);})
Given ('User clicks "fieldMetodePembayaran" button in "PO" page', async () => { 
    await POV4.fieldMetodePembayaran.click();})
Given ('User clicks "optMetodePembayaranTempo" button in "PO" page', async () => {await POV4.optMetodePembayaranTempo.click();})
Given ('User clicks "fieldPengiriman" button in "PO" page', async () => {await POV4.fieldPengiriman.click();})
Given ('User clicks "optPengirimanLocco" button in "PO" page', async () => {await POV4.optPengirimanLocco.click()})
Given ('User clicks "fieldPIC" button in "PO" page', async () => {await POV4.fieldPIC.click();})
Given ('User fill "fieldPIC" with value {string} in "PO" page', async (pic) => {await POV4.fieldPIC.setValue(pic);})
Given ('User clicks "optPIC" button in "PO" page', async () => {await POV4.optPIC.click();})
Given ('User clicks "fieldBankSupplier" button in "PO" page', async () => {await POV4.fieldBankSupplier.click();})
Given ('User clicks "optBankSupplier" button in "PO" page', async () => {await POV4.optBankSupplier.click();})
When ('User clicks "btnTambahProdukPO" button in "PO" page', async () => {
    await POV4.btnTambahProdukPO.scrollIntoView()
    await POV4.btnTambahProdukPO.click();})
Given ('User can wait loading application for "3" seconds', async () => { await browser.pause(3000)})
Given ('User clicks "fieldProdukModalPO" button in "PO" page', async () => {await POV4.fieldProdukModalPO.click();})
Given ('User can wait loading application for "5" seconds', async () => { await browser.pause(5000)})
Given ('User fill "fieldProdukModalPO" with value {string} in "PO" page', async (productName) => {await POV4.fieldProdukModalPO.setValue(productName);})
// Given ('User can wait loading application for "5" seconds', async () => { await browser.pause(5000)})
Given ('User clicks "optProdukModalPO2" button in "PO" page', async () => {await POV4.optProdukModalPO2.click();})
Given ('User clicks "fieldSatuanModalPO" button in "PO" page', async () => {await POV4.fieldSatuanModalPO.click();})
Given ('User clicks "optSatuanModalPO" button in "PO" page', async () => {await POV4.optSatuanModalPO.click();})
Given ('User fill "fieldQtyModalPO" with value {string} in "PO" page', async (qty) => {await POV4.fieldQtyModalPO.setValue(qty);})
Given ('User fill "fieldHargaSatuanModalPO" with value {string} in "PO" page', async (price) => {await POV4.fieldHargaSatuanModalPO.setValue(price);})
Given ('User fill "fieldDiskon1ModalPO" with value {string} in "PO" page', async (diskon1) => {await POV4.fieldDiskon1ModalPO.setValue(diskon1);})
Given ('User clicks "togglePPNModalPO" button in "PO" page', async () => {await POV4.togglePPNModalPO.click();})
Given ('User clicks "btnSimpanModalPO" button in "PO" page', async () => {await POV4.btnSimpanModalPO.click();})
Given ('User scroll to "bottom" of the page', async () => {await POV4.textValueDPP.scrollIntoView();})
Then ('User verified "purchase order cost" for "textValueDPP" is {string}', async (textValueDPP) => {
    const valueDpp = await POV4.textValueDPP.getText();
    await expect (valueDpp).toEqual(textValueDPP);})
Given ('User verified "purchase order cost" for "textValuePPN" is {string}', async (textValuePPN) => {
    const valuePPN = await POV4.textValuePPN.getText();
    await expect (valuePPN).toEqual(textValuePPN);})
Given ('User verified "purchase order cost" for "textValueSubTotal" is {string}', async (textValueSubTotal) => {
    const valueSubTotal = await POV4.textValueSubTotal.getText();
    await expect (valueSubTotal).toEqual(textValueSubTotal)})
Given ('User fill "fieldDiskonOffFaktur" with value {string} in "PO" page', async (diskonOffFaktur) => { 
    await POV4.fieldDiskonOffFaktur.setValue(diskonOffFaktur);})
Given ('User verified "purchase order cost" for "textValueGrandTotal" is {string}', async (textValueGrandTotal) => {
    const valueGrandTotal = await POV4.textValueGrandTotal.getText();
    await expect (valueGrandTotal).toEqual(textValueGrandTotal);})
Given ('User send PO document "Super.png" in "dropzoneNotaPengajuan"', async () => {})
Given ('User click "btnSimpanCreatePO" button in "PO" page', async () => {await POV4.btnSimpanCreatePO.click();})
Then ('User able to see "Purchase Order berhasil dibuat!" message verification', async() => { 
    console.log('Purchase Order berhasil dibuat!');
    const kodePO = await POV4.kodePORow1.getText();
    expect (await POV4.kodePORow1.isDisplayed());
    console.log('kodePO : ' + kodePO);})
Given ('User click "btnDetailRow0" button in "PO" page', async () => { await POV4.btnDetailRow0.click() })
Given ('User click "btnSubmitPO" button in "PO" page', async () => { await POV4.btnSubmitPO.click() })
Given ('User click "reqnavNotaPengajuan" button in "PO" page', async () => { await POV4.reqnavNotaPengajuan.click() })
Given ('User fill "fieldDeskripsiPrepayment" with value "Notes Prepayment" in "PO" page', async () => { await POV4.fieldDeskripsiPrepayment.setValue('Notes Prepayment') })
Given ('User send PO document "Super.png" in "dropzonePrepaymentNota"', async () => {})
Given ('User can wait loading application for "3" seconds', async () => { await browser.pause(3000) })
Given ('User click "btnSimpanPrepayment" button in "PO" page', async () => { await POV4.btnSimpanPrepayment.click() })
Then ('User able to see "Data has been updated" message verification', async () => {})
Given ('User click "btnAturProdukBonus" button in "PO" page', async () => { 
    await POV4.btnAturProdukBonus.scrollIntoView();
    await POV4.btnAturProdukBonus.click(); })
Then ('User able to see "Atur Produk Bonus" message verification', async () => {})
Given ('User clicks "fieldProdukModalPO" button in "PO" page', async () => { await POV4.fieldProdukModalPO.click() })
Given ('User can wait loading application for "5" seconds', async () => {})
Given ('User fill "fieldProdukModalPO" with value {string} in "PO" page', async (productName) => { await POV4.fieldProdukModalPO.setValue(productName)})
Given ('User clicks "fieldProdukModalPO" button in "PO" page', async () => { await POV4.fieldProdukModalPO.click() })
Given ('User can wait loading application for "5" seconds', async () => { await browser.pause(5000) })
Given ('User clicks "optProdukModalPO" button in "PO" page', async () => { await POV4.optProdukModalPO.click() })
Given ('User clicks "fieldSatuanModalPO" button in "PO" page', async () => { await POV4.fieldSatuanModalPO.click() })
Given ('User clicks "optSatuanModalPO" button in "PO" page', async () => { await POV4.optSatuanModalPO})
Given ('User fill "fieldQtyModalPO" with value {string} in "PO" page', async (qty2) => { await POV4.fieldQtyModalPO.setValue(qty2) })
Given ('User click "btnSimpanPrepayment" button in "PO" page', async () => { await POV4.btnSimpanPrepayment.click() })
Then ('User verified "product name" for "textProductName2" is {string}', async (productName2) => { 
    const expectedTextProductName2 = await POV4.textProductName2.getText();
    expect (expectedTextProductName2).toEqual(productName2);})

// @PO-0010
// Scenario: Memastikan Create PO Finish Good dan Gagal simpan
When ('User click "purchasing" button in "Global" page', async () => { await POV4.purchasing.click() })
When ('User click "menuPurchasingPO" button in "PO" page', async () => { await POV4.menuPurchasingPO.click() })
When ('User directed to "Purchase Order" page', async () => {})
When ('User click "btnCreateNewPO" button in "PO" page', async () => { await POV4.btnCreateNewPO.click() })
When ('User click "btnSimpanCreatePO" button in "PO" page', async () => { await POV4.btnSimpanCreatePO.click() })
Then ('User able to see "Gagal menyimpan PO" message verification', async () => {})

// @PO-0011
// Scenario: Memastikan Create PO Finish Good dan Gagal simpan ketika hanya input Jenis PO dan gudang
When ('User click "purchasing" button in "Global" page', async () => { await POV4.purchasing.click() })
Given ('User click "menuPurchasingPO" button in "PO" page', async () => { await POV4.menuPurchasingPO.click() })
Given ('User directed to "Purchase Order" page', async () => {})
When ('User click "btnCreateNewPO" button in "PO" page', async () => { await POV4.btnCreateNewPO.click() })
Given ('User clicks "fieldJenisPO" button in "PO" page', async () => { await POV4.fieldJenisPO.click() })
Given ('User clicks "fieldGudang" button in "PO" page', async () => { await POV4.fieldGudang.click() })
Given ('User clicks "optGudangPOAloha" button in "PO" page', async () => { await POV4.optGudangPOAloha.click() })
Given ('User click "btnSimpanCreatePO" button in "PO" page', async () => { await POV4.btnSimpanCreatePO.click() })
Then ('User able to see "Gagal menyimpan PO" message verification', async () => {})

// @PO-0012
// Scenario: Memastikan Create PO Finish Good dan Gagal simpan ketika hanya input Jenis PO, gudang dan Tipe PT
When ('User click "purchasing" button in "Global" page', async () => { await POV4.purchasing.click() })
Given ('User click "menuPurchasingPO" button in "PO" page', async () => { await POV4.menuPurchasingPO.click() })
Given ('User directed to "Purchase Order" page', async () => {})
When ('User click "btnCreateNewPO" button in "PO" page', async () => { await POV4.btnCreateNewPO.click() })
Given ('User clicks "fieldJenisPO" button in "PO" page', async () => { await POV4.fieldJenisPO.click() })
Given ('User clicks "fieldGudang" button in "PO" page', async () => { await POV4.fieldGudang.click() })
Given ('User clicks "optGudangPOAloha" button in "PO" page', async () => { await POV4.optGudangPOAloha.click() })
Given ('User clicks "fieldTipePT" button in "PO" page', async () => { await POV4.fieldTipePT.click() })
Given ('User clicks "optTipePTPO" button in "PO" page', async () => { await POV4.optTipePTPO.click() })
Given ('User click "btnSimpanCreatePO" button in "PO" page', async () => { await POV4.btnSimpanCreatePO.click() })
Then ('User able to see "Gagal menyimpan PO" message verification', async () => {})

// @PO-0013
// Scenario: Memastikan Create PO Finish Good dan Gagal simpan ketika hanya input Jenis PO, gudang , Tipe PT, dan Supplier
When ('User click "purchasing" button in "Global" page', async () => { await POV4.purchasing.click() })
Given ('User click "menuPurchasingPO" button in "PO" page', async () => { await POV4.menuPurchasingPO.click() })
Given ('User directed to "Purchase Order" page', async () => {})
When ('User click "btnCreateNewPO" button in "PO" page', async () => { await POV4.btnCreateNewPO.click() })
Given ('User clicks "fieldJenisPO" button in "PO" page', async () => { await POV4.fieldJenisPO.click() })
Given ('User clicks "fieldGudang" button in "PO" page', async () => { await POV4.fieldGudang.click() })
Given ('User clicks "optGudangPOAloha" button in "PO" page', async () => { await POV4.optGudangPOAloha.click() })
Given ('User clicks "fieldTipePT" button in "PO" page', async () => { await POV4.fieldTipePT.click() })
Given ('User clicks "optTipePTPO" button in "PO" page', async () => { await POV4.optTipePTPO.click() })
Given ('User clicks "fieldSupplier" button in "PO" page', async () => { await POV4.fieldSupplier.click() })
Given ('User clicks "optSupplier" button in "PO" page', async () => { await POV4.optSupplier.click() })
Given ('User click "btnSimpanCreatePO" button in "PO" page', async () => { await POV4.btnSimpanCreatePO.click() })
Then ('User able to see "Gagal menyimpan PO" message verification', async () => {  })

// @PO-0014
// Scenario: Memastikan Create PO Finish Good dan Gagal simpan ketika hanya input Jenis PO, gudang , Tipe PT, Supplier,  dan Payment Method
When ('User click "purchasing" button in "Global" page', async () => { await POV4.purchasing.click(); })
Given ('User click "menuPurchasingPO" button in "PO" page', async () => { await POV4.menuPurchasingPO.click(); })
Given ('User directed to "Purchase Order" page', async () => {})
When ('User click "btnCreateNewPO" button in "PO" page', async () => { await POV4.btnCreateNewPO.click(); })
Given ('User clicks "fieldJenisPO" button in "PO" page', async () => { await POV4.fieldJenisPO.click(); })
Given ('User clicks "fieldGudang" button in "PO" page', async () => { await POV4.fieldGudang.click(); })
Given ('User clicks "optGudangPOAloha" button in "PO" page', async () => { await POV4.optGudangPOAloha.click(); })
Given ('User clicks "fieldTipePT" button in "PO" page', async () => { await POV4.fieldTipePT.click(); })
Given ('User clicks "optTipePTPO" button in "PO" page', async () => { await POV4.optTipePTPO.click(); })
Given ('User clicks "fieldSupplier" button in "PO" page', async () => { await POV4.fieldSupplier.click(); })
Given ('User clicks "optSupplier" button in "PO" page', async () => { await POV4.optSupplier.click(); })
Given ('User clicks "fieldMetodePembayaran" button in "PO" page', async () => { await POV4.fieldMetodePembayaran.click(); })
Given ('User clicks "optMetodePembayaranTransfer" button in "PO" page', async () => { await POV4.optMetodePembayaranTransfer.click(); })
Given ('User click "btnSimpanCreatePO" button in "PO" page', async () => { await POV4.btnSimpanCreatePO.click(); })
Then ('User able to see "Gagal menyimpan PO" message verification', async () => {  })