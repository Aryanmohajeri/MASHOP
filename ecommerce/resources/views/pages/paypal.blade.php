    <label>
        <input type="radio" name="payment-option" value="paypal" checked>
        <img src="/demo/checkout/static/img/paypal-mark.jpg" alt="Pay with Paypal">
    </label>

    <label>
        <input type="radio" name="payment-option" value="card">
        <img src="/demo/checkout/static/img/card-mark.png" alt="Accepting Visa, Mastercard, Discover and American Express">
    </label>

    <div id="paypal-button-container"></div>
    <div id="card-button-container" class="hidden"><button>Continue</button></div>

    <!-- Include the PayPal JavaScript SDK -->
    <script src="https://www.paypal.com/sdk/js?client-id=test&currency=USD"></script>

    <script>
        // Listen for changes to the radio fields
        document.querySelectorAll('input[name=payment-option]').forEach(function(el) {
            el.addEventListener('change', function(event) {

                // If PayPal is selected, show the PayPal button
                if (event.target.value === 'paypal') {
                    document.querySelector('#card-button-container').style.display = 'none';
                    document.querySelector('#paypal-button-container').style.display = 'inline-block';
                }

                // If Card is selected, show the standard continue button
                if (event.target.value === 'card') {
                    document.querySelector('#card-button-container').style.display = 'inline-block';
                    document.querySelector('#paypal-button-container').style.display = 'none';
                }
            });
        });

        // Hide Non-PayPal button by default
        document.querySelector('#card-button-container').style.display = 'none';

        // Render the PayPal button into #paypal-button-container
        paypal.Buttons({
            style: {
                layout: 'horizontal'
            }
        }).render('#paypal-button-container');
    </script>
