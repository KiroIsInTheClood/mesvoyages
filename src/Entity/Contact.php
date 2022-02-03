<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace App\Entity;

use Symfony\Component\Validator\Constraints as Assert;
/**
 * Description of Contact
 *
 * @author oreoc
 */
class Contact {
    /**
     * @Assert\NotBlank()
     * @Assert\Length(min=2, max=100)
     * @var string|null 
     */
    private $nom;
    /**
     * @Assert\NotBlank()
     * @Assert\Email()
     * @var string|null 
     */
    private $email;
    /**
     * @Assert\NotBlank()
     * @var string|null 
     */
    private $message;
    
    function getNom(): ?string {
        return $this->nom;
    }

    function getEmail(): ?string {
        return $this->email;
    }

    function getMessage(): ?string {
        return $this->message;
    }

    function setNom(?string $nom) : self {
        $this->nom = $nom;
        return $this;
    }

    function setEmail(?string $email) : self{
        $this->email = $email;
        return $this;
    }

    function setMessage(?string $message) : self {
        $this->message = $message;
        return $this;
    }


}
