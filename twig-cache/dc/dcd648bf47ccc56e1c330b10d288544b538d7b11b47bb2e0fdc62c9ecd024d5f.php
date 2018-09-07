<?php

/* _global/index.html */
class __TwigTemplate_434838722bd9aaead6a86a9539effc512a288434396f9ea2109db4c2563eacf1 extends Twig_Template
{
    private $source;

    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = array(
            'naslov' => array($this, 'block_naslov'),
            'main' => array($this, 'block_main'),
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<!doctype html>
<html lang=\"sr\">

<head>
    <title>Kozmeticki salon - ";
        // line 5
        $this->displayBlock('naslov', $context, $blocks);
        echo "</title>
    <link rel=\"icon\" href=\"";
        // line 6
        echo twig_escape_filter($this->env, ($context["BASE"] ?? null), "html", null, true);
        echo "assets/images/favicon.png\" type=\"image/x-icon\" />
    <meta charset=\"utf-8\">
    <link rel=\"stylesheet\" href=\"";
        // line 8
        echo twig_escape_filter($this->env, ($context["BASE"] ?? null), "html", null, true);
        echo "assets/libs/font-awesome/css/font-awesome.min.css\">
    <link rel=\"stylesheet\" href=\"";
        // line 9
        echo twig_escape_filter($this->env, ($context["BASE"] ?? null), "html", null, true);
        echo "assets/libs/bootstrap/dist/css/bootstrap.css\">
    <link rel=\"stylesheet\" href=\"";
        // line 10
        echo twig_escape_filter($this->env, ($context["BASE"] ?? null), "html", null, true);
        echo "assets/css/main.css\">
</head>

<body>


    <div class=\"container\">
        <!-- 
        <header>

            <div class=\"row\">
                <div class=\"col col-sm\">
                    <a href=\"";
        // line 22
        echo twig_escape_filter($this->env, ($context["BASE"] ?? null), "html", null, true);
        echo "\">
                        <img src=\"";
        // line 23
        echo twig_escape_filter($this->env, ($context["BASE"] ?? null), "html", null, true);
        echo "assets/images/logo.jpg\" alt=\"logo\" width=\"60%\">
                    </a>
                </div>
                <div class=\"col col-sm\">
                    <div class=\"social-icons\">
                        <div class=\"text-right center-block\">
                            <br>
                            <a href=\"https://www.facebook.com/bootsnipp\">
                                <i id=\"social-fb\" class=\"fa fa-facebook-square fa-3x social\"></i>
                            </a>
                            <a href=\"https://twitter.com/bootsnipp\">
                                <i id=\"social-tw\" class=\"fa fa-twitter-square fa-3x social\"></i>
                            </a>
                            <a href=\"https://plus.google.com/+Bootsnipp-page\">
                                <i id=\"social-gp\" class=\"fa fa-google-plus-square fa-3x social\"></i>
                            </a>
                            <a href=\"mailto:bootsnipp@gmail.com\">
                                <i id=\"social-em\" class=\"fa fa-envelope-square fa-3x social\"></i>
                            </a>
                            <a href=\"";
        // line 42
        echo twig_escape_filter($this->env, ($context["BASE"] ?? null), "html", null, true);
        echo "cart/";
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["cart_model"] ?? null), "cart_model_id", array()), "html", null, true);
        echo "\" style=\"font-size: 43px\">
                                <i class=\"fa fa-shopping-cart social size\"></i>
                            </a>
                        </div>


                    </div>
                </div>



            </div>
            <nav class=\"navbar navbar-expand-lg navbar-light bg-light navbar-default\">
                <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarNavAltMarkup\" aria-controls=\"navbarNavAltMarkup\"
                    aria-expanded=\"false\" aria-label=\"Toggle navigation\">
                    <span class=\"navbar-toggler-icon\"></span>
                </button>
                <div class=\"collapse navbar-collapse\" id=\"navbarNavAltMarkup\">
                    <div class=\"navbar-nav\">
                        <a class=\"nav-item nav-link\" href=\"";
        // line 61
        echo twig_escape_filter($this->env, ($context["BASE"] ?? null), "html", null, true);
        echo "\">
                            <i class=\"fa fa-home\"></i> Pocetna</a> ";
        // line 62
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["categories"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["category"]) {
            // line 63
            echo "                        <a class=\"nav-item nav-link\" href=\"";
            echo twig_escape_filter($this->env, ($context["BASE"] ?? null), "html", null, true);
            echo "category/";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["category"], "category_id", array()), "html", null, true);
            echo "\">
                            <i class=\"fa fa-cube\"></i> ";
            // line 64
            echo twig_escape_filter($this->env, twig_title_string_filter($this->env, twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["category"], "name", array()))), "html", null, true);
            echo "</a> ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['category'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 65
        echo "                        <!--  <a class=\"nav-item nav-link\" href=\"";
        echo twig_escape_filter($this->env, ($context["BASE"] ?? null), "html", null, true);
        echo "contact\"><i class=\"fa fa-phone\"></i>Kontakt</a>
                                <a class=\"nav-item nav-link\" href=\"";
        // line 66
        echo twig_escape_filter($this->env, ($context["BASE"] ?? null), "html", null, true);
        echo "log-out\"><i class=\"fa fa-sign-out\"></i>Odjava</a>    -->

        <!-- </div>
    </div>
    <form action=\"";
        // line 70
        echo twig_escape_filter($this->env, ($context["BASE"] ?? null), "html", null, true);
        echo "user/login/\" method=\"get\">
        <button type=\"submit\" class=\"btn btn-warning navbar-btn\">Prijava</button>
    </form>
    </nav> -->
        <nav class=\"navbar navbar-default\">
            <div class=\"container-fluid\">
                <div class=\"navbar-header\">
                    <a href=\"";
        // line 77
        echo twig_escape_filter($this->env, ($context["BASE"] ?? null), "html", null, true);
        echo "\">
                        <img src=\"";
        // line 78
        echo twig_escape_filter($this->env, ($context["BASE"] ?? null), "html", null, true);
        echo "assets/images/logo.jpg\" alt=\"logo\" width=\"60%\">
                    </a>
                </div>
                <ul class=\"nav navbar-nav inl\" style=\"display: inline;\">
                    <li class=\"active\">
                        <a class=\"nav-item nav-link\" href=\"";
        // line 83
        echo twig_escape_filter($this->env, ($context["BASE"] ?? null), "html", null, true);
        echo "\">
                            <i class=\"fa fa-home\"></i> Pocetna</a>
                    </li>
                    ";
        // line 86
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["categories"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["category"]) {
            // line 87
            echo "                    <li>
                        <a class=\"nav-item nav-link\" href=\"";
            // line 88
            echo twig_escape_filter($this->env, ($context["BASE"] ?? null), "html", null, true);
            echo "category/";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["category"], "category_id", array()), "html", null, true);
            echo "\">
                            <i class=\"fa fa-cube\"></i> ";
            // line 89
            echo twig_escape_filter($this->env, twig_title_string_filter($this->env, twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["category"], "name", array()))), "html", null, true);
            echo "</a> ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['category'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 90
        echo "                    </li>
                    <!--  <a class=\"nav-item nav-link\" href=\"";
        // line 91
        echo twig_escape_filter($this->env, ($context["BASE"] ?? null), "html", null, true);
        echo "contact\"><i class=\"fa fa-phone\"></i>Kontakt</a>
                                <a class=\"nav-item nav-link\" href=\"";
        // line 92
        echo twig_escape_filter($this->env, ($context["BASE"] ?? null), "html", null, true);
        echo "log-out\"><i class=\"fa fa-sign-out\"></i>Odjava</a>    -->
                    <a href=\"";
        // line 93
        echo twig_escape_filter($this->env, ($context["BASE"] ?? null), "html", null, true);
        echo "cart/";
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["cart_model"] ?? null), "cart_model_id", array()), "html", null, true);
        echo "\" style=\"font-size: 43px\">
                        <i class=\"fa fa-shopping-cart social size\"></i>
                    </a>
                </ul>
                <form action=\"";
        // line 97
        echo twig_escape_filter($this->env, ($context["BASE"] ?? null), "html", null, true);
        echo "user/login/\" method=\"get\">
                    <button type=\"submit\" class=\"btn btn-warning navbar-btn\">Prijava</button>
                </form>
            </div>

        </nav>

        </header>



        <main>
            ";
        // line 109
        $this->displayBlock('main', $context, $blocks);
        // line 110
        echo "        </main>


        <footer>

            <div class=\"row\">
                <div class=\"footer-top col col-sm-12 col-md-12\">

                    <a href=\"";
        // line 118
        echo twig_escape_filter($this->env, ($context["BASE"] ?? null), "html", null, true);
        echo "\">
                        <img class=\"slika\" src=\"";
        // line 119
        echo twig_escape_filter($this->env, ($context["BASE"] ?? null), "html", null, true);
        echo "assets/images/logo.jpg\" alt=\"logo\">
                    </a>


                    <p class=\"text\">Kontakt</p>
                    <p class=\"text\">Kraljevica Marka b.b.</p>
                    <p class=\"text\">11000, Beograd</p>
                    <p class=\"text\">Tel: 011-123-456</p>
                    <p class=\"text\">office@beauty.rs</p>





                </div>
            </div>
            <div class=\"footer-lower\">
                <div class=\"col-sm-12\">
                    <hr>
                </div>
                <div class=\"col-sm-12\">
                    <p class=\"text-center\">Sva prava zadržana &copy; 2018 | Nemanja Simić</p>
                </div>
            </div>

        </footer>
    </div>



    <script src=\"";
        // line 149
        echo twig_escape_filter($this->env, ($context["BASE"] ?? null), "html", null, true);
        echo "assets/libs/jquery/dist/jquery.min.js\"></script>
    <script src=\"";
        // line 150
        echo twig_escape_filter($this->env, ($context["BASE"] ?? null), "html", null, true);
        echo "assets/libs/bootstrap/dist/js/bootstrap.min.js\"></script>

</body>

</html>";
    }

    // line 5
    public function block_naslov($context, array $blocks = array())
    {
        echo "Pocetna";
    }

    // line 109
    public function block_main($context, array $blocks = array())
    {
        echo " ";
    }

    public function getTemplateName()
    {
        return "_global/index.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  298 => 109,  292 => 5,  283 => 150,  279 => 149,  246 => 119,  242 => 118,  232 => 110,  230 => 109,  215 => 97,  206 => 93,  202 => 92,  198 => 91,  195 => 90,  188 => 89,  182 => 88,  179 => 87,  175 => 86,  169 => 83,  161 => 78,  157 => 77,  147 => 70,  140 => 66,  135 => 65,  128 => 64,  121 => 63,  117 => 62,  113 => 61,  89 => 42,  67 => 23,  63 => 22,  48 => 10,  44 => 9,  40 => 8,  35 => 6,  31 => 5,  25 => 1,);
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "_global/index.html", "C:\\xampp\\htdocs\\salonK\\views\\_global\\index.html");
    }
}
