import { Given, When, Then } from '@cucumber/cucumber';
import setoranPage from '../../pageobjects/Procurement/setoranPage';
import path = require('path');

const setoran = setoranPage;

When ('User click "navMenuFinance" in global page', async() => {
    // await browser.waitUntil(async() => {
    //     const isDisplayed = await setoran.navMenuFinance.isDisplayed();
    //     return isDisplayed;
    // }, {
    //     timeout:10000,
    //     timeoutMsg: 'navMenuFinance is not displayed'
        
    // })
    // await setoran.navMenuFinance.click();

    const coba = 5;  
for (let i = 0; i < coba; i++) {
    try { await browser.waitUntil(async () => {
            const isDisplayed = await setoran.navMenuFinance.isDisplayed();
            return isDisplayed;
        }, {
            timeout: 10000, 
            timeoutMsg: 'navMenuFinance is not displayed'
        });

        await setoran.navMenuFinance.click();
        console.log(`Attempt ${i + 1}: Successfully clicked navMenuFinance`);
        break;  

    } catch (error) {
        console.log(`Attempt ${i + 1}: Failed to click navMenuFinance. Retrying...`);
        
        if (i === coba - 1) {
            console.error('Max attempts reached. navMenuFinance could not be clicked.');
            throw error;  
        }

        await browser.pause(1000);  
    }
}
})


When ('User click "menuSetoran"', async() => {
    await setoran.menuSetoran.scrollIntoView();
    await setoran.menuSetoran.click();
})

Given ('User click "btnBuatSetoranNew"', async() => {
    await browser.waitUntil( async() => {
        const isClickable = await setoran.btnBuatSetoranNew.isClickable();
        return isClickable;
    }, {
        timeout:10000,
        timeoutMsg: 'btnBuatSetoranNew is not clickable'
    }
)
    await setoran.btnBuatSetoranNew.click();
})


When ('User click "fieldTipeOrder" in setoran page', async() => {
    await setoran.fieldTipeOrder.click();
    await browser.pause(1000);
})


When ('User click "optTipeOrder0" in setoran page', async() => {
    await setoran.optTipeOrder0.click();
    await browser.pause(1000);
})


When ('User click "optTipeOrder1" in setoran page', async() => {
    await setoran.optTipeOrder1.click();
    await browser.pause(1000);
})


When ('User click "fieldGudang" in setoran page', async() => {
    await setoran.fieldGudang.click();
    await browser.pause(1000);
})


When ('User click "optGudang0" in setoran page', async() => {
    await setoran.optGudang0.click();
    await browser.pause(1000);
})


When ('User click "fieldInputNamaKurir" in setoran page', async() => {
    await setoran.fieldInputNamaKurir.click();
})


When ('User input {string} inhouse into "fieldInputNamaKurir"', async(namaKurir) => {
    await setoran.fieldInputNamaKurir.setValue(namaKurir);
    await browser.keys(['Enter']);  

    await browser.waitUntil( async() => {
        const isDisplayed = await setoran.optNamaKurirInhouse.isDisplayed();
        return isDisplayed;
    }, {
        timeout: 10000,
        timeoutMsg : 'cannot input kurir name'
    })
    await browser.pause(1000);
    
})


When ('User input {string} vendor into "fieldInputNamaKurir"', async(namaKurir) => {
    await setoran.fieldInputNamaKurir.setValue(namaKurir);
    await browser.keys(['Enter']);  

    await browser.waitUntil( async() => {
        const isDisplayed = await setoran.optNamaKurirVendor.isDisplayed();
        return isDisplayed;
    }, {
        timeout: 10000,
        timeoutMsg : 'cannot input kurir name'
    })
    await browser.pause(1000);
    
})


When ('User click "aksiKonfirmasi0" in setoran page', async() => {
    await setoran.aksiKonfirmasi0.scrollIntoView();
    await setoran.aksiKonfirmasi0.click();
})


When ('User click "aksiKonfirmasi1" in setoran page', async() => {
    await setoran.aksiKonfirmasi1.scrollIntoView();
    await browser.pause(2000);
    await setoran.aksiKonfirmasi1.click();
})


