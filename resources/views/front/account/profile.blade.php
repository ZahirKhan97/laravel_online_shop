@extends('front.layouts.app')
@section('content')
<section class="section-5 pt-3 pb-3 mb-3 bg-white">
  <div class="container">
      <div class="light-font">
          <ol class="breadcrumb primary-color mb-0">
              <li class="breadcrumb-item"><a class="white-text" href="{{ route('account.profile') }}">My Account</a></li>
              <li class="breadcrumb-item">Settings</li>
          </ol>
      </div>
  </div>
</section>

<section class=" section-11 ">
  <div class="container  mt-5">
      <div class="row">
        <div class="col-md-12">
            @include('front.account.common.message')
        </div>
          <div class="col-md-3">
              @include('front.account.common.sidebar')
          </div>
          <div class="col-md-9">
              <div class="card">
                  <div class="card-header">
                      <h2 class="h5 mb-0 pt-2 pb-2">Personal Information</h2>
                  </div>
                    <form action="" name="profileForm" id="profileForm">
                        <div class="card-body p-4">
                            <div class="row">
                                <div class="mb-3">               
                                    <label for="name">Name</label>
                                    <input value="{{ $user->name }}" type="text" name="name" id="name" placeholder="Enter Your Name" class="form-control">
                                    <p></p>
                                </div>
                                <div class="mb-3">            
                                    <label for="email">Email</label>
                                    <input value="{{ $user->email }}" type="text" name="email" id="email" placeholder="Enter Your Email" class="form-control">
                                    <p></p>
                                </div>
                                <div class="mb-3">                                    
                                    <label for="phone">Phone</label>
                                    <input value="{{ $user->phone }}" type="text" name="phone" id="phone" placeholder="Enter Your Phone" class="form-control">
                                    <p></p>
                                </div>

                                <div class="d-flex">
                                    <button class="btn btn-dark">Update</button>
                                </div>
                            </div>
                        </div>
                    </form>
              </div>
                <div class="card mt-5">
                    <div class="card-header">
                        <h2 class="h5 mb-0 pt-2 pb-2">Address</h2>
                    </div>
                    <form action="" name="addressForm" id="addressForm">
                        <div class="card-body p-4">
                            <div class="row">
                                <div class="col-md-6 mb-3">               
                                    <label for="first_name">First Name</label>
                                    <input value="{{ (!empty($address)) ? $address->first_name : '' }}" type="text" name="first_name" id="first_name" placeholder="Enter Your First Name" class="form-control">
                                    <p></p>
                                </div>
                                <div class="col-md-6 mb-3">               
                                    <label for="last_name">Last Name</label>
                                    <input value="{{ (!empty($address)) ? $address->last_name : '' }}" type="text" name="last_name" id="last_name" placeholder="Enter Your Last Name" class="form-control">
                                    <p></p>
                                </div>
                                <div class="col-md-6 mb-3">            
                                    <label for="email">Email</label>
                                    <input value="{{ (!empty($address)) ? $address->email : '' }}" type="text" name="email" id="email" placeholder="Enter Your Email" class="form-control">
                                    <p></p>
                                </div>
                                <div class="col-md-6 mb-3">                                    
                                    <label for="mobile">Mobile</label>
                                    <input value="{{ (!empty($address)) ? $address->mobile : '' }}" type="text" name="mobile" id="mobile" placeholder="Enter Your Mobile" class="form-control">
                                    <p></p>
                                </div>
                                <div class="mb-3">                                    
                                    <label for="country">Country</label>
                                    <select name="country" id="country" class="form-control">
                                        <option value="">Select a Country</option>
                                        @if ($countries->isNotEmpty())
                                            @foreach ($countries as $country)
                                            <option {{ (!empty($address) && $address->country_id == $country->id) ? 'selected' : '' }} value="{{ $country->id }}">{{ $country->name }}</option>
                                            @endforeach
                                        @endif
                                    </select>
                                    <p></p>
                                </div>
                                <div class="mb-3">                                    
                                    <label for="address">Address</label>
                                    <textarea name="address" id="address" cols="30" rows="5" class="form-control">{{ (!empty($address)) ? $address->address : '' }}</textarea>
                                    <p></p>
                                </div>
                                <div class="col-md-6 mb-3">                                    
                                    <label for="appartment">Appartment</label>
                                    <input value="{{ (!empty($address)) ? $address->appartment : '' }}" type="text" name="appartment" id="appartment" class="form-control" placeholder="Appartment">
                                    <p></p>
                                </div>
                                <div class="col-md-6 mb-3">                                    
                                    <label for="city">City</label>
                                    <input value="{{ (!empty($address)) ? $address->city : '' }}" type="text" name="city" id="city" class="form-control" placeholder="City">
                                    <p></p>
                                </div>
                                <div class="col-md-6 mb-3">                                    
                                    <label for="state">State</label>
                                    <input value="{{ (!empty($address)) ? $address->state : '' }}" type="text" name="state" id="state" class="form-control" placeholder="State">
                                    <p></p>
                                </div>
                                <div class="col-md-6 mb-3">                                    
                                    <label for="zip">Zip</label>
                                    <input value="{{ (!empty($address)) ? $address->zip : '' }}" type="text" name="zip" id="zip" class="form-control" placeholder="Zip">
                                    <p></p>
                                </div>

                                <div class="d-flex">
                                    <button class="btn btn-dark">Update</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
          </div>
      </div>
  </div>
