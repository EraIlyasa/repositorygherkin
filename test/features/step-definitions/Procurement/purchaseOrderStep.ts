import { Given, When, Then } from "@cucumber/cucumber";
import purchaseOrderPage from "../../pageobjects/Procurement/purchaseOrderPage";
import path from "path";
const POV4 = purchaseOrderPage;



When('User click "navMenuPurchasing" button in "Global" page', async () => {
  await browser.waitUntil(async() => {
    const isClickable = await POV4.navMenuPurchasing.isClickable();
    return isClickable;
  }, {
    timeout:10000,
    timeoutMsg: 'NavMenuPurchasing still not clickable'
  })  
  await POV4.navMenuPurchasing.click();
  });
  
  
  When('User click "menuPurchasingPO" button in "PO" page', async () => {
    try { 
      await browser.waitUntil(async () => {
        return (await POV4.menuPurchasingPO.isDisplayed() && await POV4.menuPurchasingPO.isClickable());
    }, {
        timeout: 30000,
        timeoutMsg: 'Element not clickable after 30 seconds'
    });
        console.log("Element is clickable, clicking now...");
        await POV4.menuPurchasingPO.click();
        await browser.pause(5000);
    } catch (error) {
    console.error("Error occurred while clicking menuPurchasingPO:", error);
}
  });
  
  
  When('User directed to "Purchase Order" page', async () => {
    await browser.pause(2000);
  });
  
  
  When('User click "btnCreateNewPO" button in "PO" page', async () => {
    await browser.waitUntil(async() => {
      const isClickable = await POV4.btnCreateNewPO.isClickable();
      return isClickable;
    }, {
      timeout:20000,
      timeoutMsg:'btnCreateNewPO still not clickable'
    })
    await POV4.btnCreateNewPO.click();
  });
  
  
  When('User clicks "fieldJenisPO" button in "PO" page', async () => {
    await POV4.fieldJenisPO.click();
  });
  
  
  When('User clicks "fieldGudang" button in "PO" page', async () => {
    await POV4.fieldGudang.click();
  });
  
  
  When('User clicks "optGudangPOAloha" button in "PO" page', async () => {
    await POV4.optGudangPOAloha.click();
    await browser.pause(3000);
  });
  
  
  When('User clicks "fieldTipePT" button in "PO" page', async () => {
    await POV4.fieldTipePT.click();
  });
  
  
  When('User clicks "optTipePTPO" button in "PO" page', async () => {
    await POV4.optTipePTPO.click();
  });
  
  
  When('User clicks "fieldSupplier" button in "PO" page', async () => {
    await POV4.fieldSupplier.click();
  });
  
  
  When('User clicks "optSupplier" button in "PO" page', async () => {
    await POV4.optSupplier.click();
  });
  
  
  When('User clicks "textAreaCatatanPO" button in "PO" page', async () => {
    await POV4.textAreaCatatanPO.click();
  });
  
  
  When(
    'User fill "textAreaCatatanPO" with value {string} in "PO" page',
    async (notes) => {
      await POV4.textAreaCatatanPO.scrollIntoView();
      await POV4.textAreaCatatanPO.setValue(notes);
    }
  );
  
  
  When('User clicks "fieldMetodePembayaran" button in "PO" page', async () => {
    await POV4.fieldMetodePembayaran.click();
  });
  
  
  When(
    'User clicks "optMetodePembayaranTransfer" button in "PO" page',
    async () => {
      await POV4.optMetodePembayaranTransfer.click();
    }
  );
  
  
  When('User clicks "fieldPengiriman" button in "PO" page', async () => {
    await POV4.fieldPengiriman.scrollIntoView();
    await browser.pause(1000);
    await POV4.fieldPengiriman.click();
  });
  
  
  When('User clicks "optPengirimanLocco" button in "PO" page', async () => {
    await POV4.optPengirimanLocco.click();
  });
  
  
  When('User clicks "fieldPIC" button in "PO" page', async () => {
    await POV4.fieldPIC.click();
  });
  
  
  When('User fill "fieldPIC" with value {string} in "PO" page', async (pic) => {
    await POV4.fieldPIC.setValue(pic);
  });
  
  
  When('User clicks "optPIC" button in "PO" page', async () => {
    await POV4.optPIC.click();
  });
  
  
  When('User clicks "fieldBankSupplier" button in "PO" page', async () => {
    await POV4.fieldBankSupplier.click();
  });
  
  
  When('User clicks "optBankSupplier" button in "PO" page', async () => {
    await POV4.optBankSupplier.click();
  });
  
  
  When('User clicks "btnTambahProdukPO" button in "PO" page', async () => {
    await POV4.btnTambahProdukPO.scrollIntoView();
    await POV4.btnTambahProdukPO.click();
  });
  
  
  When('User can wait loading application for "3" seconds', async () => {
    await browser.pause(3000);
  });
  
  
  When('User clicks "fieldProdukModalPO" button in "PO" page', async () => {
    await POV4.fieldProdukModalPO.click();
  });
  
  
  When('User can wait loading application for "5" seconds', async () => {
    await browser.pause(5000);
  });
  
  
  When('User fill "fieldProdukModalPO" with value {string} in "PO" page', async (productName) => {
      await POV4.fieldProdukModalPO.setValue(productName);
  })


  When ('User fill "fieldProdukModalPO" produk bonus with value {string} in "PO" page', async(productName2) =>{
    await POV4.fieldProdukModalPO.setValue(productName2)
  })
  
  
  // Given ('User can wait loading application for "5" seconds', async () => { await browser.pause(5000)})
  
  
  When('User clicks "optProdukModalPO2" button in "PO" page', async () => {
    await POV4.optProdukModalPO2.click();
  });


  When('User clicks "optProdukModalPO" button in "PO" page', async () => {
    await POV4.optProdukModalPO.click();
  });
  
  
  When('User clicks "fieldSatuanModalPO" button in "PO" page', async () => {
    await POV4.fieldSatuanModalPO.click();
  });

  
  When('User clicks "optSatuanModalPO" button in "PO" page', async () => {
    await POV4.optSatuanModalPO.click();
  });


  When ('User fill "fieldQtyModalPO" with value {string} in "PO" page', async (qty) => {
      await POV4.fieldQtyModalPO.setValue(qty);
    });

  
  When (' User fill "fieldQtyModalPO" with value {string} in "PO" page', async (qty2) => {
    await POV4.fieldQtyModalPO.setValue(qty2);
  });


  When ('User fill "fieldHargaSatuanModalPO" with value {string} in "PO" page', async (price) => {
      await POV4.fieldHargaSatuanModalPO.setValue(price);
    });


  When ('User fill "fieldDiskon1ModalPO" with value {string} in "PO" page', async (diskon1) => {
      await POV4.fieldDiskon1ModalPO.setValue(diskon1);
    });


  When ('User click "btnSimpanRPModal" button in request payment modal', async() => { 
      await POV4.btnSimpanRPModal.click(); 
  })


  When('User clicks "togglePPNModalPO" button in "PO" page', async () => {
    await POV4.togglePPNModalPO.click();
  });


  When('User clicks "btnSimpanModalPO" button in "PO" page', async () => {
    await POV4.btnSimpanModalPO.click();
  });


  When('User scroll to "bottom" of the page', async () => {
    await POV4.textValueDPP.scrollIntoView();
  });


  Then(
    'User verified "purchase order cost" for "textValueDPP" is {string}',
    async (textValueDPP: string) => {
      const valueDpp = await POV4.textValueDPP.getText();
      expect(await valueDpp).toEqual(textValueDPP);
    });


  Then ('User verified "purchase order cost" for "textValuePPN" is {string}', async (textValuePPN: string) => {
      const valuePPN = await POV4.textValuePPN.getText();
      expect(await valuePPN).toEqual(textValuePPN); 
    });


  Then ('User verified "purchase order cost" for "textValueSubTotal" is {string}', async (textValueSubTotal: string) => {
      const valueSubTotal = await POV4.textValueSubTotal.getText();
      expect(await valueSubTotal).toEqual(textValueSubTotal);}
  );


  When('User fill "fieldDiskonOffFaktur" with value {string} in "PO" page', async (diskonOffFaktur) => {
      await POV4.fieldDiskonOffFaktur.setValue(diskonOffFaktur);}
  );


  Then('User verified "purchase order cost" for "textValueGrandTotal" is {string}', async (textValueGrandTotal: string) => {
      const valueGrandTotal = await POV4.textValueGrandTotal.getText();
      expect(await valueGrandTotal).toEqual(textValueGrandTotal);
    }
  );


  When('User send PO document "Super.png" in "dropzoneNotaPengajuan"', async () => {}
  );


  When('User click "btnSimpanCreatePO" button in "PO" page', async () => {
    await POV4.btnSimpanCreatePO.click();
  });

  
  When ('User click "btnTambahProdukModalPO" button in "PO" page', async() => {
      await POV4.btnTambahProdukModalPO.click();
      await browser.pause(1000);
  });


  When ('User clicks "fieldProdukModalPO2" button in "PO" page', async() => {
      await POV4.fieldProdukModalPO2.click();
  });


  When ('And User fill "fieldProdukModalPO2" with value {string} in "PO" page', async(productName) => {
      await POV4.fieldProdukModalPO2.setValue(productName);
  });


  When ('User fill "fieldQtyModalPO2" with value {string} in "PO" page', async (qty) => {
    await browser.waitUntil(async() => {
      return await POV4.fieldQtyModalPO2.isClickable();
    }, {
      timeout:10000,
      timeoutMsg:'fieldQtyModalPO2 still not clickable'
    })  
    await POV4.fieldQtyModalPO2.setValue(qty);
  });


  When ('User fill "fieldHargaSatuanModalPO2" with value {string} in "PO" page', async (price) => {
      await POV4.fieldHargaSatuanModalPO2.setValue(price);
      await browser.pause(1000);

  });
  When ('User fill "fieldDiskon1ModalPO2" with value {string} in "PO" page', async (diskon1) => {
      await POV4.fieldDiskon1ModalPO2.setValue(diskon1);
  });


  When ('User clicks "togglePPNModalPO2" button in "PO" page', async () => {
      await POV4.togglePPNModalPO2.click();
  });
  

  Then ('', async () => {
      await browser.pause(5000);
      console.log("Purchase Order berhasil dibuat!");
    
      // await POV4.kodePORow1.doubleClick();
      // await POV4.btnSearch.click();
      // // await POV4.fieldInputSearch.setValue(kodePO)
      // // await POV4.fieldInputSearch.click();
      // await browser.keys(['Control', 'a']);
      // await browser.pause();
      // await browser.keys(['Control', 'c']);
    }
  );

  
  Then(' User able to see Gagal menyimpan PO message verification', async () => {
      await browser.closeWindow();
      // await browser.deleteSession();
      // await browser.url('http://v3-web-app-micro.staging.superapp.co.id/auth/login');
      // await browser.maximizeWindow();
  });
  
  Then ('User able to see Terdapat info yang belum lengkap message verification', async() => {
    await browser.waitUntil(async() => {
      await browser.pause(3000);
      return expect (await POV4.allertProdukDupl.isDisplayed());  
    }, {
      timeout:10000,
      timeoutMsg:'allertProdukDupl still not displayed'
    })
  });
  

  Then ('User "able" to see "alertPengajuan" in "PO" page', async() => {
      await browser.pause(3000);
  })
  
  
  Given ('User get url', async() => { 
      // await browser.closeWindow()
      // await browser.reloadSession({
      //     browserName: 'chrome'
      // });
      await browser.url('https://v3-web-app-micro.staging.superapp.co.id/finance/payment-request-v4');
      await browser.pause(10000);
  })
  
  
  When ('User input "kodePORow1" to "fieldInputSearch" from "PO"', async() => {
      const kodePO = await POV4.kodePORow1.getText();
      //expect(await POV4.kodePORow1.isDisplayed());
      console.log("kodePO : " + kodePO);
      //await POV4.btnSearch.click();
      await POV4.fieldInputSearch.setValue(kodePO)
      await POV4.fieldInputSearch.click();
      await browser.keys(['Control', 'a']);
      await browser.pause();
      await browser.keys(['Control', 'c']);
  
      await browser.pause(3000);
  })
  


