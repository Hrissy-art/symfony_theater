<?php

namespace App\Form;

use App\Entity\Article;
use App\Entity\Category;
use App\Entity\Theater;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class ArticleType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('nameShow', TextType::class, [
                'label' => "Titre de l'article"
            ])
            // ->add('author')
            ->add('summaryShow', TextType::class, [
                'label' => "Summary"
            ])
            ->add('img', FileType::class, [
                'label' => 'Image de l\'article',
                'required' => false
            ])
            ->add('category', EntityType::class, [
                'class' => Category::class,
                'choice_label' => 'name'
            ])
            ->add('theatres', EntityType::class, [
                'class' => Theater::class,
                'choice_label' => 'name',
                'multiple' => true
            ])

            ->add('Save', SubmitType::class, [
                'attr' => [
                    'class' => 'bg-blue-600 hover:bg-blue-800 text-white px-5 py-2'
                ]
            ]);
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Article::class,
        ]);
    }
}