</section>
@endsection

@section('customJs')
    <script>
        $("#profileForm").submit(function(event) {
            event.preventDefault();
            $.ajax({
                url: "{{ route('account.updateProfile') }}",
                type: "post",
                data: $(this).serializeArray(),
                dataType: "json",
                success: function (response) {
                    if (response.status == true) {
                        window.location.href="{{ route('account.profile') }}";
                    } else {
                        var errors = response.errors;
                        if(errors.name)
                        {
                            $("#profileForm #name").addClass('is-invalid').siblings('p').addClass('invalid-feedback').html(errors.name);
                        } else 
                        {
                            $("#profileForm #name").removeClass('is-invalid').siblings('p').removeClass('invalid-feedback').html('');
                        }
                        if(errors.email)
                        {
                            $("#profileForm #email").addClass('is-invalid').siblings('p').addClass('invalid-feedback').html(errors.email);
                        } else {
                            $("#profileForm #email").removeClass('is-invalid').siblings('p').removeClass('invalid-feedback').html('');
                        }
                        if(errors.phone)
                        {
                            $("#profileForm #phone").addClass('is-invalid').siblings('p').addClass('invalid-feedback').html(errors.phone);
                        } else {
                            $("#profileForm #phone").removeClass('is-invalid').siblings('p').removeClass('invalid-feedback').html('');
                        }
                    }
                }
            });
        });
        
        $("#addressForm").submit(function(event) {
            event.preventDefault();
            $.ajax({
                url: "{{ route('account.updateAddress') }}",
                type: "post",
                data: $(this).serializeArray(),
                dataType: "json",
                success: function (response) {
                    if (response.status == true) {
                        window.location.href="{{ route('account.profile') }}";
                    } else {
                        var errors = response.errors;
                        if(errors.first_name)
                        {
                            $("#first_name").addClass('is-invalid').siblings('p').addClass('invalid-feedback').html(errors.first_name);
                        } else 
                        {
                            $("#first_name").removeClass('is-invalid').siblings('p').removeClass('invalid-feedback').html('');
                        }
                        if(errors.last_name)
                        {
                            $("#last_name").addClass('is-invalid').siblings('p').addClass('invalid-feedback').html(errors.last_name);
                        } else 
                        {
                            $("#last_name").removeClass('is-invalid').siblings('p').removeClass('invalid-feedback').html('');
                        }
                        if(errors.email)
                        {
                            $("#addressForm #email").addClass('is-invalid').siblings('p').addClass('invalid-feedback').html(errors.email);
                        } else {
                            $("#addressForm #email").removeClass('is-invalid').siblings('p').removeClass('invalid-feedback').html('');
                        }
                        if(errors.mobile)
                        {
                            $("#mobile").addClass('is-invalid').siblings('p').addClass('invalid-feedback').html(errors.mobile);
                        } else {
                            $("#mobile").removeClass('is-invalid').siblings('p').removeClass('invalid-feedback').html('');
                        }
                        if(errors.country)
                        {
                            $("#country").addClass('is-invalid').siblings('p').addClass('invalid-feedback').html(errors.country);
                        } else {
                            $("#country").removeClass('is-invalid').siblings('p').removeClass('invalid-feedback').html('');
                        }
                        if(errors.address)
                        {
                            $("#address").addClass('is-invalid').siblings('p').addClass('invalid-feedback').html(errors.address);
                        } else {
                            $("#address").removeClass('is-invalid').siblings('p').removeClass('invalid-feedback').html('');
                        }
                        if(errors.city)
                        {
                            $("#city").addClass('is-invalid').siblings('p').addClass('invalid-feedback').html(errors.city);
                        } else {
                            $("#city").removeClass('is-invalid').siblings('p').removeClass('invalid-feedback').html('');
                        }
                        if(errors.state)
                        {
                            $("#state").addClass('is-invalid').siblings('p').addClass('invalid-feedback').html(errors.state);
                        } else {
                            $("#state").removeClass('is-invalid').siblings('p').removeClass('invalid-feedback').html('');
                        }
                        if(errors.zip)
                        {
                            $("#zip").addClass('is-invalid').siblings('p').addClass('invalid-feedback').html(errors.zip);
                        } else {
                            $("#zip").removeClass('is-invalid').siblings('p').removeClass('invalid-feedback').html('');
                        }
                    }
                }
            });
        });
    </script>
@endsection