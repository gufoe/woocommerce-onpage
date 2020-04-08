<?php
namespace OpLib;

if (!defined('OP_PLUGIN')) die(420);

use WeDevs\ORM\Eloquent\Model;

class TermMeta extends Model {
    protected $table = PFX.'termmeta';
    protected $guarded = [];
    public $timestamps = false;
    protected $primaryKey = 'meta_id';

    public function meta() {
      return $this->belongsTo(Term::class, 'term_id');
    }
}