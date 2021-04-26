@extends('admin.admin_layouts')

@section('admin_content')

    <div class="sl-mainpanel">


        <div class="sl-pagebody">
            <div class="sl-page-title">
                <h5>Raffle Products List</h5>

            </div><!-- sl-page-title -->

            <div class="card pd-20 pd-sm-40">
                <h6 class="card-body-title">Raffles List
                </h6>


                <div class="table-wrapper">
                    <table id="datatable1" class="table display responsive nowrap">
                        <thead>
                        <tr>
                            <th class="wd-15p">Raffle ID</th>
                            <th class="wd-15p">Product ID</th>
                            <th class="wd-15p">User Name</th>
                            <th class="wd-15p">Status</th>
                            <th class="wd-15p">Action</th>

                        </tr>
                        </thead>
                        <tbody>
                        @foreach($entries as $row)
                            <tr>
                                <td>{{ $row->raffle_id }}</td>
                                <td>{{str_limit($row->product_id, $limit = 15, $end = "...") }}</td>
                                <td> {{$row->name}}</td>
                                <td>
                                    @if($row->accepted == 0)
                                        <span class="badge badge-warning">Pending</span>
                                    @elseif($row->accepted == 1)
                                        <span class="badge badge-info">Raffle Won</span>
                                    @endif
                                </td>
                                <td>
                                    <a href="{{url('accept/raffle/'.$row->raffle_id)}}" class="btn btn-sm btn-success">Accept</a>
                                    <a href="{{url('reject/raffle/'.$row->raffle_id)}}" class="btn btn-sm btn-danger"
                                       id="delete">Reject</a>
                                </td>
                            </tr>
                        @endforeach

                        </tbody>
                    </table>
                    <a href="{{route('random.raffle')}}" class="btn btn-sm btn-success">Accept Random</a>
                </div><!-- table-wrapper -->
            </div><!-- card -->


        </div><!-- sl-mainpanel -->


        <!-- LARGE MODAL -->
        <div id="modaldemo3" class="modal fade">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content tx-size-sm">
                    <div class="modal-header pd-x-20">
                        <h6 class="tx-14 mg-b-0 tx-uppercase tx-inverse tx-bold">Brand Add</h6>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>

                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                    <form method="post" action="{{ route('store.brand') }}" enctype="multipart/form-data">
                        @csrf
                        <div class="modal-body pd-20">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Brand Name</label>
                                <input type="text" class="form-control" id="exampleInputEmail1"
                                       aria-describedby="emailHelp" placeholder="Brand" name="brand_name">

                            </div>


                            <div class="form-group">
                                <label for="exampleInputEmail1">Brand Logo</label>
                                <input type="file" class="form-control" aria-describedby="emailHelp"
                                       placeholder="Brand Logo" name="brand_logo">

                            </div>


                        </div><!-- modal-body -->
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-info pd-x-20">Submit</button>
                            <button type="button" class="btn btn-secondary pd-x-20" data-dismiss="modal">Close</button>
                        </div>
                    </form>
                </div>
            </div><!-- modal-dialog -->
        </div><!-- modal -->



@endsection
