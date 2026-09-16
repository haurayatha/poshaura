{{-- memanggil file app.blade.php --}}
@extends('layouts.app')

@section('title', 'Tentang Kami')

@section('content')

@include('layouts.navbar')

<div class="my-4">
    <div class="text-center mb-4">
        <h1>Tentang HAFZA PARFUM</h1>
        <p class="text-muted">Kenali lebih banyak tentang perusahaan kami</p>
    </div>

    <div class="row justify-content-center">
        <div class="col-md-10">

            <div class="card mb-4">
                <div class="card-body">
                    <h4 class="card-title">Tentang Toko</h4>
                    <p class="card-text">
                       HAFZA PARFUM adalah toko parfum yang berdedikasi untuk memberikan pengalaman berbelanja parfum yang menyenangkan dan memuaskan bagi pelanggan kami. Kami menawarkan berbagai pilihan wangi yang nyaman dan sesuai dengan berbagai suasana, serta menyenangkan pelanggan dengan variasi ukuran dan bentuk botol yang beragam. Kami percaya bahwa setiap pelanggan meminta pengolahan yang unik dan personal, dan kami berkomitmen untuk memenuhi kebutuhan tersebut dengan produk berkualitas dari kami.
                    </p>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6 mb-4">
                    <div class="card h-100">
                        <div class="card-body">
                            <h4 class="card-title">Visi</h4>
                            <p class="card-text">
                                Membuat setiap pelanggan merasa nyaman dan percaya diri dengan wangi yang mereka pilih, didukung pilihan ukuran dan bentuk botol yang beragam sesuai gaya masing-masing.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 mb-4">
                    <div class="card h-100">
                        <div class="card-body">
                            <h4 class="card-title">Misi</h4>
                            <ul class="card-text mb-0">
                                <li>Menghadirkan pilihan wangi yang nyaman dan cocok untuk berbagai suasana</li>
                                <li>Menyediakan variasi ukuran botol agar pelanggan bisa memilih sesuai kebutuhan</li>
                                <li>Menawarkan bentuk botol yang beragam dan menarik untuk kepuasan pelanggan</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Kontak Kami</h4>
                    <p class="card-text mb-1"><strong>Alamat:</strong> Jl. Padasuka Nagrak, No. 123, Bandung</p>
                    <p class="card-text mb-1"><strong>Telepon / WhatsApp:</strong> 0812-3456-7890</p>
                    <p class="card-text mb-0"><strong>Email:</strong> info@hafzaparfum.com</p>
                </div>
            </div>

        </div>
    </div>
</div>

@endsection