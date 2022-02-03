<?php
namespace App\Controller;

use App\Repository\VisiteRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * Description of AcceuilControlleur
 *
 * @author oreoc
 */
class AcceuilControlleur extends AbstractController {

    /**
     * @var VisiteRepository 
     */
    private $repository;
    
    /**
     * @param VisiteRepository $repository
     */
    function __construct(VisiteRepository $repository) {
        $this->repository = $repository;
    }

    /**
     * @Route("/", name="acceuil")
     * @return Response
     */
    public function index() : Response{
        $visites = $this->repository->findAllLast(2);
        return $this->render("pages/acceuil.html.twig", [
            "visites" => $visites
        ]);
    }
}
