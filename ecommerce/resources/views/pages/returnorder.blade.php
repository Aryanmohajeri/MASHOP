    @extends('layouts.app')
    @section('content')

    @php
    $order = DB::table('orders')->where('user_id',Auth::id())->orderBy('id','DESC')->limit(10)->get();
    @endphp

    <div class="contact_form">
      <div class="container">
        <div class="row">
          <div class="col-8 card">
            <table class="table table-response">
              <thead>
                <tr>
                  <th scope="col">Payment Type </th>
                  <th scope="col">Return Status</th>
                  <th scope="col">Amount </th>
                  <th scope="col">Date </th>
                  <th scope="col">Order Status </th>
                </tr>
              </thead>
              <tbody>
                @foreach($order as $row)
                <tr>
                  <td scope="col">{{ $row->payment_type }} </td>

                  <td scope="col">

                  @if($row->return_order == 0)
                  <span class="badge badge-warning">Not requested</span>
                  @elseif($row->return_order == 1)
                  <span class="badge badge-warning">Pending</span>
                    @elseif($row->return_order == 2)
                    <span class="badge badge-info">Success</span>

                  @endif
            </td>

                  <td scope="col">£{{ $row->total }}  </td>
                  <td scope="col">{{ $row->date }}  </td>

                   <td scope="col">
                       @if($row->status == 0)
                           <span class="badge badge-warning">Pending</span>
                       @elseif($row->status == 1)
                           <span class="badge badge-info">Payment Accepted</span>
                       @elseif($row->status == 2)
                           <span class="badge badge-warning">Progress</span>
                       @elseif($row->status == 3)
                           <span class="badge badge-success">Delivered</span>
                       @else
                           <span class="badge badge-danger">Cancelled</span>

                       @endif

                    </td>


                </tr>
                 @endforeach
              </tbody>
            </table>
          </div>
            <div class="col-4">
                <div class="card">

                    <div class="card-body">
                        <h4>Please Return to address below:</h4>
                        <br>
                        <h6 class="card-title text-left">Arian Mohajeri</h6>
                        <p1 class="card-title text-left" >1 Aston Street,Birmingham, B4 7ET</p1>

                    </div>
                </div>

            </div>
        </div>
      </div>
    </div>

    @endsection