When ('User clicks "btnCari" button in "Finance" page', async() => {
    await POV4.btnCari.click();
    await browser.pause(1000);
})


When ('User click "btnCari" in "PO" page', async()=> {
  await POV4.btnCari.click();
  await browser.pause(2000);
})


When ('User clicks "btnDetailRow0" button in "Finance" page', async() => {
    await POV4.btnDetailRow0.click();
    await browser.pause(1000);
})


When ('User clicks "btnApprove" button in "Finance" page', async() => {
    await POV4.btnApproveModalPR.click();
})


Then ('User able to see request payment confirmation "poCodeModal" is match', async() => {
    
})


When ('User clicks "btnSimpanModalPR" button in "Finance" page', async() => {
    await POV4.btnSimpanModalPR.click();
})


When ('User click "btnPrepayment" button in "PO" page', async() => {
  await POV4.btnPrepayment.click();
  await browser.pause(1000);
})

When ('User upload image to "imgUploadNotaPengajuan" in "PO" page', async() => {
  const uploadElement = await POV4.imgUploadNotaPengajuan;

  await uploadElement.waitForExist({ timeout: 10000 });

  await browser.execute((el:HTMLElement) => {
        el.style.display = 'block';
    }, uploadElement);
  const filePath = path.resolve('Images\\Product Banner Design.jpg');
  const uploadFile = await browser.uploadFile(filePath)

  await uploadElement.setValue(uploadFile);
  await browser.keys(['Enter'])
  await browser.pause(5000);
})


