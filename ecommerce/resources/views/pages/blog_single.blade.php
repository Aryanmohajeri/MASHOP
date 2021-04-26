    @extends('layouts.app')

    @section('content')
    @include('layouts.menubar')
<br><br><br><br><br>
    @foreach($posts as $row)
        <div class="single_post">
            <div class="container">
                <div class="row">
                    <img src="{{asset($row->post_image)}}" alt="" style="margin-left:35% ">
                    <div class="col-lg-8 offset-lg-2">
                        <div class="single_post_title">
                            @if(Session()->get('lang') == 'spanish')
                                <strong>{{ $row->post_title_es }} </strong>
                            @else
                                <strong>{{ $row->post_title_en }}</strong>
                            @endif
                        </div>


                        <div class="single_post_text">
                            <p> @if(Session()->get('lang') == 'spanish')
                                    {!! $row->details_es !!}
                                @else
                                    {!! $row->details_en !!}
                                @endif </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    @endforeach




@endsection
