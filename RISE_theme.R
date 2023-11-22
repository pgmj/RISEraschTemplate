### set up color palette based on RISE guidelines
RISEprimGreen <- "#009ca6"
RISEprimRed <- "#e83c63"
RISEprimYellow <- "#ffe500"
RISEprimGreenMid <- "#8dc8c7"
RISEprimRedMid <- "#f5a9ab"
RISEprimYellowMid <- "#ffee8d"
RISEprimGreenLight <- "#ebf5f0"
RISEprimRedLight <- "#fde8df"
RISEprimYellowLight <- "#fff7dd"
RISEcompPurple <- "#482d55"
RISEcompGreenDark <- "#0e4e65"
RISEgrey1 <- "#f0f0f0"
RISEgrey2 <- "#c8c8c8"
RISEgrey3 <- "#828282"
RISEgrey4 <- "#555555"

# ggplot theme
theme_rise <- function(fontfamily = "Lato", axissize = 13, titlesize = 15,
                       margins = 12, axisface = "plain", panelDist = 0.6, ...) {
  theme_minimal() +
    theme(
      text = element_text(family = fontfamily),
      axis.title.x = element_text(
        margin = margin(t = margins),
        size = axissize
      ),
      axis.title.y = element_text(
        margin = margin(r = margins),
        size = axissize
      ),
      plot.title = element_text(
        face = "bold",
        size = titlesize
      ),
      axis.title = element_text(
        face = axisface
      ),
      plot.caption = element_text(
        face = "italic"
      ),
      legend.text = element_text(family = fontfamily),
      legend.background = element_rect(color = "lightgrey"),
      strip.background = element_rect(color = "lightgrey"),
      panel.spacing = unit(panelDist, "cm", data = NULL),
      panel.border = element_rect(color = "grey", fill = NA),
      ...
    )
}
# set theme as default for the session/document
theme_set(theme_rise())

### RISE color palettes
# the two palettes below have been checked for color blindness compatibility using library(colorblindcheck)
RISEpalette8 <- c("#009CA6", "#428092", "#84657F", "#C6496C", "#EB5454", "#F18438", "#F8B41C", "#FFE500")
RISEpalette6 <- c("#009CA6", "#5C758B", "#B94F70", "#EC5D4F", "#F5A127", "#FFE500")
### palettes can be created using the three RISE primary colors and changing the number at the end:
# RISEpalette1 <- colorRampPalette(colors = c("#009ca6", "#e83c63", "#ffe500"))(6)

# palettes are used with for example `+ scale_color_manual(values = RISEpalette6, aesthetics = c("fill", "color"))

# gender split colors, replace label based on your dataset
gender_colors <- c("Male" = "#F5A127", "Female" = "#009CA6")
# these can be used in ggplots as `+ scale_color_gender()` or `+ scale_fill_gender()`
scale_color_gender <- partial(scale_color_manual, values = gender_colors)
scale_fill_gender <- partial(scale_fill_manual, values = gender_colors)

