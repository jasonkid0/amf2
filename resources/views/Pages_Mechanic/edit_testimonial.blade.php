@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Edit Testimonial</div>

                <div class="panel-body">
                    <form method="POST" action="" >
                        {{ csrf_field() }}

                        <!-- Star rating -->
                          <fieldset class="rating">
                              <input type="radio" id="star5" name="rating" value="5" />
                              <label data-toggle="tooltip" data-placement="top" class = "full" for="star5" title="Awesome - 5 stars"></label>

                              <!-- <input type="radio" id="star4half" name="rating" value="4.5" />
                              <label data-toggle="tooltip" data-placement="top" class="half" for="star4half" title="Pretty good - 4.5 stars"></label> -->

                              <input type="radio" id="star4" name="rating" value="4" />
                              <label data-toggle="tooltip" data-placement="top" class = "full" for="star4" title="Pretty good - 4 stars"></label>

                              <!-- <input type="radio" id="star3half" name="rating" value="3.5" />
                              <label data-toggle="tooltip" data-placement="top" class="half" for="star3half" title="Meh - 3.5 stars"></label> -->

                              <input type="radio" id="star3" name="rating" value="3" />
                              <label data-toggle="tooltip" data-placement="top" class = "full" for="star3" title="Meh - 3 stars"></label>

                              <!-- <input type="radio" id="star2half" name="rating" value="2.5" />
                              <label data-toggle="tooltip" data-placement="top" class="half" for="star2half" title="Kinda bad - 2.5 stars"></label> -->

                              <input type="radio" id="star2" name="rating" value="2" />
                              <label data-toggle="tooltip" data-placement="top" class = "full" for="star2" title="Kinda bad - 2 stars"></label>

                              <!-- <input type="radio" id="star1half" name="rating" value="1.5" />
                              <label data-toggle="tooltip" data-placement="top" class="half" for="star1half" title="Meh - 1.5 stars"></label> -->

                              <input type="radio" id="star1" name="rating" value="1" />
                              <label data-toggle="tooltip" data-placement="top" class = "full" for="star1" title="Sucks big time - 1 star"></label>

                              <!-- <input type="radio" id="starhalf" name="rating" value="0.5" />
                              <label data-toggle="tooltip" data-placement="top" class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label> -->

                          </fieldset>
                          <!-- Star rating end -->

                          <div class="form-group"> <!-- Message input !-->
                            <textarea placeholder="Make a review. Tell others what you think to this mechanic. Would you recommend it, and why?" class="form-control" id="message_id" name="testimonial" rows="3">{{ $testi->testimonial }}</textarea>
                          </div>
                          
                          <div class="form-group"> <!-- Submit button !-->
                            <button class="btn btn-primary pull-right " name="submit" type="submit"><span class="glyphicon glyphicon-send"></span> Update</button>
                          </div>

                      </form>

                    @component('components.who')
                    @endcomponent
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
