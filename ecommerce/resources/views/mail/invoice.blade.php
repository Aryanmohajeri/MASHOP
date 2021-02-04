<!DOCTYPE html>
<html>
<head>
    <title>Your Order Invoice</title>
</head>
<body>

<ul>
    <li> Payment ID: {{ $data['payment_id'] }}  </li>
    <li> +20% VAT : {{ $data['vat'] }} </li>
    <li> Total Amount : {{ $data['total'] }} </li>
    <li> Payment Type : {{ $data['payment_type'] }} </li>
    <li> Order Number : {{ $data['order_number'] }} </li>
</ul>


</body>
</html>
