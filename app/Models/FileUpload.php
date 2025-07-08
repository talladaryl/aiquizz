<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class FileUpload extends Model
{
    use HasFactory;

    protected $table = 'file_uploads';

    protected $fillable = [
        'file_name',
        'file_path',
        'file_type',
        'related_id',
        'related_type',
    ];

    /**
     * Relation polymorphe pour rattacher un fichier à n'importe quel modèle (question, answer...).
     */
    public function related()
    {
        return $this->morphTo();
    }
}
