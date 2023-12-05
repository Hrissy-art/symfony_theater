<?php

namespace App\Controller;

use App\Entity\Article;
use App\Entity\User;
use App\Form\ArticleType;
use App\Repository\ArticleRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ArticleController extends AbstractController
{
    #[Route('/articles', name: 'list_articles')]
    public function index(ArticleRepository $articleRepository): Response
    {
        $articles = $articleRepository->findAll();
        return $this->render('article/list.html.twig', [
            'articles' => $articles,
          'title' => 'Show list'
        ]);
    }
    #[Route('/articles/{id<\d+>}', name: 'item_article')]
        public function item(ArticleRepository $articleRepository, $id): response
        {
            $article = $articleRepository->find($id);
            return $this->render('article/item.html.twig', [
    'article' => $article,
            ]);
        }
    }