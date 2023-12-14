<?php

namespace App\Controller;

use App\Entity\Article;
use App\Entity\User;
use App\Form\ArticleType;
use App\Repository\ArticleRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\File\Exception\FileException;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\String\Slugger\SluggerInterface;


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
        #[Route('/articles/new',name: 'new_article' )]
        public function new(Request $request, EntityManagerInterface $em, SluggerInterface $slugger) : Response
     
        {
            $article = new Article();
    
            $form = $this->createForm(ArticleType::class, $article);
            $form -> handleRequest($request);
    
    if ($form ->isSubmitted() && $form ->isValid())
    {
        
        $article->setCreatedOn(new \DateTime());
        $article->setVisible(true);
        $img = $form->get('img')->getData();

        // this condition is needed because the 'brochure' field is not required
        // so the PDF file must be processed only when a file is uploaded
        if ($img) {
            $originalFilename = pathinfo($img->getClientOriginalName(), PATHINFO_FILENAME);
            // this is needed to safely include the file name as part of the URL
            $safeFilename = $slugger->slug($originalFilename);
            $newFilename = $safeFilename.'-'.uniqid().'.'.$img->guessExtension();

            // Move the file to the directory where brochures are stored
            try {
                $img->move(
                    $this->getParameter('brochures_directory'),
                    $newFilename
                );
            } catch (FileException $e) {
                // ... handle exception if something happens during file upload
            }

            // updates the 'brochureFilename' property to store the PDF file name
            // instead of its contents
            $article->setImgFilename($newFilename);
        }
        $em->persist($article);
        $em-> flush();
        $this->addFlash('success', 'Article créé avec succès!');

        return $this ->redirectToRoute('home');
    }
    return $this->renderForm("article/new.html.twig",
            ['article_form' => $form]);
        }
        #[Route('/articles/me', name: 'articles_me')]
        public function articlesByConnectedUser(): Response
        {
            $this->denyAccessUnlessGranted('IS_AUTHENTICATED_FULLY');
            $user = $this->getUser();
    
            if (!$user instanceof User) {
                return $this->redirectToRoute('home');
            }
    
            $articles = $user->getArticles();
    
            return $this->render('article/me.html.twig', ['articles' => $articles]);
        }
        
    }