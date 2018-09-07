<?php

/* Cart/show.html */
class __TwigTemplate_2ed7326df0cb6b7aa2f535c97a24cdee5cd145c461247f5797141afa85f55d19 extends Twig_Template
{
    private $source;

    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        // line 1
        $this->parent = $this->loadTemplate("_global/index.html", "Cart/show.html", 1);
        $this->blocks = array(
            'main' => array($this, 'block_main'),
            'naslov' => array($this, 'block_naslov'),
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
        // line 2
        echo "<h4 class=\"text-center\">Spisak u korpi je: </h4>

<div class=\"container\">
    <div class=\"row\">


        <table class=\"table table-bordered table-hover text-center table-responsive w-100 d-block d-md-table\">
            <thead>
                <tr>

                    <th scope=\"col\">Opis Usluge</th>
                    <th scope=\"col\">Cena</th>
                    <th scope=\"col\">Ukloniti</th>
                </tr>
            </thead>

            <tbody>
                ";
        // line 19
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["cartModelModel"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["pom"]) {
            // line 20
            echo "                <tr>

                    <td>
                        <a href=\"";
            // line 23
            echo twig_escape_filter($this->env, ($context["BASE"] ?? null), "html", null, true);
            echo "profile/model/";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["pom"], "model_id", array()), "html", null, true);
            echo "\">
                            ";
            // line 24
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["pom"], "name", array()), "html", null, true);
            echo "
                        </a>
                    </td>
                    <td>
                        <p>Cena po usluzi: ";
            // line 28
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["pom"], "price_beauty", array()), "html", null, true);
            echo " RSD </p>
                    </td>
                    <td>
                        <form action=\"";
            // line 31
            echo twig_escape_filter($this->env, ($context["BASE"] ?? null), "html", null, true);
            echo "cart/\" method=\"POST\">
                            <button type=\"submit\" name=\"cart_model_id\" id=\"cart_model_id\" value=\"";
            // line 32
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["pom"], "cart_model_id", array()), "html", null, true);
            echo "\" class=\"cart_model_id btn btn-danger\">
                                <i class=\"fa fa-trash\"></i>
                            </button>
                        </form>
                    </td>
                    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['pom'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 38
        echo "

                </tr>

            </tbody>
        </table>





    </div>
</div>
<form action=\"";
        // line 51
        echo twig_escape_filter($this->env, ($context["BASE"] ?? null), "html", null, true);
        echo "cart/order/\" class=\"text-center\">
    <button type=\"submit\" class=\"btn btn-primary\">Naruci proizvode</button>
</form>

";
    }

    // line 55
    public function block_naslov($context, array $blocks = array())
    {
        echo " ";
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["category"] ?? null), "name", array()));
        echo " ";
    }

    public function getTemplateName()
    {
        return "Cart/show.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  122 => 55,  113 => 51,  98 => 38,  86 => 32,  82 => 31,  76 => 28,  69 => 24,  63 => 23,  58 => 20,  54 => 19,  35 => 2,  15 => 1,);
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "Cart/show.html", "C:\\xampp\\htdocs\\salonK\\views\\Cart\\show.html");
    }
}
