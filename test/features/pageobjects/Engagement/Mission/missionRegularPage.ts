export default new class missionRegularPage {

    //
    get navMenuMarketing() { return $('//*[@data-testid="Menu-Marketing"]'); }
    get menuMissionV4() { return $('//*[@class="ant-menu-title-content"]/*[@data-testid="Menu-MissionV4"]'); }
    get menuMisiRegular() { return $('//*[@data-testid="Menu-MisiReguler"]'); }
    get menuMisiAktivitas() { return $('//*[@data-testid="Menu-MisiAktivitas"]'); }

    //List page
    get fieldInputSearch() { return $('//*[@placeholder="Cari Nama Misi"]'); }
    get btnPeriode() { return $('//*[@class="Table_filterContainer__WbWjE"]/*[1]'); }
    get btnKadaluarsa() { return $('//*[@class="Table_filterContainer__WbWjE"]/*[2]'); }
    get btnTipeTarget() { return $('//*[@class="Table_filterContainer__WbWjE"]/*[3]'); }
    get btnKondisiProduk() { return $('//*[@class="Table_filterContainer__WbWjE"]/*[4]'); }
    get btnStatus() { return $('//*[@class="Table_filterContainer__WbWjE"]/*[5]'); }
    get btnBuatMisiPage() { return $('//*[contains(text(), "Buat Misi")]');} //('//*[@data-testid="page-header-extra"]/*/*[@type="button"]'); }
    get btnAturKuotaMisi() { return $('//*[@class="ant-btn css-1vp3ixv ant-btn-ghost Button_button__QU6uO Button_ghost__t9rWe Button_medium__hRLU4"]'); }
    get btnDetailMissionRow0() { return $('//tbody[@class="ant-table-tbody"]/*[2]/*[2]/*/*[2]'); }
    get btnPages() { return $('(//*[@class="ant-select-selector"])[3]/*[1]'); }


    //Buat Misi 
    get btnBatal() { return $('//*[@class="ant-row ant-row-space-between css-1vp3ixv"]/*[1]'); }
    get btnBuatMisi() { return $('//*[@class="ant-row ant-row-space-between css-1vp3ixv"]/*[2]'); }
    //Detail Misi Section 1 
    get fieldInputNamaMisi() { return $('//*[@placeholder="Masukkan Nama Misi"]'); }
    get fieldTipeUser() { return $('(//*[@title="Semua Customer"])[1]'); }
    get radioBtnUser() { return $(''); }
    get fieldArea() { return $('(//*[@class="ant-select-selector"])[3]'); }
    get fieldTipeTarget() { return $('(//*[@class="ant-select-selection-search"])[4]'); }
    get fieldSyaratDanKetentuan() { return $('//*[@data-placeholder="Tulis syarat dan ketentuan yang berlaku pada misi ini."]'); }

    //Option Detail Misi Section 1
    get optTipeUser0() { return $('(//*[@title="Semua Customer"])[2]'); }
    get optArea0() { return $('//*[@title="All Area"]'); }
    get optTipeTarget0() { return $('//*[@title="GMV"]'); } 
    get optTipeTarget1() { return $('//*[@title="Frekuensi Order"]'); }
    get optTipeTarget2() { return $('Kuantitas Order'); }

    //Periode Misi Section 2
    get fieldPeriodeMisi() { return $('//*[@class="RangePicker_container__z2E2K RangePicker_middle__Jtfzk"]/*[2]'); }
    get radioBtnFixed() { return $('//*[@data-testid="mission-period-id-radio"]/*[1]'); }
    get radioBtnCustom() { return $('//*[@data-testid="mission-period-id-radio"]/*[2]'); }
    get fieldInputDurasi() { return $(''); }
    get fieldInputStarDate() { return $('//*[@title="2024-09-11"]'); }
    get fieldInputEndDate() { return $('//*[@title="2024-09-13"]'); }

    //Syarat Produk Section 3 
    get fieldTipeProduk() { return $('(//*[@class="ant-select-selection-search"])[6]'); }
    get checkboxBundling() { return $(''); }
    get checkboxFlashSale() { return $('//*[@label="Flash Sale"]'); }

    //Option Syarat Produk Section 3 
    get optTipeProduk() { return $('//*[@title="All Product"]'); }

    //Target dan Reward Section 4 
    get fieldInputTarget() { return $('(//*[@class="ant-input css-1vp3ixv"])[2]'); }
    get fieldInputReward() { return $('(//*[@class="ant-input css-1vp3ixv"])[3]'); }
    get btnKoin() { return $('//*[@title="Koin"]'); }
    get toggleSwitchLeaderBoard() { return $('//*[@class="ant-switch-inner"]'); }
    get fieldPencapaianMinimal() { return $('(//*[@placeholder="0"])[3]'); }
    get fieldBatasPemenang() { return $('//*[@label="Batas Pemenang"]'); }

    //Option





}