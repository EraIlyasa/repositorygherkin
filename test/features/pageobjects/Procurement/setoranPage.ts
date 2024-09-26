export default new class setoranPage {
    //Menu
    get navMenuFinance() {return $('(//*[@data-testid="Menu-Finances"])');}
    get menuSetoran() {return $('(//*[@data-testid="Menu-Setoran"])');}

    //List Menu Setoran
    get btnBuatSetoranNew() {return $('(//*[contains(text(), "Buat Setoran")])');}
    
    //Create Setoran
    get btnBuatSetoran() {return $('(//*[@data-testid="btn-setor"])');}
    get btnPrintBuktiSetor() {return $('(//*[@data-testid="btn-print"])');}
    get btnCancel() {return $('(//*[@data-testid="btn-cancel"])');}
    get btnSayaYakin() {return $('(//*[@data-testid="btn-submit"])');}
    get btnConfirmDelete() {return $('(//*[@data-testid="btn-delete"])');}

    //Section 1 Detail Kurir 
    get fieldTipeOrder() {return $('(//*[@class="ant-select-selection-search-input"])[2]');}
    get fieldGudang() {return $('(//*[@class="ant-select-selection-search-input"])[3]');}
    get fieldInputNamaKurir() {return $('(//*[@class="ant-select-selection-search-input"])[4]');}
    get fieldInputBayarCash() {return $('(//*[@class="ant-input css-1vp3ixv"])');}


    //Section 2 Pesanan Selesai 
    get aksiKonfirmasi0() {return $('(//*[@data-testid="action-0"])/*/*[1]');}
    get aksiKonfirmasi1() {return $('(//*[@data-testid="action-1"])/*/*[1]');}
    get aksiKonfirmasi2() {return $('(//*[@data-testid="action-2"])/*/*[1]');}

    //tbody element
    get assertMetodeBayar0() {return $('(//*[@class="ant-table-tbody"])[1]/*[2]/*[3]');}
    get assertMetodeBayar1() {return $('(//*[@class="ant-table-tbody"])[1]/*[3]/*[3]');}
    get assertMetodeBayar2() {return $('(//*[@class="ant-table-tbody"])[1]/*[4]/*[3]');}


    //without tbody element
    get textMetodeBayar0() {return $('(//*[@data-testid="invoice-0"])[2]');}
    get textMetodeBayar1() {return $('(//*[@data-testid="invoice-1"])[3]');}
    get textMetodeBayar2() {return $('(//*[@data-testid="invoice-2"])[3]');}

    get aksiHapus() {return $('(//*[@data-testid="action-0"])/*/*[2]');}
    get uploadImage1() {return $('(//*[@data-testid="form-image-upload"])[1]');}
    get uploadImage2() {return $('(//*[@data-testid="form-image-upload"])[2]');}
    get uploadImage3() {return $('(//*[@data-testid="form-image-upload"])[3]');}
    get fieldInputBuktiTF1() {return $('(//*[@class="ant-input css-1vp3ixv"])[2]'); }
    get fieldInputBuktiTF2() {return $('(//*[@class="ant-input css-1vp3ixv"])[3]'); }
    get fieldInputBuktiTF3() {return $('(//*[@class="ant-input css-1vp3ixv"])[4]'); }
    get btnSimpanModal() {return $('(//*[@data-testid="btn-cancel-delete"])');}
    get btnBatalModal() {return $('(//*[@data-testid="btn-submit"])');}
    get btnImportCSV() {return $('//*[@data-testid="btn-import-csv"]');}
    get importCSVModal() {return $('//*[@data-testid="form-file-import"]')}
    get btnImport() {return $('//*[@id="submit-import"]'); }
    get btnClearRevisiBayar() {return $('//*[@class="ant-input-clear-icon"]');}



    //Section 1 Detail Kurir Option
    get optTipeOrder0() {return $('//*[@title="Inhouse"]');}
    get optTipeOrder1() {return $('//*[@title="Vendor"]');}
    get optTipeOrder2() {return $('//*[@title="Consignment"]');}
    get optGudang0() {return $('(//*[@title="Aloha"])[2]');}
    get optGudang1() {return $('(//*[@title="Aloha-RTP"])');}
    get optGudang2() {return $('(//*[@title="Bandung"])');}
    get optNamaKurirInhouse() {return $('(//*[@title="feboi243"])');}
    get optNamaKurirVendor() {return $('(//*[@title="SANGAR SURABAYA"])');}

    get hapusRow1() {return $('(//*[@data-testid="action-1"])/*/*[2]');}
    get hapusRow2() {return $('(//*[@data-testid="action-2"])/*/*[2]');}

    async getOptKurir(name: string) {
        return $('(//*[@title="'+ name +'"])')
    }
}