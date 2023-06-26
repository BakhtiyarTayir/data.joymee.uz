@extends('admin.layouts.main')
@section('content')
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Добавление пользователя</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Добавление пользователя</li>
                        </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row ">
                    <div class="col-4">
                        <form class="row g-3 align-items-end" action="{{ route('admin.user.store')  }}" method="POST">
                            @csrf
                            <div class="input-group mb-3">
                              <label for="name" class="form-label col-sm-2 col-form-label">Имя</label>
                                <div class="col-sm-10">
                                    <input type="text" name="name" class="form-control" id="name" placeholder="Название">
                                </div>
                                @error('name')
                                    <div class="text-danger mt-3">{{ $message }}</div>
                                @enderror

                            </div>
                            <div class="input-group mb-3">
                                <label for="email" class="form-label col-sm-2 col-form-label">Email</label>
                                <div class="col-sm-10">
                                    <input type="text" name="email" class="form-control" id="email"  placeholder="Email">
                                </div>
                                    @error('email')
                                <div class="text-danger mt-3">{{ $message }}</div>
                                @enderror

                            </div>
                            <div class="input-group mb-3">
                                <label for="password" class="form-label col-sm-2 col-form-label">Пароль</label>
                                <div class="col-sm-10">
                                    <input type="text" name="password" class="form-control" id="password" placeholder="Пароль">
                                </div>
                                @error('password')
                                <div class="text-danger mt-3">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="input-group mb-3">
                                <label class="col-form-label mr-3">Выбрать роль</label>
                                <select class="form-control" name="role">
                                    @foreach($roles as $id => $role)
                                        <option
                                            {{$role== old('role') ? ' selected ' : ''}}
                                            value="{{ $id }}">{{ $role }}</option>
                                    @endforeach
                                </select>
                                @error('role')
                                <div class="text-danger mt-3"> {{ $message }}</div>
                                @enderror
                            </div>

                            <div class="col-6">
                              <button type="submit" class="btn btn-primary">Добавить</button>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- /.row (main row) -->
            </div><!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
@endsection