When ('User send "template-PO-RAW.csv" in "uploadFilePO" in "PO" page', async() =>{
  const uploadCSV = await POV4.uploadFilePO;
  await uploadCSV.waitForExist({timeout:10000})
  await browser.execute((el:HTMLElement) => {
    el.style.display = 'block';
  }, uploadCSV);
    const filePath = path.resolve('file-csv\\template-PO-RAW.csv');
    const uploadFile = await browser.uploadFile(filePath);
    await uploadCSV.setValue(uploadFile);
    await browser.keys(['Enter']);
    await browser.pause(2000);
})


When ('User send "template-PO-FG" in "uploadFilePO" in "PO" page', async() =>{
  const uploadCSV = await POV4.uploadFilePO;
  await uploadCSV.waitForExist({timeout:10000})
  await browser.execute((el:HTMLElement) => {
    el.style.display = 'block';
  }, uploadCSV);
    const filePath = path.resolve('file-csv\\template-PO-FG.csv');
    const uploadFile = await browser.uploadFile(filePath);
    await uploadCSV.setValue(uploadFile);
    await browser.keys(['Enter']);
    await browser.pause(2000);
})


When ('User send "template-invalid-qty-decimal-PO-FG" in "uploadFilePO" in "PO" page', async() => {
  const uploadCSV = await POV4.uploadFilePO;
  await uploadCSV.waitForExist({timeout:10000})
  await browser.execute((el:HTMLElement) => {
    el.style.display = 'block';
  }, uploadCSV);
    const filePath = path.resolve('file-csv\\template-invalid-qty-decimal-PO-FG.csv');
    const uploadFile = await browser.uploadFile(filePath);
    await uploadCSV.setValue(uploadFile);
    await browser.keys(['Enter']);
    await browser.pause(2000);
})



