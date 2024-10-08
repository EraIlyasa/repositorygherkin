export default new class IncomingGoodsPage {
     //List 
     get inputSearch() { return $('//*[@data-testid="search-bar"]'); }
     get btnCari() { return $('//*[@data-id="enter-btn"]'); }
     get btnFilterGudang() { return $('//*[@id="site-layout-background"]/div/div[2]/div[1]/div/div[2]/div/button[1]'); }
     get btnFilterPeriode() { return $('//*[@id="site-layout-background"]/div/div[2]/div[1]/div/div[2]/div/button[2]'); }
     get btnFilterSupplier() { return $('//*[@id="site-layout-background"]/div/div[2]/div[1]/div/div[2]/div/button[3]'); }
     get btnFilterStatus() { return $('//*[@id="site-layout-background"]/div/div[2]/div[1]/div/div[2]/div/button[4]'); }
     get btnExport() { return $('//*[@data-id="export-csv"]'); }
     get tabSupplier() { return $('//*[@id="rc-tabs-0-tab-purchasing"]/div/span'); }
     get tabReturSupplier() { return $('//*[@id="rc-tabs-0-tab-returnSupplier"]/div/span'); }
     get tabTolakan() { return $('//*[@id="rc-tabs-0-tab-canceled"]/div/span'); }
     get tabReturPenjualan() { return $('//*[@id="rc-tabs-0-tab-returnOrder"]/div/span'); }
     get tabTransferStock() { return $('//*[@id="rc-tabs-0-tab-transfer"]/div/span'); }
     get tabConsignment() { return $('//*[@id="rc-tabs-0-tab-transfer"]/div/span'); }
     get tabTolakanVendor() { return $('//*[@id="rc-tabs-0-tab-canceledPending"]/div/span'); }
     get btnSearch() { return $('//*[@id="btnSearch"]'); }


     //Detail Payment Request
     get btnSetujuiRequest() { return $('(//*[@type="button"])[4]'); }
     get btnTolakRequest() { return $('(//*[@type="button"])[3]'); }
     get detailSection() { return $('//*[@class="ant-tabs-nav-list"]/*[@data-node-key="detail"]'); }
     get dokumenPendukungSection() { return $('//*[@class="ant-tabs-nav-list"]/*[@data-node-key="docs"]')}
     get modalSetujuiRequest() { return $('//*[@class="ModalHalfFrame_modal__a6rPw"]'); }
     get kodePOModal() { return $('(//*[@class="font-fontweight-semibold"])[1]'); }
    
     //nav menu 
     get navMenuFinances() { return $('//*[@data-testid="Menu-Finances"]')};

     //nav sub menu 
     get menuBillPurchasing() { return $('//*[@data-testid="Menu-BillProcessing"]')};
     get menuPaymentRequest() { return $('//*[@data-testid="Menu-PaymentRequest"]')};

     //Function get kodePORow0 
     async getLatestKodePO() {
         f
     }
}
