<?php
// src/Sdz/BlogBundle/Form/ImageType.php

namespace Eapp\BlogBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class ImageType extends AbstractType
{
  public function buildForm(FormBuilderInterface $builder, array $options)
  {
    $builder
      ->add('file', 'file')
    ;
  }

  public function setDefaultOptions(OptionsResolverInterface $resolver)
  {
    $resolver->setDefaults(array(
      'data_class' => 'Eapp\BlogBundle\Entity\Image'
    ));
  }

  public function getName()
  {
    return 'eapp_blogbundle_imagetype';
  }
}