When ('User send "template-invalid-sku-PO-FG" in "uploadFilePO" in "PO" page', async() => {
  const uploadCSV = await POV4.uploadFilePO;
  await uploadCSV.waitForExist({timeout:10000})
  await browser.execute((el:HTMLElement) => {
    el.style.display = 'block';
  }, uploadCSV);
    const filePath = path.resolve('file-csv\\template-invalid-sku-PO-FG.csv');
    const uploadFile = await browser.uploadFile(filePath);
    await uploadCSV.setValue(uploadFile);
    await browser.keys(['Enter']);
    await browser.pause(2000);
})


When ('User send "template-invalid-sku-PO-RAW" in "uploadFilePO" in "PO" page', async() => {
  const uploadCSV = await POV4.uploadFilePO;
  await uploadCSV.waitForExist({timeout:10000})
  await browser.execute((el:HTMLElement) => {
    el.style.display = 'block';
  }, uploadCSV);
    const filePath = path.resolve('file-csv\\template-invalid-sku-PO-RAW.csv');
    const uploadFile = await browser.uploadFile(filePath);
    await uploadCSV.setValue(uploadFile);
    await browser.keys(['Enter']);
    await browser.pause(2000);
})


When ('User send "template-invalid-qty decimal-PO-RAW" in "uploadFilePO" in "PO" page', async() => {
  const uploadCSV = await POV4.uploadFilePO;
  await uploadCSV.waitForExist({timeout:10000})
  await browser.execute((el:HTMLElement) => {
    el.style.display = 'block';
  }, uploadCSV);
    const filePath = path.resolve('file-csv\\template-invalid-qty decimal-PO-RAW.csv');
    const uploadFile = await browser.uploadFile(filePath);
    await uploadCSV.setValue(uploadFile);
    await browser.keys(['Enter']);
    await browser.pause(2000);
})


