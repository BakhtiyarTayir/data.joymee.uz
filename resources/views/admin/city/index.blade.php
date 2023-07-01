@extends('admin.layouts.main')
@section('content')

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Cities</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Cities</li>
                        </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <a href="{{ route('admin.city.create') }}" class="btn btn-inline btn-primary">Создать</a>
                    </div>
                </div>
                <!-- /.row (main row) -->
                <div class="row mt-4">
                    <div class="col-12">
                        <div class="card">
                            <!-- /.card-header -->
                            <div class="card-body table-responsive p-0">
                                <table class="table table-hover text-nowrap">
                                    <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>City</th>
                                        <th>Region id</th>
                                        <th colspan="3" class="text-center">Действие</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($cities as $city)
                                            <tr>
                                                <td>{{ $city->city_id }}</td>
                                                <td> {{ $city->city_name }}</td>
                                                <td> {{ $city->region_id }}</td>
                                                <td><a href="{{ route('admin.city.show', $city->city_id)  }}"><i class="fa fa-eye"></i></a></td>
                                                <td><a href="{{ route('admin.city.edit', $city->city_id)  }}"><i class="far fa-edit"></i></a></td>
                                                <td>
                                                    <form action="{{ route('admin.city.delete', $city->city_id) }}" method="post">
                                                        @csrf
                                                        @method('delete')
                                                        <button type="submit" class="text-danger btn-link border-0 bg-transparent"><i class="far fa-trash-alt"></i></button>

                                                    </form>
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.card-body -->
                        </div>
                    </div>
                </div>

            </div><!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
@endsection
