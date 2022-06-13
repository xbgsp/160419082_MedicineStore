<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('welcome/', function() {
    return view('welcome');
});

Route::get('catalog/', function() {
    return view('menu');
});

Route::get('catalog/medicines', function() {
    return view('product', ['name' => 'medic']);
});

Route::get('catalog/med_equip', function() {
    return view('product', ['name' => 'medic_equip']);
});

Route::get('/medicines/panadol', function () {
    return view('detail', ['id' => 'medic1']);
});

Route::get('/medicines/ultraflu', function () {
    return view('detail', ['id' => 'medic2']);
});

Route::get('/medicines/vitacimin', function () {
    return view('detail', ['id' => 'medic3']);
});

Route::get('/med_equip/stetoskop', function () {
    return view('detail', ['id' => 'med_equip1']);
});

Route::get('/med_equip/masker', function () {
    return view('detail', ['id' => 'med_equip2']);
});

/////////////////////////////////////////////////

Route::get('/helloworld', function (){
    return 'Hello World, Pak Dosen';
});

Route::view('/selamatdatang','welcome');

Route::get('user/{id}', function($id) {
    return 'User '.$id;
});

Route::get('posts/{post}/comments/{comment}', function($postId, $commentId) {
    return 'Post : ' .$postId.'<br>comments : '.$commentId;
});

Route::get('user/{name?}', function($name = 'John') {
    return $name;
});

Route::get('user/profile', function() {
    //
})->name('profile');

Route::get('user/{id}/profile', function($id) {
    //
})->name('profile');

Route::get('wfp/{kelas}', function($kelas){
    if ($kelas == "C" || $kelas == "c") {
        return 'WFP Kelas '.$kelas;
    }
    else {
        return "Bukan Kelas Saya";
    }
});

Route::get('greeting', function() {
    return view('welcome', ['name' => 'Bagus']);
});

Route::get('/', function() {
    return view('welcome');
});

// Week 8
Auth::routes();
Route::get('/', 'MedicineController@front_index');

Route::middleware(['auth'])->group(function() {
    Route::get('/home', 'HomeController@index')->name('home');
    Route::resource('supplier', 'SupplierController');
    Route::resource('obat', 'MedicineController');
    Route::resource('transaksi', 'TransactionController');
    Route::resource('kategori_obat', 'CategoryController');

    Route::post('/supplier/getEditForm', 'SupplierController@getEditForm')->name('supplier.getEditForm');
    Route::post('/supplier/getEditForm2', 'SupplierController@getEditForm2')->name('supplier.getEditForm2');
    Route::post('/supplier/saveData', 'SupplierController@saveData')->name('supplier.saveData');
    Route::post('/supplier/deleteData', 'SupplierController@deleteData')->name('supplier.deleteData');
    Route::post('/supplier/saveDataField', 'SupplierController@saveDataField')->name('supplier.saveDataField');
    Route::post('/supplier/changeLogo', 'SupplierController@changeLogo')->name('supplier.changeLogo');

    Route::get('obatsatukategori', 'MedicineController@tugas')->name('medicines.tugas');
    Route::post('/obat/showInfo','MedicineController@showInfo')->name('obat.showInfo');
    Route::get('cart', 'MedicineController@cart');
    Route::get('add-to-cart/{id}', 'MedicineController@addToCart');
    Route::post('/obat/saveDataFieldMedicine', 'MedicineController@saveDataFieldMedicine')->name('obat.saveDataFieldMedicine');
    Route::post('/obat/changeImageMedicine', 'MedicineController@changeImageMedicine')->name('obat.changeImageMedicine');

    Route::get('transaction', 'TransactionController@Transaction')->name('transaction.transactionlist');
    Route::post('transaction/showDataAjax','TransactionController@showAjax')->name('transaction.showAjax');
    Route::get('/submit_checkout', 'TransactionController@submit_front')->name('submitcheckout');
    Route::get('/checkout', 'TransactionController@form_submit_front');
    Route::get('/cetakpemesanan/{id}', 'TransactionController@print_detail')->name('cetakpesan');

    Route::get('/report/listmedicine/{id}','CategoryController@showlist')->name('reportShowMedicine');
});