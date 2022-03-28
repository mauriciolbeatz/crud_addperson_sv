@extends('layouts.app')

@section('template_title')
    Municipios
@endsection

@section('content')
<script type="text/javascript">
    $(document).ready(function() {
    $('#tabla').DataTable();
} );
</script>
    <div class="container">
        
                <div class="card">
                    <div class="card-header">
                        <div style="display: flex; justify-content: space-between; align-items: center;">
                            <span id="card_title">
                                {{ __('Municipios') }}
                            </span>
                        </div>
                    </div>
                    @if ($message = Session::get('success'))
                        <div class="alert alert-success">
                            <p>{{ $message }}</p>
                        </div>
                    @endif
                    <div class="card-body">
                        <div class="table-responsive">
                            <table id="tabla" class="table table-striped table-hover">
                                <thead class="thead">
                                    <tr>
                                        <th>No</th>
                                        
										<th>Nombre</th>

                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($municipios as $municipio)
                                        <tr>
                                            <td>{{ ++$i }}</td>
											<td>{{ $municipio->name }}</td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
    </div>
@endsection
