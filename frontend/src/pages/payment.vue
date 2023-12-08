<template>
    <div>
      <nav id="navbar-main" class="navbar navbar-horizontal navbar-transparent navbar-main navbar-expand-lg navbar-dark">
        <div class="container">
          <div class="navbar-collapse navbar-custom-collapse collapse" id="navbar-collapse">
            <div class="navbar-collapse-header">
            </div>
          </div>
        </div>
      </nav>
      <!-- header end -->
  
      <div class="main-content">
        <div class="header py-5 pt-7">
          <div class="container">
            <div class="header-body text-center mb-8">
              <div class="row justify-content-center">
              </div>
            </div>
          </div>
        </div>
        <div class="container mt--8 pb-5">
          <div class="row justify-content-center">
            <div class="col-md-5">
              <div class="card">
                <div class="card-header mb-0">
                  <div class="row align-items-center justify-content-center"> <!-- Center alignment -->
                    <div class="col text-center">
                      <h2 class="fw-bold mb-0"><span class="text-sm">MWK</span> 100.00</h2>
                      <p class="text-sm">Innocent Misheck</p>
                    </div>
                  </div>
                </div>
                <div class="card-body">
                  <form action="https://in.paychangu.com/payment-submit/58035018025" method="post" id="payment-form">
                    <input type="hidden" name="_token" value="KAytJqkjqDZEC1W29uV4bmR2C9Cm2fRxVp1dViiH">
                    <div class="form-group">
                      <select class="form-control" name="status" required>
                        <option value="">Select transaction response</option>
                        <option value="1">Successful</option>
                        <option value="2">Failed</option>
                      </select>
                    </div>
                    <input type="hidden" value="test" name="type">
                    <input type="hidden" value="2" name="crf">
                    <input type="hidden" value="0" name="popup">
                    <div class="text-center">
                      <button type="submit" id="ggglogin" class="btn btn-neutral btn-block my-4">
                        Pay MWK<span id="tcr">100.00</span>
                      </button>
                      <span class="badge badge-pill badge-primary"><i class="fal fa-ban"></i> Test mode</span>
                      <p class="text-default text-xs"><i class="fal fa-lock"></i> Secured by
                        <span class="fw-bold">PayChangu</span></p>
                    </div>
                  </form>
                </div>
              </div>
              <div class="row justify-content-center mt-5">
                <a href="https://api.paychangu.com/payment/cancel/58035018025" class="text-white"><i class="fal fa-times"></i> Cancel Payment</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </template>
  
  <script>
  export default {
    mounted() {
      // Place any additional JavaScript logic here
      $('.preloader').fadeOut(1000);
    },
  };
  </script>
  