When ('User upload image to "imgUploadRPNP" in request payment modal', async() => {
  const imgNotaPengajuan = await POV4.imgUploadRPNP;
  await imgNotaPengajuan.waitForExist({timeout:1000});

  await browser.execute((el:HTMLElement) => {
    el.style.display = 'block';
  }, imgNotaPengajuan);
  const filePath = path.resolve('Images\\Product Banner Design.jpg');
  const uploadFile = await browser.uploadFile(filePath);
  await imgNotaPengajuan.setValue(uploadFile);
  await browser.keys(['Enter']);
  await browser.pause(2000);
})


When ('User click "navNotaPengajuan"', async() => {
  await browser.waitUntil(async() => {
    await POV4.navNotaPengajuan.scrollIntoView();
    return POV4.navNotaPengajuan.isDisplayed();
  }, {
    timeout:10000,
    timeoutMsg:'navNotaPengajuan still not displayed'
  })
  await POV4.navNotaPengajuan.click();
  await browser.pause(1000);
})


When ('User click "reqNavNotaPengajuan" button in "PO" page', async() => {
  await POV4.reqNavNotaPengajuan.click();
  await browser.pause(1000);
})


When ('User fill "fieldDeskripsiPrepayment" with value "Notes Prepayment" in "PO" page', async() => {
  await POV4.fieldDeskripsiPrepayment.setValue('Notes Prepayment');
  await browser.pause(1000);

})


 When ('User click "btnDetailRow0" button in "PO" page', async() => {
  await POV4.btnDetailRow0.click();
  await browser.pause(2000);
 })


Then ('User able to see Data has been updated message verification', async() => {
  await browser.pause(3000);
})


 When ('User click "btnBatalRPModal" button in request payment modal', async() => {
  await POV4.btnBatalRPModal.click();
  await browser.pause(3000);
})


Then ('User verifiy the page', async() => {
  const isExist = await POV4.btnPrepayment.isExisting();

  try {
    expect (await isExist)
    console.log('The btnPrepayment is exist after cancel prepayment')
  } catch {
    console.log('The btnPrepayment is not exist after cancel prepayment')
  }
  
})


When ('User clicks "optMetodePembayaranTempo" button in "PO" page', async() => {
  await POV4.optMetodePembayaranTempo.click();
  await browser.pause(1000);

})


Then ('User "able" to see "allertNotaPengajuan" in "PO" page', async() => {
  await browser.waitUntil(async() => {
    const isDisplayed = await POV4.allertNotaPengajuan.isDisplayed();
    return isDisplayed;
  }, {
    timeout:10000,
    timeoutMsg:'allertNotaPengajuan still not displayed'
  })
  console.log('allertNotaPengajuan is displpayed')
})


Then ('User "able" to see "allertNotaPengajuanTempo" in "PO" page', async() => {
  await browser.waitUntil(async() => {
    return await POV4.allertNotaPengajuanTempo.isDisplayed;
  }, {
    timeout:10000,
    timeoutMsg:'allertNotaPengajuanTempo still not displayed after timeout'
  })
  await browser.pause(1000);
  console.log('allertNotaPengajuanTempo is displayed')
})


