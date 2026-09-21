</tbody>
</table>
{{$sales->links()}}

@extends('layouts.app')

@section('title', 'Penjualan')

@section('content')

@include('layouts.navbar')

@if(session('errors'))
  <div class="alert alert-danger">
      {{ session('errors')}}
  </div>
  @endif

<h1>Halaman Penjualan</h1>

<a href="{{ route('penjualan.create') }}" class="btn btn-primary mb-3">Create</a>

<form action="{{ route('penjualan.index')}}" method="GET" class="row g-2 mb-3 align-items-end">
    <div class="col-md-3">
        <label class="form-label">Cari Kasir</label>
        <input
             type="text"
             name="search"
             value="{{ request()->search }}"
             class="form-control"
             placeholder="Nama kasir">
    </div>

    <div class="col-md-3">
        <label class="form-label">Tanggal Transaksi</label>
        <input
            type="date"
            name="tanggal"
            value="{{ request()->tanggal }}"
            class="form-control">
    </div>

    <div class="col-md-2">
        <label class="form-label">Jenis Pembayaran</label>
        <select name="metode_pembayaran" class="form-select">
            <option value="">Semua</option>
            <option value="CASH" @selected(request()->metode_pembayaran === 'CASH')>Cash</option>
            <option value="QRIS" @selected(request()->metode_pembayaran === 'QRIS')>QRIS</option>
        </select>
    </div>

    <div class="col-md-2">
        <label class="form-label">Status</label>
        <select name="status" class="form-select">
            <option value="">Semua</option>
            <option value="OPEN" @selected(request()->status === 'OPEN')>Open</option>
            <option value="COMPLETED" @selected(request()->status === 'COMPLETED')>Completed</option>
        </select>
    </div>

    <div class="col-md-2 d-flex gap-1">
        <button class="btn btn-outline-secondary" type="submit">Filter</button>
        <a href="{{ route('penjualan.index') }}" class="btn btn-outline-danger">Reset</a>
    </div>
</form>

<table class="table">
  <thead>
    <tr>
      <th scope="col">No</th>
      <th scope="col">Tanggal Transaksi</th>
      <th scope="col">Kasir</th>
      <th scope="col">Total Pembayaran</th>
      <th scope="col">Metode Pembayaran</th>
      <th scope="col">Status</th>
      <th scope="col">Aksi</th>
    </tr>
  </thead>

  <tbody>
    @forelse($sales as $sale)
    <tr>
      <th scope="row">{{$sales->firstItem() + $loop->index}}</th>
      <td>{{$sale->created_at->translatedFormat('d-m-Y H:i:s')}}</td>
      <td>{{$sale->user->name}}</td>
      <td>Rp.{{$sale->total_pembayaran}}</td>
      <td>{{$sale->metode_pembayaran}}</td>
      <td>{{$sale->status}}</td>
      <td class="d-flex gap-1">
        <a href="{{ route('penjualan.show', $sale) }}" class="btn btn-primary">Detail</a>
        @can('view', $sale)
        ||
        <a href="{{ route('penjualan.edit', $sale) }}" class="btn btn-warning">Edit</a>
        @endcan
        @can('delete', $sale)
        ||
        <form action="{{ route('penjualan.destroy', $sale) }}" method="POST" class="d-inline">
            @csrf
            @method('DELETE')

            <button class="btn btn-danger" onclick="return confirm('Apakah anda yakin akan menghapus penjualan ini?')">
                Hapus
            </button>
        </form>
        @endcan
      </td>
    </tr>
    @empty
    <tr>
      <td colspan="6">Data Tidak Ditemukan</td>
    </tr>
    @endforelse
  </tbody>
</table>
{{$sales->links()}}
@endsection