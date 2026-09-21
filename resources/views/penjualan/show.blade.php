@extends('layouts.app')

@section('title', 'Detail Transaksi')

@section('content')

@include('layouts.navbar')

<div class="d-flex justify-content-between align-items-center mb-4 no-print">
    <div>
        <h1 class="mb-0">Detail Transaksi #{{ $penjualan->id }}</h1>
        <small class="text-muted">Informasi lengkap transaksi penjualan</small>
    </div>
    <div class="d-flex gap-2">
        <button onclick="window.print()" class="btn btn-primary">
            <i class="bi bi-printer"></i> Cetak
        </button>
        <a href="{{ route('penjualan.index') }}" class="btn btn-secondary">Kembali</a>
    </div>
</div>

<div class="card invoice-card">
    <div class="card-header invoice-header d-flex justify-content-between align-items-center flex-wrap gap-2">
        <div>
            <h4 class="mb-0">HAFZA PARFUM</h4>
            <small>Detail &amp; Bukti Transaksi</small>
        </div>
        <span class="badge fs-6 {{ $penjualan->status === 'COMPLETED' ? 'bg-success' : 'bg-warning text-dark' }}">
            {{ $penjualan->status }}
        </span>
    </div>

    <div class="card-body">

        <div class="row mb-4">
            <div class="col-md-4 col-6 mb-3">
                <div class="text-muted small">No. Transaksi</div>
                <div class="fw-semibold">#{{ $penjualan->id }}</div>
            </div>
            <div class="col-md-4 col-6 mb-3">
                <div class="text-muted small">Tanggal</div>
                <div class="fw-semibold">{{ $penjualan->created_at->translatedFormat('l, d F Y') }}</div>
            </div>
            <div class="col-md-4 col-6 mb-3">
                <div class="text-muted small">Jam</div>
                <div class="fw-semibold">{{ $penjualan->created_at->format('H:i') }} WIB</div>
            </div>
            <div class="col-md-4 col-6 mb-3">
                <div class="text-muted small">Kasir</div>
                <div class="fw-semibold">{{ $penjualan->user->name }}</div>
            </div>
            <div class="col-md-4 col-6 mb-3">
                <div class="text-muted small">Metode Pembayaran</div>
                <div class="fw-semibold">{{ $penjualan->metode_pembayaran }}</div>
            </div>
            <div class="col-md-4 col-6 mb-3">
                <div class="text-muted small">Jumlah Item</div>
                <div class="fw-semibold">{{ $penjualan->itemPenjualan->count() }} produk</div>
            </div>
        </div>

        <h6 class="text-uppercase text-muted mb-2">Rincian Produk</h6>
        <div class="table-responsive">
            <table class="table align-middle">
                <thead class="table-light">
                    <tr>
                        <th>Produk</th>
                        <th class="text-center">Qty</th>
                        <th class="text-end">Harga Satuan</th>
                        <th class="text-end">Subtotal</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse ($penjualan->itemPenjualan as $item)
                    <tr>
                        <td>{{ $item->produk->nama }}</td>
                        <td class="text-center">{{ $item->kuantitas }}</td>
                        <td class="text-end">Rp {{ number_format($item->harga_satuan) }}</td>
                        <td class="text-end">Rp {{ number_format($item->subtotal) }}</td>
                    </tr>
                    @empty
                    <tr>
                        <td colspan="4" class="text-center text-muted py-4">
                            Tidak ada item pada transaksi ini.
                        </td>
                    </tr>
                    @endforelse
                </tbody>
            </table>
        </div>

        <div class="row justify-content-end mt-3">
            <div class="col-md-5">
                <div class="d-flex justify-content-between py-1">
                    <span class="text-muted">Total Item</span>
                    <span>{{ $penjualan->itemPenjualan->sum('kuantitas') }}</span>
                </div>
                <div class="d-flex justify-content-between py-2 border-top fs-5">
                    <strong>Total Pembayaran</strong>
                    <strong>Rp {{ number_format($penjualan->total_pembayaran) }}</strong>
                </div>
            </div>
        </div>

    </div>

    <div class="card-footer text-center text-muted no-print">
        <small>Terima kasih telah berbelanja di HAFZA PARFUM</small>
    </div>
</div>

<style>
    .invoice-card {
        border: none;
        border-radius: 14px;
        box-shadow: 0 4px 16px rgba(0,0,0,0.08);
        overflow: hidden;
    }

    .invoice-header {
        background-color: #f3C4C4;
        color: #000;
    }

    @media print {
        .navbar, .no-print {
            display: none !important;
        }
        body {
            background: #fff !important;
        }
        .invoice-card {
            box-shadow: none !important;
        }
    }
</style>

@endsection