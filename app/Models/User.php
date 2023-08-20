<?php
  
namespace App\Models;
    
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use Laravel\Scout\Searchable;
   
class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable, Searchable;
  
    /**
     * The attributes that are mass assignable.
     *
     * @var array

     */
    protected $fillable = [
        'cliente',
        'vendedor',
        'descricao'
    ];
  
    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array

     */
    protected $hidden = [
    
    ];
  
    /**
     * The attributes that should be cast.
     *
     * @var array

     */
    protected $casts = [
        
    ];
  
    /**
     * Get the indexable data array for the model.
     *
     * @return array
     */
    public function toSearchableArray()
    {
        return [
            'cliente' => $this->cliente,
            'vendedor' => $this->vendedor
        ];
    }
}