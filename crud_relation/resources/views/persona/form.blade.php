<div class="box box-info padding-1">
    <div class="box-body">
        
        <div class="form-group">
            {{ Form::label('municipio_id') }}
            {{ Form::select('municipio_id', $municipio, $persona->municipio_id, ['class' => 'form-control' . ($errors->has('municipio_id') ? ' is-invalid' : ''), 'placeholder' => 'Municipio']) }}
            {!! $errors->first('municipio_id', '<div class="invalid-feedback">:message</div>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('name') }}
            {{ Form::text('name', $persona->name, ['class' => 'form-control' . ($errors->has('name') ? ' is-invalid' : ''), 'placeholder' => 'Name']) }}
            {!! $errors->first('name', '<div class="invalid-feedback">:message</div>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('phone') }}
            {{ Form::text('phone', $persona->phone, ['class' => 'form-control' . ($errors->has('phone') ? ' is-invalid' : ''), 'placeholder' => 'Phone']) }}
            {!! $errors->first('phone', '<div class="invalid-feedback">:message</div>') !!}
        </div>

    </div>
    <div class="box-footer mt20">
        <br>
        <button type="submit" class="btn btn-primary">Submit</button>
    </div>
</div>