When ('User click "fieldInputBayarCash" in modal konfirmasi setoran', async() => {
    await setoran.fieldInputBayarCash.click();
})


When ('User input {string} into "fieldInputBayarCash"', async(cash) => {
    for (const int of cash) {
        await setoran.fieldInputBayarCash.setValue(int);
        await browser.pause(50);
    }
    
})


When ('User upload image to "uploadImage1" in modal konfirmasi button', async() => {
    const uploadElement = await setoran.uploadImage1;

    await uploadElement.waitForExist({ timeout: 5000 });

    await browser.execute((el:HTMLElement) => {
        el.style.display = 'block';
    }, uploadElement);
    const filePath = path.resolve('C:\\Users\\Asus\\Documents\\git\\griya-super\\Images\\Product Banner Design.jpg');
    const uploadFile = await browser.uploadFile(filePath)

    await uploadElement.setValue(uploadFile);
    await browser.keys(['Enter'])
})


When ('User click "fieldInputBuktiTF1" in modal konfirmasi button', async() => {
    await setoran.fieldInputBuktiTF1.click();
}) 


When ('User input {string} into "fieldInputBuktiTF1"', async(cash) => {
    for (const int of cash) {
        await setoran.fieldInputBuktiTF1.setValue(int);
        await browser.pause(50);
    }
})


When ('User click "btnSimpanModal" in modal konfirmasi button', async() => {
    await setoran.btnSimpanModal.click();
}) 


When ('User click "btnBuatSetoran" in setoran page', async() => {
    await setoran.btnBuatSetoran.click();
}) 


When ('User click "btnSayaYakin" in setoran page', async() => {
    await setoran.btnSayaYakin.click();
})


When ('User delete "hapusRow1" in setoran page', async() => {
    // await setoran.hapusRow1.scrollIntoView();
    // const coba = 5;
    await browser.waitUntil(async() => {
        await setoran.hapusRow1.click();
        const isExisting = await setoran.btnConfirmDelete.isExisting();
        return isExisting;
    }, {
        timeout:10000,
        timeoutMsg: 'btnConfirmDelete is not isExisting'
    })

    await browser.pause(1000);

    if (await setoran.btnConfirmDelete.isClickable()) {
        await setoran.btnConfirmDelete.click();
    } else {
        console.log('Repeating the step...')
        await browser.refresh()
    }
})


When ('User delete "hapusRow2" in setoran page', async() => {
    await setoran.hapusRow2.scrollIntoView();
    await setoran.hapusRow2.click();
    await setoran.btnConfirmDelete.click();

})


Then ('User able to see successfull message create setoran', async() => {
    await browser.pause(5000);
}) 


When ('User attach file import CSV inhouse', async() => {
    await setoran.btnImportCSV.click();
    await browser.pause(3000);

    const uploadElement = await setoran.importCSVModal;
    await uploadElement.waitForExist({ timeout: 5000 });
    await browser.execute((el:HTMLElement) => {
        el.style.display = 'block';
    }, uploadElement);
    const filePath = path.resolve('C:\\Users\\Asus\\Documents\\git\\griya-super\\file-csv\\template-inhouse.csv');
    const uploadFile = await browser.uploadFile(filePath)

    await uploadElement.setValue(uploadFile);
    await browser.keys(['Enter'])
    await browser.pause(5000);
    await setoran.btnImport.click();
  
})


When ('User attach file import CSV vendor', async() => {
    await setoran.btnImportCSV.click();
    await browser.pause(3000);

    const uploadElement = await setoran.importCSVModal;
    await uploadElement.waitForExist({ timeout: 5000 });
    await browser.execute((el:HTMLElement) => {
        el.style.display = 'block';
    }, uploadElement);
    const filePath = path.resolve('file-csv\\template-vendor.csv');
    const uploadFile = await browser.uploadFile(filePath)

    await uploadElement.setValue(uploadFile);
    await browser.keys(['Enter'])
    await browser.pause(5000);
    await setoran.btnImport.click();
  
})


When ('User delete nominal inside "fieldInputBayarCash"', async() => {
    await setoran.fieldInputBayarCash.click();
    await setoran.btnClearRevisiBayar.click();
})