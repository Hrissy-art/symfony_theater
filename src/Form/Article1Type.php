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

class Article1Type extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('nameShow', TextType::class, [
                'label' => "Titre de l'article",
                'attr' => [
                    'class' => 'block w-full px-4 py-2 mt-2 border border-gray-300 rounded-md focus:outline-none focus:ring focus:border-blue-500 sm:text-sm',
                ],
            ])
            ->add('summaryShow', TextType::class, [
                'label' => "Summary",
                'attr' => [
                    'class' => 'block w-full px-4 py-2 mt-2 border border-gray-300 rounded-md focus:outline-none focus:ring focus:border-blue-500 sm:text-sm',
                ],
            ])
            // ->add('img', FileType::class, [
            //     'label' => 'Image de l\'article',
            //     'required' => false
            // ])
            ->add('category', EntityType::class, [
                'class' => Category::class,
                'choice_label' => 'name',
                'attr' => [
                    'class' => 'block w-full px-4 py-2 mt-2 border border-gray-300 rounded-md focus:outline-none focus:ring focus:border-blue-500 sm:text-sm',
                ],
            ])
            ->add('theatres', EntityType::class, [
                'class' => Theater::class,
                'choice_label' => 'name',
                'multiple' => true,
                'attr' => [
                    'class' => 'block w-full px-4 py-2 mt-2 border border-gray-300 rounded-md focus:outline-none focus:ring focus:border-blue-500 sm:text-sm',
                ],
            ])
            ->add('Save', SubmitType::class, [
                'attr' => [
                    'class' => 'bg-blue-600 hover:bg-blue-800 text-white px-5 py-2 rounded-md mt-4',
                ],
            ]);
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Article::class,
        ]);
    }
}
