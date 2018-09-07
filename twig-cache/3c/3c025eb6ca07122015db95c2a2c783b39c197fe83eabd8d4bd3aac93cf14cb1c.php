<?php

/* Model/addToCart.html */
class __TwigTemplate_669b20e8dbb6c2c8b88ea583deb7c482e69c33417f5fd35ca44264c3787a43ce extends Twig_Template
{
    private $source;

    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        // line 1
        $this->parent = $this->loadTemplate("_global/index.html", "Model/addToCart.html", 1);
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
        // line 2
        echo "<div class=\"container\">
    <div class=\"row\">
        <form method=\"post\" class=\"col col-md-8 offset-md-2 card\">
            <div class=\"card-header \">
                <h3 class=\"text-center\">Odabrali ste uslugu: ";
        // line 6
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["model"] ?? null), "name", array()), "html", null, true);
        echo "</h3>

            </div>
            <div class=\"card-body\">
                <h4 class=\"text-center\">Unesiti za koliko osoba zelite tretman:</h4>
                <br>
                <!--<h5 class=\"text-center\">Uneta vrednost mora biti broj</h5>-->
                <label for=\"osoba\">Koliko osoba: </label>
                <br>
                <input type=\"text\" id=\"osoba\" name=\"osoba\" required class=\"form-control\" placeholder=\"Uneta vrednost mora biti broj.\">
            </div>

            <div class=\"card-footer text-center\">
                <button type=\"submit\" class=\"btn btn-primary\">Dodajte u korpu</button>
            </div>

        </form>
    </div>
</div>

";
    }

    public function getTemplateName()
    {
        return "Model/addToCart.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  40 => 6,  34 => 2,  15 => 1,);
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "Model/addToCart.html", "C:\\xampp\\htdocs\\salonK\\views\\Model\\addToCart.html");
    }
}