When ('User choose metode pembayaran {string}', async(metodePembayaran:string) => {
 
  if (metodePembayaran === 'Transfer'){
    (await POV4.getOptPembayaran('Transfer')).click();
  } else if (metodePembayaran === 'Cash On Delivery') {
    (await POV4.getOptPembayaran('Cash On Delivery')).click();
  } else if (metodePembayaran === 'Tempo') {
    (await POV4.getOptPembayaran('Tempo')).click();
  } 
})


When ('User click "btnSubmitPO" in detail page', async() => {
  await POV4.btnSubmitPO.click();
  await browser.pause(5000);
})


Then ('User able to see "[Rincian PO] Jumlah Payment request wajib diisi" message verification', async() => {
  await browser.waitUntil(async() => {
    return await POV4.allertRincianPO.isDisplayed();
  }, {
    timeout:10000,
    timeoutMsg:'allertRincianPO is displayed'
  })
  await browser.pause(2000);
})


When ('User click "fieldNominalPrepayment" button in "PO" page', async() =>{
  await POV4.fieldNominalPrepayment.click();
  await browser.pause(1000);


})
When ('User fill "fieldNominalPrepayment" with value "0" in "PO" page', async() =>{
  await browser.keys(['Control', 'a']);
  await browser.keys(['Delete']);
  await POV4.fieldNominalPrepayment.setValue('0');
})


Given ('User get create PO url', async() => {
  await browser.url('https://v3-web-app-micro.staging.superapp.co.id/purchasing/purchase-order/new');
  await browser.pause(5000);
})


When ('User get kode invoice PO', async() => {
  kodeInvoice = await POV4.kodePORow1.getText();
  console.log('Kode Invoice : ' + kodeInvoice);
  await browser.pause(2000);
})
let kodeInvoice: string
export {kodeInvoice}


When ('User clicks "optJenisPORM" button in "PO" page', async() => {
  await POV4.optJenisPORM.click();
  await browser.pause(1000);
})


When ('User clicks "optProdukModalPORaw" button in "PO" page', async() => {
  await POV4.optProdukModalPORaw0.click();
  await browser.pause(1000);
})


When ('User back to previous in page "PO"', async() =>{
  await browser.back();
  await browser.pause(5000);
})


When ('User click "btnSubmitImport" button in "PO" page', async() => {
  await POV4.btnSubmitImport.click();
  await browser.pause(5000);
})


When ('User click "btnImportCSVPO" button in "PO" page', async() => {
  await POV4.btnImportCSVPO.scrollIntoView();
  await POV4.btnImportCSVPO.click();
  await browser.pause(1000);
})


When ('User click "btnEditPO" button in "PO" page', async() => {
  await POV4.btnEditPO.click();
  await browser.pause(2000);
})


When ('User click "fieldDeskripsiNota" in "PO" page', async() => {
  await POV4.fieldDeskripsiNota.scrollIntoView();
  await POV4.fieldDeskripsiNota.click();
  await browser.pause(1000);
}) 


When ('User input {string} into "fieldDeskripsiNota"', async(desc:string) => {
  await POV4.fieldDeskripsiNota.setValue(desc);
  await browser.pause(1000);
})


Given ('User get url to "PO" page', async() => {
  await browser.url('https://v3-web-app-micro.staging.superapp.co.id/purchasing/purchase-order');
  await browser.pause(5000);
})


When ('User click "btnSearch" in "PO" page', async() => {
  await POV4.btnSearch.click();
  await browser.pause(1000);
})


When ('User input "kodeInvoice" into "fieldInputSearch"', async() => {
  await POV4.fieldInputSearch.setValue(kodeInvoice);
  await browser.pause(1000);
})


// Then ('User verified "status po" for "textStatusPO" is {string}', async(textStatusPO) => {
//   await browser.waitUntil(async() => {
//     return await POV4.textStatusPO.isDisplayed();
//   }, {
//     timeout:10000,
//     timeoutMsg:'textStatusPO still can not scroll'
//   })
//   const textStatus = await POV4.textStatusPO.getText();
//   console.log(textStatus);
//   expect (await textStatus).toEqual(textStatusPO);

