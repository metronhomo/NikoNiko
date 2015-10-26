
menu <- function(){
  fluidPage(
    wellPanel(
      helpText(h4('Selecciona las variables sobre las que quieres filtrar.')),
      checkboxGroupInput(
        'filtroEdad1', 
        label = h4('Edad'),
        choices = list(
          '25 - 35' = '25-35',
          '36 - 55' = '36-55'),
        selected = c('25-35', '36-55')),
      checkboxGroupInput(
        'filtroGen1', 
        label = h4('Género'),
        choices = list(
          'Masculino' = 'Hombre',
          'Femenino' = 'Mujer'),
        selected = c('Hombre', 'Mujer')),
      checkboxGroupInput(
        'filtroNiv1', 
        label = h4('Nivel'),
        choices = list(
          'C-' = 'C-',
          'D+' = 'D+',
          'D' = 'D'),
        selected = c(
          'C-',
          'D+',
          'D')),
      checkboxGroupInput(
        'filtroTipoCliente1', 
        label = h4('Tipo de cliente'),
        choices = list(
          'Frecuente de Elektra' = 'Cliente frecuente Elektra',
          'Frecuente de la competencia' = 'Cliente frecuente de la competencia'),
        selected = c('Cliente frecuente Elektra', 'Cliente frecuente de la competencia')),
      #submitButton(text = "Graficar"),
      helpText(h4("Selecciona la variable con la que quieres cruzar."),align="left"),
      selectInput(
        "facet1",
        label = "",
        choices = list(
          "Edad" = "Edad",
          "Género" = "Genero",
          "Nivel" = "NIVEL",
          "Tipo de cliente" = "Tipo_Cliente",
          "Total"
        ), selected = "Total")
    )
  )}