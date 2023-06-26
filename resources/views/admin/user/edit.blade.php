@extends('admin.layouts.main')
@section('content')
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Редактирование</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Редактирование</li>
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
                        <form class="row g-3 align-items-end" action="{{ route('admin.user.update', $user->id) }}" method="POST">
                            @csrf
                            @method('PATCH')
                            <div class="input-group mb-3">
                              <label for="name" class="form-label col-sm-2 col-form-label">Имя</label>
                              <div class="col-sm-10">
                                  <input type="text" name="name" class="form-control" id="name" value="{{ $user->name }}">
                              </div>
                                @error('name')
                                    <div class="text-danger mt-3">{{ $message }}</div>
                                @enderror

                            </div>
                            <div class="input-group mb-3">
                                <label for="email" class="form-label col-sm-2 col-form-label">Email</label>
                                <div class="col-sm-10">
                                    <input type="text" name="email" class="form-control"  value="{{ $user->email }}" id="email" placeholder="Email">
                                </div>
                                @error('email')
                                <div class="text-danger mt-3">{{ $message }}</div>
                                @enderror

                            </div>
                            <div class="input-group mb-3">
                                <label class="col-form-label mr-3">Выбрать роль</label>
                                <select class="form-control" name="role">
                                    @foreach($roles as $id => $role)
                                        <span>{{old('role')}}</span>
                                        <option
                                            {{ $id == $user->role ? ' selected ' : ''}}
                                            value="{{ $id }}">{{ $role }}</option>
                                    @endforeach
                                </select>
                                @error('role')
                                <div class="text-danger mt-3"> {{ $message }}</div>
                                @enderror
                            </div>
                            <div class="input-group mb-3">
                                <input type="hidden" name="user_id" value="{{ $user->id }}">
                            </div>

                            <div class="col-6">
                              <button type="submit" class="btn btn-primary">Обновить</button>
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