// })


Then ('User able to see Purchase Order berhasil dibuat! message', async() => {
  await browser.pause(5000);
})


Given ('a',async() => {
  await browser.url('https://v3-web-app-micro.staging.superapp.co.id/purchasing/purchase-order');
  await browser.pause(5000);
})


When ('User send "template-PO-FG-2" in "uploadFilePO" in "PO" page', async() => {
  const uploadCSV = await POV4.uploadFilePO;
  await uploadCSV.waitForExist({timeout:10000})
  await browser.execute((el:HTMLElement) => {
    el.style.display = 'block';
  }, uploadCSV);
    const filePath = path.resolve('file-csv\\template-PO-FG-2.csv');
    const uploadFile = await browser.uploadFile(filePath);
    await uploadCSV.setValue(uploadFile);
    await browser.keys(['Enter']);
    await browser.pause(2000);
})


When ('User send "template-PO-RAW-2.csv" in "uploadFilePO" in "PO" page', async() => {
  const uploadCSV = await POV4.uploadFilePO;
  await uploadCSV.waitForExist({timeout:10000})
  await browser.execute((el:HTMLElement) => {
    el.style.display = 'block';
  }, uploadCSV);
    const filePath = path.resolve('file-csv\\template-PO-RAW-2.csv');
    const uploadFile = await browser.uploadFile(filePath);
    await uploadCSV.setValue(uploadFile);
    await browser.keys(['Enter']);
    await browser.pause(2000);
})


When ('User click "btnEditProdukPO" in "Edit PO" page', async() => {
  await POV4.btnEditProdukPO.scrollIntoView();
  await POV4.btnEditProdukPO.click();
  await browser.pause(1000);
})


When ('User click "btnHapusRow1ModalPO" in "Edit produk modal"', async() => {
  await browser.waitUntil(async() => {
    return POV4.btnHapusRow1ModalPO.isClickable();
  }, {
    timeout:10000,
    timeoutMsg:'btnHapusRow1ModalPO still not clickable'
  })
  await POV4.btnHapusRow1ModalPO.click();

})


When ('User click "btnSimpanModalPO" in "Edit produk modal"', async() => {
  await POV4.btnSimpanModalPO.click();
  await browser.pause(3000);
})


When ('User click "btnCancelPO" in "PO" page', async() => {
  await browser.waitUntil(async() => {
    await POV4.btnCancelPO.scrollIntoView();
    return POV4.btnCancelPO.isDisplayed();
  }, {
    timeout:10000,
    timeoutMsg:'btnCancelPO still not displayed'
  })
  await POV4.btnCancelPO.click();
  await browser.pause(1000);
})


When ('User click "btnLanjutkanCancel" to proceed cancelation', async() => {
  await POV4.btnLanjutkanCancel.click();
  await browser.pause(1000);
})


Then ('User able to see Data Berhasil Dibatalkan message verification', async() => {
  await POV4.textVerification.isDisplayed();
  await browser.pause(3000);
})


Given ('User get to dashboard url', async() =>{
  await browser.url('https://v3-web-app-micro.staging.superapp.co.id/dashboard');
  await browser.pause(7000);
})


When ('User clicks "optProdukModalPORaw1" button in "PO" page', async() => {
  await POV4.optProdukModalPORaw1.click();
  await browser.pause(1000);
})


When ('User click "btnAturProdukBonus" in "PO" page', async() =>{
  await POV4.btnAturProdukBonus.scrollIntoView();
  await POV4.btnAturProdukBonus.click();
  await browser.pause(1000);
})


When ('User clicks "fieldSatuanModalPOId" button in "PO" page', async() => {
  await POV4.fieldSatuanModalPOId.click();
  await browser.pause(1000);
})


Then ('User able to see Gagal menyimpan PO message verification', async() => {
  await browser.waitUntil(async() => {
      await browser.pause(5000);
      return expect (await POV4.allertKosong.isDisplayed())
  }, {
    timeout:10000,
    timeoutMsg:'allertKosong still not displayed'
  })
})


