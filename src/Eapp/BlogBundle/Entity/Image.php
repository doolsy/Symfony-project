<?php
// src/Sdz/BlogBundle/Entity/Image.php

namespace Eapp\BlogBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * @ORM\Table(name="tut_image")
 * @ORM\Entity(repositoryClass="Sdz\BlogBundle\Entity\ImageRepository")
 * @ORM\HasLifecycleCallbacks
 */
class Image
{
  /**
   * @ORM\Column(name="id", type="integer")
   * @ORM\Id
   * @ORM\GeneratedValue(strategy="AUTO")
   */
  private $id;

  /**
   * @ORM\Column(name="url", type="string", length=255)
   */
  private $url;

  /**
   * @ORM\Column(name="alt", type="string", length=255)
   */
  private $alt;

  /**
   * @Assert\File(maxSize="500k")
   */
  private $file;

  private $tempFilename;

  /**
   * @ORM\PrePersist()
   * @ORM\PreUpdate()
   */
  public function preUpload()
  {
    // Si jamais il n'y a pas de fichier (champ facultatif)
    if (null === $this->file) {
      return;
    }

    // Le nom du fichier est son id, on doit juste stocker également son extension
    $this->url = $this->file->guessExtension();

    // Et on génère l'attribut alt de la balise <img>, à la valeur du nom du fichier sur le PC de l'internaute
    $this->alt = $this->file->getClientOriginalName();
  }

  /**
   * @ORM\PostPersist()
   * @ORM\PostUpdate()
   */
  public function upload()
  {
    // Si jamais il n'y a pas de fichier (champ facultatif)
    if (null === $this->file) {
      return;
    }

    if (null !== $this->tempFilename) {
      $oldFile = $this->getUploadRootDir().'/'.$this->id.'.'.$this->tempFilename;
      if (file_exists($oldFile)) {
        unlink($oldFile);
      }
    }

    $this->file->move(
      $this->getUploadRootDir(), 
      $this->id.'.'.$this->url  
    );
  }

  /**
   * @ORM\PreRemove()
   */
  public function preRemoveUpload()
  {
    // On sauvegarde temporairement le nom du fichier car il dépend de l'id
    $this->tempFilename = $this->getUploadRootDir().'/'.$this->id.'.'.$this->url;
  }

  /**
   * @ORM\PostRemove()
   */
  public function removeUpload()
  {
    if (file_exists($this->tempFilename)) {
      // On supprime le fichier
      unlink($this->tempFilename);
    }
  }

  public function getUploadDir()
  {
    return 'uploads/img';
  }

  protected function getUploadRootDir()
  {
    // On retourne le chemin absolu vers l'image pour notre code PHP
    return dirname(__DIR__).'/Resources/public/'.$this->getUploadDir();
  }

  public function getWebPath()
  {
    return $this->getUploadRootDir().'/'.$this->getId().'.'.$this->getUrl();
  }

  /**
   * @return integer
   */
  public function getId()
  {
    return $this->id;
  }

  /**
   * @param string $url
   * @return Image
   */
  public function setUrl($url)
  {
    $this->url = $url;
    return $this;
  }

  /**
   * @return string
   */
  public function getUrl()
  {
    return $this->url;
  }

  /**
   * @param string $alt
   * @return Image
   */
  public function setAlt($alt)
  {
    $this->alt = $alt;
    return $this;
  }

  /**
   * @return string
   */
  public function getAlt()
  {
    return $this->alt;
  }

  public function setFile($file)
  {
    $this->file = $file;

    // On vérifie si on avait déjà un fichier pour cette entité
    if (null !== $this->url) {
      // On sauvegarde l'extension du fichier pour le supprimer plus tard
      $this->tempFilename = $this->url;

      // On réinitialise les valeurs des attributs url et alt
      $this->url = null;
      $this->alt = null;
    }
  }

  public function getFile()
  {
    return $this->file;
  }
}
