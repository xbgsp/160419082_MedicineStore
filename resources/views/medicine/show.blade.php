<!DOCTYPE html>
<html lang="en">
<head>
  <title>Show Medicine</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <h2>Show Medicine</h2>
    @if ($msg)
    <table class="table table-hover">
      <thead>
        <tr>
          <th>Name</th>
          <th>Form</th>
          <th>Restriction Formula</th>
          <th>Price</th>
          <th>Category</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>{{ $msg -> generic_name }}</td>
          <td>{{ $msg -> form }}</td>
          <td>{{ $msg -> restriction_formula }}</td>
          <td>{{ $msg -> price }}</td>
          <td>{{ ($msg -> category) -> name }}</td>
        </tr>
      </tbody>
    </table>
    @else
    <h3>No Medicine Found</h3>
    @endif
</div>

</body>
</html>