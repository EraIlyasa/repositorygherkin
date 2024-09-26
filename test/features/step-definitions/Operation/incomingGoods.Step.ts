import {  When, Then } from '@cucumber/cucumber'
import incomingGoodsPage from '../../pageobjects/Operation/incomingGoodsPage'
import purchaseOrder from '../../pageobjects/Procurement/purchaseOrderPage';
import { error } from 'console';

const incomingGoods = incomingGoodsPage;
const POV4 = purchaseOrder;

When ('When User click "navMenuFinances" button in "Global" page', async() => {
    await incomingGoods.navMenuFinances.click();
})


When ('User send PO document "Super.png" in "dropzonePrepaymentNota"', async() => {

})


When ('User click "menuPaymentRequest" button in "Finance" page', async() => {
    await incomingGoods.menuPaymentRequest.click();
})


When ('When User directed to "List semua payment request yang perlu disetujui" page', async() => {
    await browser.pause(3000);
})


When ('User click "btnSearch" button in "Finance" page', async() => {
    await incomingGoods.btnSearch.click();
})


When ('User clicks "btnSetujuiRequest" button in "Finance" page', async() => {
    await incomingGoods.btnSetujuiRequest.click();
})


When ('User able to see request payment confirmation "kodePOModal" is match', async(kodePO) => {
    // const setujuiRequestModal = await incomingGoods.modalSetujuiRequest.isDisplayed();
    expect(await incomingGoods.modalSetujuiRequest).toBeDisplayed();
    const poKodeModal = await incomingGoods.kodePOModal.getText();
    expect(await poKodeModal).toEqual(kodePO); })


When ('User clicks "fieldInputSearch" button in "Finance" page', async() => {
    await POV4.fieldInputSearchV4.click();

})
When ('User click "btnSearch" button in "Finance" page', async() => {


})
When ('User clicks "fieldInputSearch" button in "Finance" page', async() => {
    

})
When ('User fill "fieldInputSearch" get value "keywordPOCode" in "Finance" page', async() => {
    

})
When ('User clicks "btnCari" button in "Finance" page', async() => {
    

})
When ('User clicks "btnDetailRow0" button in "Finance" page', async() => {
  
    
})
When ('User clicks "btnSimpan" button in "Finance" page', async() => {
    

})
When ('User get "kodePORow1" from purchase order list', async() => {
    
    if (await POV4.kodePORow1.isDisplayed()) {
        const latestKodePO = await POV4.kodePORow1.getText();
        console.log('kode invoice : ' + latestKodePO);
        return latestKodePO;
    } else {
        throw error('elemen did not detected');
    };
        
    
})
When ('', async() => {
    
})


When ('User clicks "fieldPaymentBy" button in "Finance" page', async() => {
    
})
When ('', async() => {
    
})
When ('', async() => {
    
})

Then ('User able to see "Data has been updated" message verification', async() => {

})
Then ('User able to see request payment confirmation "poCodeModal" is match', async() => {
   
})


When ('User get "kodePORow0" from purchase order list', async() => {
    
})