When ('User clicks "fieldSatuanModalPO2" button in "PO" page', async() => {
  await POV4.fieldSatuanModalPO2.click();
  await browser.pause(1000);
})


When ('User clicks "optSatuanModalPO2" button in "PO" page', async() => {
  await POV4.optSatuanModalPO2.click();
  await browser.pause(1000);
})


Then ('User able to see {string} message verification', async(alert) => {
  let A = '3 INVALID_ARGUMENT: Item Automated Raw [Bag] [RAW-0140] Duplikat';
  let B = '3 INVALID_ARGUMENT: raw material dengan SKU: RAW-01400 tidak ditemukan';
  let C = '3 INVALID_ARGUMENT: Quantity RAW-0140 Automated Raw [Bag] harus bilangan bulat';
  let D = '3 INVALID_ARGUMENT: finished good dengan SKU: EMT-01400 tidak ditemukan'
  let E = '3 INVALID_ARGUMENT: Item Automated Testing hehe [Bag] [AGR-0016] Duplikat';
  let F = ''

  if (alert === A) {
    await POV4.allertCSVDup.waitForExist({timeout:10000, timeoutMsg:'allertCSVDup still not displayed'});
    const textAlert = await POV4.allertCSVDup.getText();
    console.log(textAlert);
    expect (await textAlert).toEqual(alert);
    await browser.pause(2000);

  } else if (alert === B) {
    await POV4.allertCSVDup.waitForExist({timeout:10000, timeoutMsg:'allertCSVDup still not displayed'});
    const textAlert = await POV4.allertCSVDup.getText();
    console.log(textAlert);
    expect (await textAlert).toEqual(alert);
    await browser.pause(2000);

  } else if (alert === C) {
    await POV4.allertCSVDup.waitForExist({timeout:10000, timeoutMsg:'allertCSVDup still not displayed'});
    const textAlert = await POV4.allertCSVDup.getText();
    console.log(textAlert);
    expect (await textAlert).toEqual(alert);
    await browser.pause(2000);
  }
  
})


Then ('User verified "status po" for "textStatusPO" is {string}', async(textStatusPO) => {
    if (textStatusPO === 'Set') {
      let set = await POV4.textStatusPO.getText();
      expect (await set).toEqual(textStatusPO);
      await browser.pause(1000);

    } else if (textStatusPO === 'Submitted') {
      let submitted = await POV4.textStatusPO.getText();
      expect (await submitted).toEqual(textStatusPO);
      await browser.pause(1000);

    } else if (textStatusPO === 'Cancelled') {
      let cancelled = await POV4.textStatusPO.getText();
      expect (await cancelled).toEqual(textStatusPO);
      await browser.pause(1000);

    } else if (textStatusPO === 'Closed') {
      let closed = await POV4.textStatusPO.getText();
      expect (await closed).toEqual(textStatusPO);
      await browser.pause(1000);

    } else if (textStatusPO === 'Force Closed') {
      let forceClosed = await POV4.textStatusPO.getText();
      expect (await forceClosed).toEqual(textStatusPO);
      await browser.pause(1000);
    }
})


When ('User clicks "optJenisPOFinishGood" button in "PO" page', async() => {
  await POV4.optJenisPOFinishGood.click();
  await browser.pause(1000);
})


When ('User click "btnSimpanPrepayment" button in "PO" page', async() => {
  await POV4.btnSimpanPrepayment.click();
  await browser.pause(2000);
})


Then ('User verified "product name" for "textProductName2" is {string}', async(productName2) => {
  let productName = await POV4.textProductName2.getText();
  console.log(productName)
  expect (await productName).toEqual(productName2);
  await browser.pause(2000);
})


When ('User fill "fieldProdukModalPO2" with value {string} in "PO" page', async(productName) => {
  await POV4.fieldProdukModalPO2.setValue(productName);
  await browser.pause(1000);
})
// Then ('User able to see "Purchase Order berhasil dibuat!" message', async() => {
//   await browser.pause(5000);
// })