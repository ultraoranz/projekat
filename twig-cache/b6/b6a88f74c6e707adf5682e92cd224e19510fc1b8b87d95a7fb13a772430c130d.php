<?php

/* UserDashboard/index.html */
class __TwigTemplate_048917646d7773ec220bf39ea30bbb297c73f72b5144b46c640704a2a3d321e3 extends Twig_Template
{
    private $source;

    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        // line 1
        $this->parent = $this->loadTemplate("_global/index.html", "UserDashboard/index.html", 1);
        $this->blocks = array(
            'main' => array($this, 'block_main'),
        );
    }

    protected function doGetParent(array $context)
    {
        return "_global/index.html";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    public function block_main($context, array $blocks = array())
    {
        echo " ";
        ob_start();
        // line 2
        echo "<div class=\"row\">
    <div class=\"col-xl-4 col-lg-4 col-md-6 col-sm-12\">
        <div class=\"our-services-wrapper mb-60\">
            <div class=\"services-inner\">
                <div class=\"our-services-img\">
                    <img src=\"";
        // line 7
        echo twig_escape_filter($this->env, ($context["BASE"] ?? null), "html", null, true);
        echo "/assets/images/l.GIF\" width=\"68px\" alt=\"\">
                </div>
                <div class=\"our-services-text\">
                    <a href=\"";
        // line 10
        echo twig_escape_filter($this->env, ($context["BASE"] ?? null), "html", null, true);
        echo "user/orders\" class=\"col-12 col-sm-6 col-md-6 text-center \">
                        Upravljanje porudzbinama
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class=\"col-xl-4 col-lg-4 col-md-6 col-sm-12\">
        <div class=\"our-services-wrapper mb-60\">
            <div class=\"services-inner\">
                <div class=\"our-services-img\">
                    <img src=\"";
        // line 21
        echo twig_escape_filter($this->env, ($context["BASE"] ?? null), "html", null, true);
        echo "/assets/images/l.GIF\" width=\"68px\" alt=\"\">
                </div>
                <div class=\"our-services-text\">
                    <a href=\"";
        // line 24
        echo twig_escape_filter($this->env, ($context["BASE"] ?? null), "html", null, true);
        echo "user/categories\" class=\"col-12 col-sm-6 col-md-6 text-center \">
                        Upravljanje kategorijama
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class=\"col-xl-4 col-lg-4 col-md-6 col-sm-12\">
        <div class=\"our-services-wrapper mb-60\">
            <div class=\"services-inner\">
                <div class=\"our-services-img\">
                    <img src=\"";
        // line 35
        echo twig_escape_filter($this->env, ($context["BASE"] ?? null), "html", null, true);
        echo "/assets/images/l.GIF\" width=\"68px\" alt=\"\">
                </div>
                <div class=\"our-services-text\">
                    <a href=\"";
        // line 38
        echo twig_escape_filter($this->env, ($context["BASE"] ?? null), "html", null, true);
        echo "user/manufacturers\" class=\"col-12 col-sm-6 col-md-6 text-center \">
                        Upravljanje proizvodjačima
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class=\"col-xl-4 col-lg-4 col-md-6 col-sm-12\">
        <div class=\"our-services-wrapper mb-60\">
            <div class=\"services-inner\">
                <div class=\"our-services-img\">
                    <img src=\"";
        // line 49
        echo twig_escape_filter($this->env, ($context["BASE"] ?? null), "html", null, true);
        echo "/assets/images/l.GIF\" width=\"68px\" alt=\"\">
                </div>
                <div class=\"our-services-text\">
                    <a href=\"";
        // line 52
        echo twig_escape_filter($this->env, ($context["BASE"] ?? null), "html", null, true);
        echo "user/profiles\" class=\"col-12 col-sm-6 col-md-6 text-center \">
                        Upravljanje profilom
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class=\"col-xl-4 col-lg-4 col-md-6 col-sm-12\">
        <div class=\"our-services-wrapper mb-60\">
            <div class=\"services-inner\">
                <div class=\"our-services-img\">
                    <img src=\"";
        // line 63
        echo twig_escape_filter($this->env, ($context["BASE"] ?? null), "html", null, true);
        echo "/assets/images/l.GIF\" width=\"68px\" alt=\"\">
                </div>
                <div class=\"our-services-text\">
                    <a href=\"";
        // line 66
        echo twig_escape_filter($this->env, ($context["BASE"] ?? null), "html", null, true);
        echo "user/models\" class=\"col-12 col-sm-6 col-md-6 text-center \">
                        Upravljanje uslugama
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class=\"col-xl-4 col-lg-4 col-md-6 col-sm-12\">
        <div class=\"our-services-wrapper mb-60\">
            <div class=\"services-inner\">
                <div class=\"our-services-img\">
                    <img src=\"";
        // line 77
        echo twig_escape_filter($this->env, ($context["BASE"] ?? null), "html", null, true);
        echo "/assets/images/l.GIF\" width=\"68px\" alt=\"\">
                </div>
                <div class=\"our-services-text\">
                    <a href=\"";
        // line 80
        echo twig_escape_filter($this->env, ($context["BASE"] ?? null), "html", null, true);
        echo "user/orders\" class=\"col-12 col-sm-6 col-md-6 text-center \">
                        Upravljanje porudzbinama
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
";
        echo trim(preg_replace('/>\s+</', '><', ob_get_clean()));
        // line 88
        echo " ";
    }

    public function getTemplateName()
    {
        return "UserDashboard/index.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  161 => 88,  149 => 80,  143 => 77,  129 => 66,  123 => 63,  109 => 52,  103 => 49,  89 => 38,  83 => 35,  69 => 24,  63 => 21,  49 => 10,  43 => 7,  36 => 2,  15 => 1,);
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "UserDashboard/index.html", "C:\\xampp\\htdocs\\salonK\\views\\UserDashboard\\index.html");
    }
}
