@extends('layouts.app')
@section('content')
    @php
        $order = DB::table('orders')->where('user_id',Auth::id())->orderBy('id','DESC')->limit(10)->get()
    @endphp

    <div class="contact_form">
        <div class="container">
            <div class="row">
                <div class="col-8 card">
                    <table class="table table-response">
                        <thead>
                        <tr>
                            <th scope="col">Payment Type</th>
                            <th scope="col">Payment ID</th>
                            <th scope="col">Amount</th>
                            <th scope="col">Date</th>
                            <th scope="col">Status</th>
                            <th scope="col">Order Number</th>
                            <th scope="col">Action</th>

                        </tr>
                        </thead>
                        <tbody>
                        @foreach($order as $row)
                            <tr>
                                <td scope="col">{{ $row->payment_type }} </td>
                                <td scope="col">{{ substr($row->payment_id,5,10) }} </td>
                                <td scope="col">£ {{ $row->total }}  </td>
                                <td scope="col">{{ $row->date }}  </td>

                                <td scope="col">
                                    @if($row->status == 0)
                                        <span class="badge badge-warning">Pending</span>
                                    @elseif($row->status == 1)
                                        <span class="badge badge-info">Payment Accept</span>
                                    @elseif($row->status == 2)
                                        <span class="badge badge-warning">Order Dispatched</span>
                                    @elseif($row->status == 3)
                                        <span class="badge badge-success">Delivered</span>
                                    @else
                                        <span class="badge badge-danger">Cancelled Order</span>

                                    @endif

                                </td>

                                <td scope="col">{{ $row->order_number }}  </td>
                                <td scope="col">
                                    <a href="" class="btn btn-sm btn-info"data-toggle="modal" data-target="#trackOrder">Track Order</a>
                                </td>
                            </tr>
                        @endforeach

                        </tbody>

                    </table>

                </div>

                <div class="col-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title text-center">{{ Auth::user()->name }}</h5>

                        </div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item"><a href="{{ route('password.change') }}">Change Password</a>
                            </li>
                            <li class="list-group-item"><a href="{{ route('success.orderlist') }}"> Return Order</a>
                            </li>
                        </ul>

                        <div class="card-body">
                            <a href="{{ route('user.logout') }}" class="btn btn-danger btn-sm btn-block">Logout</a>

                        </div>

                    </div>

                </div>

            </div>

        </div>


    </div>

@endsection
